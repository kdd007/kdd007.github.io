/*!
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

import SceneObject from "/lib/DSViz/SceneObject.js"
import Polygon from "/lib/DS/Polygon.js"

export default class PolygonObject extends SceneObject {
  constructor(device, canvasFormat, filename) {
    super(device, canvasFormat);
    this._fileName=filename;
    this.step=0;
    this._isOutside=false;
    this._polygon = new Polygon(filename);
    this._mousePos= new Float32Array(2)
  }

  printIsInside(v0,v1,p){
    return this._polygon.isInside(v0,v1,p);
  }

  async updateMousePos(xPos,yPos){
    this._mousePos[0]=xPos;
    this._mousePos[1]=yPos;
    this._device.queue.writeBuffer( this._mousePosBuffer, 0, this._mousePos);

    if (this._stageBuffer.mapState != "unmapped") return this._outside; // use the last result while waiting for the stage buffer to be ready
    let encoder = this._device.createCommandEncoder();
      encoder.copyBufferToBuffer(this._windingNumberBuffer, 0, this._stageBuffer, 0, 8); // this line use the command encoder to copy from the GPU storage buffer named this._windingNumberBuffer to the stage buffer this._stageBuffer with offset 0 and total 8 bytes
    this._device.queue.submit([ encoder.finish()]); // submit all GPU commands, now it will include the command to copy the results back to CPU
    await this._stageBuffer.mapAsync(GPUMapMode.READ); // this line map the buffer to read the result
    const windingNumber = new Int32Array(this._stageBuffer.getMappedRange()); // this line cast the result back to javascritp array
    this._isOutside = windingNumber[0] == 0 || windingNumber[1] == 0; // this is how we use the winding number to check if it is outside
    this._stageBuffer.unmap(); // this asks the GPU to unmap it for later use
    // console.log(windingNumber)
    if (this._isOutside){
      console.log("outside")
    }
    else{
      console.log("inside")
    }
  }

  async createGeometry() {
    // Read vertices from polygon files
    await this._polygon.init();
    this._numV = this._polygon._numV;
    this._dim = this._polygon._dim;
    this._vertices = this._polygon._polygon.flat();
    // Create vertex buffer to store the vertices in GPU
    this._vertexBuffer= [
      this._device.createBuffer({
        label: "Vertices Normals and More 1 " + this.getName(),
        size: this._vertices.length * Float32Array.BYTES_PER_ELEMENT,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
        mappedAtCreation: true
      }),
      this._device.createBuffer({
        label: "Vertices Normals and More 2" + this.getName(),
        size: this._vertices.length * Float32Array.BYTES_PER_ELEMENT,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
        mappedAtCreation: true
      })
    ];
    // Copy from CPU to GPU
    // new Float32Array(this._vertexBuffer[this.step%2].getMappedRange()).set(this._vertices);
    new Float32Array(this._vertexBuffer[0].getMappedRange()).set(this._vertices);
    new Float32Array(this._vertexBuffer[1].getMappedRange()).set(this._vertices);

    this._vertexBuffer[0].unmap();
    this._vertexBuffer[1].unmap();
    // Defne vertex buffer layout - how the GPU should read the buffer
    this._vertexBufferLayout = {
      arrayStride: this._dim * Float32Array.BYTES_PER_ELEMENT,
      attributes: [
      { // vertices
        format: "float32x"+this._dim.toString(), // 32 bits, each has two/three coordiantes
        offset: 0,
        shaderLocation: 0, // position in the vertex shader
      },
      ]
    };

    this._mousePosBuffer = this._device.createBuffer({
      size: this._mousePos.length * Float32Array.BYTES_PER_ELEMENT,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    });

    // create a stage buffer to read from the GPU to CPU
    this._stageBuffer = this._device.createBuffer({
      size: 8,
      usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST,
    });

    this._windingNumberBuffer= this._device.createBuffer({
      size: 8,
      usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST,
    });
  }
  
  
  async createShaders() {
    let shaderCode = await this.loadShader("/shaders/polygon.wgsl");
    this._shaderModule = this._device.createShaderModule({
      label: "Shader " + this.getName(),
      code: shaderCode,
    });

    this._bindGroupLayout = this._device.createBindGroupLayout({
      label: "PolygonBindGroup " + this.getName(),
      entries: [
        {
          binding: 0,
          visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE, 
          buffer: {type:'read-only-storage'}
        },
        {
          binding: 1,
          visibility: GPUShaderStage.COMPUTE, 
          buffer: {type:'storage'}
        },
        {
          binding: 2,
          visibility: GPUShaderStage.COMPUTE,
          buffer: {}
        },
        {
          binding: 3,
          visibility: GPUShaderStage.COMPUTE, 
          buffer: {type:'storage'}
        }
      ]
    }); 

    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Polygon Pipeline Layout",
      bindGroupLayouts: [ this._bindGroupLayout ],
    });
  }
  
  async createRenderPipeline() {
    this._renderPipeline = this._device.createRenderPipeline({
      label: "Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule,     // the shader code
        entryPoint: "vertexMain",          // the shader function
        // buffers: [this._vertexBufferLayout] // the binded buffer layout
      },
      fragment: {
        module: this._shaderModule,     // the shader code
        entryPoint: "fragmentMain",        // the shader function
        targets: [{
          format: this._canvasFormat        // the target canvas format
        }]
      },
      primitive: {
        topology: 'line-strip'
      }
    }); 
    // THIS IS A LIST OF TWO DIFFERENT BINDING GROUPS
    this._bindGroup = [this._device.createBindGroup({
      label: "Render Bind Group 0" + this.getName(),
      layout: this._renderPipeline.getBindGroupLayout(0),
      entries: [
        {
          binding: 0,
          resource: { buffer: this._vertexBuffer[0] }
        },
        {
          binding: 1,
          resource: { buffer: this._vertexBuffer[1] }
        },
        {
          binding: 2,
          resource: { buffer:this._mousePosBuffer }
        },
        {
          binding: 3,
          resource: { buffer:this._windingNumberBuffer }
        }
      ],
    }),
      this._device.createBindGroup({
        label: "Render Bind Group 1" + this.getName(),
        layout: this._renderPipeline.getBindGroupLayout(0),
        entries: [
          {
            binding: 0,
            resource: { buffer: this._vertexBuffer[1] }
          },
          {
            binding: 1,
            resource: { buffer:this._vertexBuffer[0] }
          },
          {
            binding: 2,
            resource: { buffer:this._mousePosBuffer }
          },
          {
            binding: 3,
            resource: { buffer:this._windingNumberBuffer}
          }
        ],
      })
    ];
  }

  render(pass) {
    // add to render pass to draw the plane
    pass.setPipeline(this._renderPipeline);
    pass.setBindGroup(0,this._bindGroup[this.step%2]);
    // pass.setVertexBuffer(0, this._vertexBuffer); // bind the vertex buffer
    pass.draw(this._numV); 
            // draw all vertices
  }
  
  async createComputePipeline() { 
    this._computePipeline = this._device.createComputePipeline({
      label: "Polygon Compute Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "computeMain",
      }
    });
  }
  
  compute(pass) { 
    pass.setPipeline(this._computePipeline);
    pass.setBindGroup(0, this._bindGroup[this.step%2]);
    // pass.dispatchWorkgroups(65535,1);
    pass.dispatchWorkgroups(Math.ceil((this._numV-1))/256);
    this._device.queue.writeBuffer(this._windingNumberBuffer, 0, new Int32Array([0]));
    // Buffer, Binding Group it is a part of, new Value
    this.step++;
  }
}

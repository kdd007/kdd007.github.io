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

import SceneObject from './SceneObject.js'
const varNum=10;
export default class ParticleSystemObject extends SceneObject {
  constructor(device, canvasFormat, numParticles = 4096) {
    super(device, canvasFormat);
    this._numParticles = numParticles;
    this._step = 0;
    this.toggleWind=false;
    this.isSnowing=false;
    this.toggleGrav=false;
  }
  
  async createGeometry() { 
    await this.createParticleGeometry();
  }
  
  async createParticleGeometry() {
    // Create particles
    this._particles = new Float32Array(this._numParticles * varNum); // [x, y, ix, iy, vx, vy]
    // TODO 1 - create ping-pong buffers to store and update the particles in GPU
    // name the ping-pong buffers _particleBuffers
    this._particleBuffers= [
      this._device.createBuffer({
        label: "Particle Pose 1 " + this.getName(),
        size: this._particles.byteLength,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      }),
      this._device.createBuffer({
        label: "Particle Pose 2 " + this.getName(),
        size: this._particles.byteLength,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      })
    ];
    
    // calling the resetParticles function to reset the particle buffers
    // if (this.isSnowing){
      this.resetParticles();
    // }
    // else{
    //   this.resetParticlesRain();
    // }
  }
    
  resetParticles() {
    for (let i = 0; i < this._numParticles; ++i) {
      // random position between [-1, 1] x [-1, 1]
      this._particles[varNum * i + 0] = (Math.random() * 2 - 1); // [-1, 1] 
      this._particles[varNum * i + 1] = (Math.random() * 2 - 1);
      // store the initial positions
      this._particles[varNum * i + 2] = this._particles[varNum * i + 0];
      this._particles[varNum * i + 3] = this._particles[varNum * i + 1];
      // TODO 6: update the velocity
      // this._particles[6 * i + 4] = (Math.random() * 2 - 1);
      // this._particles[6 * i + 5] = (Math.random() * 2 - 1);
      // this._particles[varNum * i + 4] = (Math.random() * 0.01)-0.005;
      this._particles[varNum * i + 4] = (Math.random() * 0.01)-0.005;
      this._particles[varNum * i + 5] = (Math.random() * 0.01)-0.005;
      this._particles[varNum * i + 6] = this._particles[varNum * i + 4]; 
      this._particles[varNum * i + 7] = this._particles[varNum * i + 5];
      this._particles[varNum * i + 8] = (Math.random()*180)+180; 
      this._particles[varNum * i + 9] = this._particles[varNum * i + 8];
    }
    // Copy from CPU to GPU
    this._step = 0;
    this._device.queue.writeBuffer(this._particleBuffers[this._step % 2], 0, this._particles);
  }

  // resetParticlesRain() {
  //   for (let i = 0; i < this._numParticles; ++i) {
  //     // random position between [-1, 1] x [-1, 1]
  //     this._particles[varNum * i + 0] = (Math.random() * 2 - 1); // [-1, 1] 
  //     this._particles[varNum * i + 1] = (Math.random() * 2 - 1);
  //     // store the initial positions
  //     this._particles[varNum * i + 2] = this._particles[varNum * i + 0];
  //     this._particles[varNum * i + 3] = this._particles[varNum * i + 1];
  //     // TODO 6: update the velocity
  //     this._particles[varNum * i + 4] = 0;
  //     this._particles[varNum * i + 5] = 0;
  //     this._particles[varNum * i + 6] = this._particles[varNum * i + 4]; 
  //     this._particles[varNum * i + 7] = this._particles[varNum * i + 5];
  //     this._particles[varNum * i + 8] = (Math.random()*180)+180; 
  //     this._particles[varNum * i + 9] = this._particles[varNum * i + 8];
  //   }
  //     // Copy from CPU to GPU
  //     this._step = 0;
  //     this._device.queue.writeBuffer(this._particleBuffers[this._step % 2], 0, this._particles);
  // }
  
  updateGeometry() { }
  
  async createShaders() {
    let shaderCode = await this.loadShader("./shaders/particles.wgsl");
    this._shaderModule = this._device.createShaderModule({
      label: "Particles Shader " + this.getName(),
      code: shaderCode,
    });
    // TODO 2 - Create the bind group layout for using the ping-pong buffers in the GPU
    // name the bind group layout _bindGroupLayout

    this._bindGroupLayout = this._device.createBindGroupLayout({
      label: "ParticleBindGroup " + this.getName(),
      entries: [{
        binding: 0,
        visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE, // VERTEX IS LIKE READING
        buffer: {type:'read-only-storage'}//input
      }, {
        binding: 1,
        visibility: GPUShaderStage.COMPUTE, // COMPUTE IS LIKE WRITING
        buffer: {type:"storage"}//output
      }]
    });
    
    
    // create the pipeline layout using the bind group layout
    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Particles Pipeline Layout",
      bindGroupLayouts: [ this._bindGroupLayout ],
    });
  }
  
  async createRenderPipeline() { 
    await this.createParticlePipeline();
  }
  
  async createParticlePipeline() {
    this._particlePipeline = this._device.createRenderPipeline({
      label: "Particles Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule, 
        entryPoint: "vertexMain",
      },
      fragment: {
        module: this._shaderModule,
        entryPoint: "fragmentMain",
        targets: [{
          format: this._canvasFormat
        }]
      },
      // fragment: {
      //   module: this._shaderModule,
      //   entryPoint: "fragmentParticleMain",
      //   targets: [{
      //     format: this._canvasFormat,
      //     blend: {
      //       color: {
      //         srcFactor: 'one',
      //         dstFactor: 'one-minus-src-alpha',
      //         operator: 'add',
      //       },
      //       alpha: {
      //         srcFactor: 'one',
      //         dstFactor: 'one-minus-src-alpha',
      //         operator: 'add',
      //       },
      //     },
      //   }]
      // },
      primitives: {
        typology: 'line-strip'
      }
    }); 

    // Create bind group to bind the particle buffers
    this._bindGroups = [
      this._device.createBindGroup({
        layout: this._particlePipeline.getBindGroupLayout(0),
        entries: [
          {
            binding: 0,
            resource: { buffer: this._particleBuffers[0] }
          },
          {
            binding: 1,
            resource: { buffer: this._particleBuffers[1] }
          }
        ],
      }),
      this._device.createBindGroup({
        layout: this._particlePipeline.getBindGroupLayout(0),
        entries: [
          {
            binding: 0,
            resource: { buffer: this._particleBuffers[1] }
          },
          {
            binding: 1,
            resource: { buffer: this._particleBuffers[0] }
          }
        ],
      })
    ];
  }

  // async createParticlePipeline2() {
  //   this._particlePipeline = this._device.createRenderPipeline({
  //     label: "Particles Render Pipeline " + this.getName(),
  //     layout: this._pipelineLayout,
  //     vertex: {
  //       module: this._shaderModule, 
  //       entryPoint: "vertexMain",
  //     },
  //     fragment: {
  //       module: this._shaderModule,
  //       entryPoint: "fragmentRain",
  //       targets: [{
  //         format: this._canvasFormat
  //       }]
  //     },
  //     primitives: {
  //       typology: 'line-strip'
  //     }
  //   }); 

  //   // Create bind group to bind the particle buffers
  //   this._bindGroups = [
  //     this._device.createBindGroup({
  //       layout: this._particlePipeline.getBindGroupLayout(0),
  //       entries: [
  //         {
  //           binding: 0,
  //           resource: { buffer: this._particleBuffers[0] }
  //         },
  //         {
  //           binding: 1,
  //           resource: { buffer: this._particleBuffers[1] }
  //         }
  //       ],
  //     }),
  //     this._device.createBindGroup({
  //       layout: this._particlePipeline.getBindGroupLayout(0),
  //       entries: [
  //         {
  //           binding: 0,
  //           resource: { buffer: this._particleBuffers[1] }
  //         },
  //         {
  //           binding: 1,
  //           resource: { buffer: this._particleBuffers[0] }
  //         }
  //       ],
  //     })
  //   ];
  // }
  
  render(pass) { 
    pass.setPipeline(this._particlePipeline); 
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.draw(128, this._numParticles);
  }
  
  async createComputePipeline() { 
    this._computePipeline1 = this._device.createComputePipeline({
      label: "Particles Compute Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "computeMain",
      }
    });
    this._computePipeline2 = this._device.createComputePipeline({
      label: "Particles Compute Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "addWind",
      }
    });
    this._computePipeline3 = this._device.createComputePipeline({
      label: "Particles Compute Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "reverseGravity",
      }
    });
  }
  
  compute(pass) { 
    if (!this.toggleWind){pass.setPipeline(this._computePipeline1);}
    else {pass.setPipeline(this._computePipeline2);}
    if (this.toggleGrav){
      pass.setPipeline(this._computePipeline3);
      this.toggleWind=false;
    }
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.dispatchWorkgroups(Math.ceil(this._numParticles / 256));
    ++this._step
  }

  toggleWindVal(){
    this.toggleWind=!this.toggleWind;
  }

  toggleGravVal(){
    this.toggleGrav=!this.toggleGrav;
  }

  async increaseNumParticles(){
    if (this._numParticles < 10000){
      this._numParticles+=1;
      await this.createParticleGeometry();
    }
    else{
      this._numParticles=1;
      await this.createParticleGeometry();
    }
  }
  async decreaseNumParticles(){
    if (this._numParticles > 1){
      this._numParticles-=1;
      await this.createParticleGeometry();
    }
    else{
      this._numParticles=10000;
      await this.createParticleGeometry();  
    }
  }

  async setParticleNum(f){
    this._numParticles=f;
    await this.createParticleGeometry();
  }

  toggleSnow(){
    this.toggleSnow=!this.toggleSnow;
  }
}
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

import RayTracingObject from "./RayTracingObject.js"
import UnitCube from "../DS/UnitCube.js"
import PGA3D from '../Math/PGA3D.js'

export default class RayTracingBoxObject extends RayTracingObject {
  constructor(device, canvasFormat, camera, showTexture = true) {
    super(device, canvasFormat);
    this._box = new UnitCube();
    this._camera = camera;
    this._showTexture = showTexture;
  }
  
  async createGeometry() {
    // Create camera buffer to store the camera pose and scale in GPU
    this._cameraBuffer = this._device.createBuffer({
      label: "Camera " + this.getName(),
      size: this._camera._pose.byteLength + this._camera._focal.byteLength + this._camera._resolutions.byteLength,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    }); 
    // Copy from CPU to GPU - both pose and scales
    this._device.queue.writeBuffer(this._cameraBuffer, 0, this._camera._pose);
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength, this._camera._focal);
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength + this._camera._focal.byteLength, this._camera._resolutions);
    // 
    // Create box buffer to store the box in GPU
    // Note, here we combine all the information in one buffer
    this._boxBuffer = this._device.createBuffer({
      label: "Box " + this.getName(),
      size: this._box._pose.byteLength + this._box._scales.byteLength + this._box._top.byteLength * 6,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    });
    // Copy from CPU to GPU
    // Note, here we make use of the offset to copy them over one by one
    let offset = 0;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._pose);
    offset += this._box._pose.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._scales);
    offset += this._box._scales.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._front);
    offset += this._box._front.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._back);
    offset += this._box._back.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._left);
    offset += this._box._left.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._right);
    offset += this._box._right.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._top);
    offset += this._box._top.byteLength;
    this._device.queue.writeBuffer(this._boxBuffer, offset, this._box._down);
  }
  
  updateGeometry() {
    // update the image size of the camera
    this._camera.updateSize(this._imgWidth, this._imgHeight);
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength + this._camera._focal.byteLength, this._camera._resolutions);
  }
  
  updateBoxPose() {
    this._device.queue.writeBuffer(this._boxBuffer, 0, this._box._pose);
  }
  
  updateBoxScales() {
    this._device.queue.writeBuffer(this._boxBuffer, this._box._pose.byteLength, this._box._scales);
  }
  
  updateCameraPose() {
    this._device.queue.writeBuffer(this._cameraBuffer, 0, this._camera._pose);
  }
  
  updateCameraFocal() {
    this._device.queue.writeBuffer(this._cameraBuffer, this._camera._pose.byteLength, this._camera._focal);
  }

  async createShaders() {
    let shaderCode = await this.loadShader("./shaders/tracebox.wgsl");
    this._shaderModule = this._device.createShaderModule({
      label: " Shader " + this.getName(),
      code: shaderCode,
    });
    // Create the bind group layout
    this._bindGroupLayout = this._device.createBindGroupLayout({
      label: "Ray Trace Box Layout " + this.getName(),
      entries: [{
        binding: 0,
        visibility: GPUShaderStage.COMPUTE,
        buffer: {} // Camera uniform buffer
      }, {
        binding: 1,
        visibility: GPUShaderStage.COMPUTE,
        buffer: {} // Box uniform buffer
      }, {
        binding: 2,
        visibility: GPUShaderStage.COMPUTE,
        storageTexture: { format: this._canvasFormat } // texture
      }]
    });
    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Ray Trace Box Pipeline Layout",
      bindGroupLayouts: [ this._bindGroupLayout ],
    });
  }
  
  async createComputePipeline() {
    // Create a compute pipeline that updates the image.
    this._computePipeline = this._device.createComputePipeline({
      label: "Ray Trace Box Orthogonal Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "computeOrthogonalMain",
      }
    });
    // Create a compute pipeline that updates the image.
    this._computeProjectivePipeline = this._device.createComputePipeline({
      label: "Ray Trace Box Projective Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "computeProjectiveMain",
      }
    });
  }

  createBindGroup(outTexture) {
    // Create a bind group
    this._bindGroup = this._device.createBindGroup({
      label: "Ray Trace Box Bind Group",
      layout: this._computePipeline.getBindGroupLayout(0),
      entries: [
      {
        binding: 0,
        resource: { buffer: this._cameraBuffer }
      },
      {
        binding: 1,
        resource: { buffer: this._boxBuffer }
      },
      {
        binding: 2,
        resource: outTexture.createView()
      }
      ],
    });
    this._wgWidth = Math.ceil(outTexture.width);
    this._wgHeight = Math.ceil(outTexture.height);
  }
  
  compute(pass) {
    // add to compute pass
    if (this._camera?._isProjective) {
      pass.setPipeline(this._computeProjectivePipeline);        // set the compute projective pipeline
    }
    else {
      pass.setPipeline(this._computePipeline);                 // set the compute orthogonal pipeline
    }
    pass.setBindGroup(0, this._bindGroup);                  // bind the buffer
    pass.dispatchWorkgroups(Math.ceil(this._wgWidth / 16), Math.ceil(this._wgHeight / 16)); // dispatch
  }

  moveX(d) {
    let rot_d = [...PGA3D.applyMotorToPoint([d, 0, 0], PGA3D.extractRotor(this._box._pose))]
    let dt = PGA3D.createTranslator(rot_d[0], rot_d[1], rot_d[2]);
    let newpose = PGA3D.geometricProduct(dt, this._box._pose)
    this._box.updatePose(newpose);
  }
  
  moveY(d) {
    let rot_d = [...PGA3D.applyMotorToPoint([0, d, 0], PGA3D.extractRotor(this._box._pose))]
    let dt = PGA3D.createTranslator(rot_d[0], rot_d[1], rot_d[2]);
    let newpose = PGA3D.geometricProduct(dt, this._box._pose);
    this._box.updatePose(newpose);
  }
  
  moveZ(d) {
    let rot_d = [...PGA3D.applyMotorToPoint([0, 0, d], PGA3D.extractRotor(this._box._pose))]
    let dt = PGA3D.createTranslator(rot_d[0], rot_d[1], rot_d[2]);
    let newpose = PGA3D.geometricProduct(dt, this._box._pose);
    this._box.updatePose(newpose);
  }

  rotateX(d) {
    let rot_d = [...PGA3D.applyMotorToPoint([1, 0, 0], PGA3D.extractRotor(this._box._pose))]
    let dr = PGA3D.createRotor(d * Math.PI / 90, rot_d[0], rot_d[1], rot_d[2], 0, 0, 0);
    let newpose = PGA3D.geometricProduct(this._box._pose, dr);
    this._box.updatePose(newpose);    
  }
  
  rotateY(d) {
    // TODO: write code to rotate the camera along its y-axis
    // Suggest to use PGA3D
    let rot_d = [...PGA3D.applyMotorToPoint([0, 1, 0], PGA3D.extractRotor(this._box._pose))]
    let dr = PGA3D.createRotor(d * Math.PI / 90, rot_d[0], rot_d[1], rot_d[2], 0, 0, 0);
    let newpose = PGA3D.geometricProduct(this._box._pose, dr);
    this._box.updatePose(newpose);    
  }
  
  rotateZ(d) {
    // TODO: write code to rotate the camera along its z-axis
    // Suggest to use PGA3D
    let rot_d = [...PGA3D.applyMotorToPoint([0, 0, 1], PGA3D.extractRotor(this._box._pose))]
    let dr = PGA3D.createRotor(d * Math.PI / 90, rot_d[0], rot_d[1], rot_d[2], 0, 0, 0);
    let newpose = PGA3D.geometricProduct(this._box._pose, dr);
    this._box.updatePose(newpose);   
  }

}
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

import circleMaker from "../../circleMaker.js";
import Standard2DPGAPosedVertexColorObject from ". ./lib/DSViz/Standard2DPGAPosedVertexColorObject.js"

export default class rocketShip extends Standard2DPGAPosedVertexColorObject {
  constructor(device, canvasFormat, pose) {
    let _vertices = new Float32Array([

      0.0,  -0.50,  255.0/255, 163.0/255 , 0.0/255, 1, 
      0.05, -0.25,  255.0/255, 163.0/255 , 0.0/255, 1, 
      -0.05, -0.25,  255.0/255, 163.0/255 , 0.0/255, 1, 
      
      0.0,  -0.35,  255.0/255, 255.0/255 , 0.0/255, 1, 
      0.025, -0.25,  255.0/255, 255.0/255 , 0.0/255, 1, 
      -0.025, -0.25,  255.0/255, 255.0/255 , 0.0/255, 1, 

      0.0,  0.15,  255.0/255, 0.0/255 , 0.0/255, 1,  
      -0.05,  0.05,  255.0/255, 100.0/255 , 100.0/255, 1, 
      0.05,  0.05,  255.0/255, 100.0/255 , 100.0/255, 1, 
      
      -0.05,  0.05,  200.0/255, 200.0/255 , 200.0/255, 1, 
      -0.05, -0.15,  200.0/255, 200.0/255 , 200.0/255, 1, 
      0.05, -0.15,  200.0/255, 200.0/255 , 200.0/255, 1, 
      
      0.05,  0.05,  200.0/255, 200.0/255 , 200.0/255, 1, 
      -0.05,  0.05,  200.0/255, 200.0/255 , 200.0/255, 1, 
      0.05, -0.15,  200.0/255, 200.0/255 , 200.0/255, 1,

      -0.10, -0.25,  150.0/255, 150.0/255 , 150.0/255, 1, 
      0.05, -0.15,   150.0/255, 150.0/255 , 150.0/255, 1, 
      -0.05, -0.15,  150.0/255, 150.0/255 , 150.0/255, 1, 
      
      0.10, -0.25,   150.0/255, 150.0/255 , 150.0/255, 1, 
      0.05, -0.15,   150.0/255, 150.0/255 , 150.0/255, 1, 
      -0.10, -0.25,  150.0/255, 150.0/255 , 150.0/255, 1,
      
    ]);
    super(device, canvasFormat, _vertices, pose);
    this._interval = 360;
    this._t = 0;
    this._step = 5;
    this._pose0 = [-0.9, 0, 0.5, 0.5, 0.5, 0.5];
    this._pose1 = [0, 1, -0.5, 0.5, 0.5, 0.5];

  }
  updateGeometry() {
    //Rotation Angle
    let angle = 2 * Math.PI * (this._t / this._interval);
    
    // Change X and Y position by a rotation
    // this._pose[0] = this._pose0[0] * Math.cos(angle) - this._pose0[1] * Math.sin(angle); 
    // this._pose[1] = this._pose0[0] * Math.sin(angle) + this._pose0[1] * Math.cos(angle); 
    this._pose[0] = this._pose0[0] * Math.cos(angle) + this._pose0[1] * Math.sin(angle); 
    this._pose[1] = this._pose0[0] * Math.sin(angle) + this._pose0[1] * Math.cos(angle); 

    // Keep same?
    // this._pose[1] = this._pose0[1];
    this._pose[2] = this._pose0[2];
    this._pose[3] = this._pose0[3];

    if (this._t == 45) {
      this._step = 10;
    } else if (this._t == 125) {
      this._step = 5; 
    }
    
    // Handle color changes based on _t
    if ([125].includes(this._t)) {
      // Update vertices to 0.5 (or partially transparent)
      this._vertices[5] = 0.5;
      this._vertices[11] = 0.5;
      this._vertices[17] = 0.5;
      this._vertices[23] = 0.5;
      this._vertices[29] = 0.5;
      this._vertices[35] = 0.5;
    } else if ([45].includes(this._t)) {
      // Set vertices back to fully opaque (1)
      this._vertices[5] = 1;
      this._vertices[11] = 1;
      this._vertices[17] = 1;
      this._vertices[23] = 1;
      this._vertices[29] = 1;
      this._vertices[35] = 1;
    } else if ([95].includes(this._t)) {
      // Set vertices back to fully opaque (1)
      this._vertices[5] = 0.75;
      this._vertices[11] = 0.75;
      this._vertices[17] = 0.75;
      this._vertices[23] = 0.75;
      this._vertices[29] = 0.75;
      this._vertices[35] = 0.75;
    }
    
    // Reset _t to 0 after it reaches 360
    if (this._t == 360) {
      this._t = 0;
    } else {
      // Otherwise, increment _t by step value
      this._t += this._step;
    }
    
    // Update Points in the geometry
    super.updateGeometry();
  }
  // updateGeometry() {
  //   // linearly interpolate the motor
  //   this._pose[0] = this._pose0[0] * (1 - this._t / this._interval) + this._pose1[0] * this._t / this._interval;
  //   this._pose[1] = this._pose0[1] * (1 - this._t / this._interval) + this._pose1[1] * this._t / this._interval;
  //   this._pose[2] = this._pose0[2] * (1 - this._t / this._interval) + this._pose1[2] * this._t / this._interval;
  //   this._pose[3] = this._pose0[3] * (1 - this._t / this._interval) + this._pose1[3] * this._t / this._interval;
  //   // interpolating back and forth
  //   this._t += this._step;
  //   if (this._t >= 1000) {
  //     this._step = -1;
  //   }
  //   else if (this._t <= 0) {
  //     this._step = 1; 
  //   }
  //   super.updateGeometry();
  // }
}
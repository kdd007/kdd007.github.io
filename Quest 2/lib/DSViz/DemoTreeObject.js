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

import Standard2DPGAPosedVertexColorObject from "/Quest 2/lib/DSViz/Standard2DPGAPosedVertexColorObject.js"

export default class DemoTreeObject extends Standard2DPGAPosedVertexColorObject {
  constructor(device, canvasFormat, pose) {
    let numPoints = 10000;
    let angle = (2 * Math.PI) / numPoints;
    let radius = 0.2;
    let xOrigin = 0;
    let yOrigin = 0;
    let xOrigin2 = 0.2;
    let yOrigin2 = 0.2;
    let r = 255 / 255;
    let g = 0 / 255;
    let b = 0 / 255;
    let alpha = 1;
    let _vertices = new Float32Array(numPoints * 3 * 6); // 3 vertices per triangle, 6 values per vertex
    
    for (let i = 0; i < numPoints; i++) {
      const t1 = i * angle; // Angle for the first vertex
      const t2 = ((i + 1) % numPoints) * angle; // Angle for the second vertex (wrap around)
    
      // First vertex
      _vertices[i * 18] = xOrigin; // x-coordinate
      _vertices[i * 18 + 1] = yOrigin; // y-coordinate
      _vertices[i * 18 + 2] = r; // Red
      _vertices[i * 18 + 3] = g; // Green
      _vertices[i * 18 + 4] = b; // Blue
      _vertices[i * 18 + 5] = alpha; // Alpha
    
      // Second vertex
      _vertices[i * 18 + 6] = (radius * Math.cos(t1) + xOrigin); // x-coordinate
      _vertices[i * 18 + 7] = (radius * Math.sin(t1) + yOrigin); // y-coordinate
      _vertices[i * 18 + 8] = r; // Red
      _vertices[i * 18 + 9] = g; // Green
      _vertices[i * 18 + 10] = b; // Blue
      _vertices[i * 18 + 11] = alpha; // Alpha
    
      // Third vertex
      _vertices[i * 18 + 12] = (radius * Math.cos(t2) + xOrigin); // x-coordinate
      _vertices[i * 18 + 13] = (radius * Math.sin(t2) + yOrigin); // y-coordinate
      _vertices[i * 18 + 14] = r; // Red
      _vertices[i * 18 + 15] = g; // Green
      _vertices[i * 18 + 16] = b; // Blue
      _vertices[i * 18 + 17] = alpha; // Alpha
    }
    
    // let _vertices2 = new Float32Array(numPoints * 3 * 6); // 3 vertices per triangle, 6 values per vertex
    
    // for (let i = 0; i < numPoints; i++) {
    //   const t1 = i * angle; 
    //   const t2 = ((i + 1) % numPoints) * angle; 
    
    //   // First vertex
    //   _vertices2[i * 18] = xOrigin2; 
    //   _vertices2[i * 18 + 1] = yOrigin2; 
    //   _vertices2[i * 18 + 2] = r; 
    //   _vertices2[i * 18 + 3] = g; 
    //   _vertices2[i * 18 + 4] = b; 
    //   _vertices2[i * 18 + 5] = alpha; 
    
    //   // Second vertex
    //   _vertices2[i * 18 + 6] = (radius * Math.cos(t1) + xOrigin2); 
    //   _vertices2[i * 18 + 7] = (radius * Math.sin(t1) + yOrigin2); 
    //   _vertices2[i * 18 + 8] = r; 
    //   _vertices2[i * 18 + 9] = g; 
    //   _vertices2[i * 18 + 10] = b;
    //   _vertices2[i * 18 + 11] = alpha; 
    
    //   // Third vertex
    //   _vertices2[i * 18 + 12] = (radius * Math.cos(t2) + xOrigin2); 
    //   _vertices2[i * 18 + 13] = (radius * Math.sin(t2) + yOrigin2);
    //   _vertices2[i * 18 + 14] = r;
    //   _vertices2[i * 18 + 15] = g; 
    //   _vertices2[i * 18 + 16] = b;
    //   _vertices2[i * 18 + 17] = alpha;
    // }
    // let _vertices = new Float32Array([
    //   // x, y, r, g, b
    //    -0.025, -0.15, 77.0/255, 40.0/255, 40.0/255, 1, // Two triangles for the stem
    //    -0.025, -0.45, 77.0/255, 40.0/255, 40.0/255, 1,
    //    0.025, -0.45, 77.0/255, 40.0/255, 40.0/255, 1,
    //    -0.025, -0.15, 77.0/255, 40.0/255, 40.0/255, 1,
    //    0.025, -0.45, 77.0/255, 40.0/255, 40.0/255, 1,
    //    0.025, -0.15, 77.0/255, 40.0/255, 40.0/255, 1,
      
    //    0,  0.05, 34.0/255, 110.0/255 , 34.0/255, 1, // A triangle for a layer of the Xmas tree
    //    -0.1, -0.15, 34.0/255, 90.0/255 , 34.0/255, 1,
    //    0.1, -0.15, 34.0/255, 90.0/255 , 34.0/255, 1,
       
    //    0,  0.10, 34.0/255, 110.0/255 , 34.0/255, 1, // A triangle for a layer of the Xmas tree
    //    -0.1, -0.10, 34.0/255, 90.0/255 , 34.0/255, 1,
    //    0.1, -0.10, 34.0/255, 90.0/255 , 34.0/255, 1,
       
    //    0,  0.15, 34.0/255, 110.0/255 , 34.0/255, 1, // A triangle for a layer of the Xmas tree
    //    -0.1, -0.05, 34.0/255, 90.0/255 , 34.0/255, 1,
    //    0.1, -0.05, 34.0/255, 90.0/255 , 34.0/255, 1,
       
    //    0,  0.2, 34.0/255, 110.0/255 , 34.0/255, 1, // A triangle for a layer of the Xmas tree
    //    -0.1,  0.0, 34.0/255, 90.0/255 , 34.0/255, 1,
    //    0.1,  0.0, 34.0/255, 90.0/255 , 34.0/255, 1,
    // ]); 
    super(device, canvasFormat, _vertices, pose);
    // super(device, canvasFormat, _vertices2, pose);
    this._interval = 360;
    this._t = 0;
    this._step = 1;
    this._pose0 = [-1, 0, 0.5, 0.5, 0.5, 0.5];
    this._pose1 = [0, 1, -0.5, 0.5, 0.5, 0.5];
  }
  
  // updateGeometry() {
  //   // linearly interpolate the motor
  //   this._pose[0] = this._pose0[0] * (1 - this._t / this._interval) + this._pose1[0] * this._t / this._interval;
  //   this._pose[1] = this._pose0[1] * (1 - this._t / this._interval) + this._pose1[1] * this._t / this._interval;
  //   this._pose[2] = this._pose0[2] * (1 - this._t / this._interval) + this._pose1[2] * this._t / this._interval;
  //   this._pose[3] = this._pose0[3] * (1 - this._t / this._interval) + this._pose1[3] * this._t / this._interval;
  //   // interpolating back and forth
  //   this._t += this._step;
  //   if (this._t >= 100) {
  //     this._step = -1;
  //   }
  //   else if (this._t <= 0) {
  //     this._step = 1; 
  //   }
  //   super.updateGeometry();
  // }
  updateGeometry() {
    //Rotation Angle
    let angle = 2 * Math.PI * (this._t / this._interval);
    
    // Change X and Y position by a rotation
    this._pose[0] = this._pose0[0] * Math.cos(angle) - this._pose0[1] * Math.sin(angle); 
    this._pose[1] = this._pose0[0] * Math.sin(angle) + this._pose0[1] * Math.cos(angle); 
    // Keep same?
    this._pose[2] = this._pose0[2];
    this._pose[3] = this._pose0[3];

    // Move time
    this._t += this._step;
    //Update Points
    super.updateGeometry();
  }
}
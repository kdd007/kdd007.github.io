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
import Standard2DPGAPosedVertexColorObject from "/lib/DSViz/Standard2DPGAPosedVertexColorObject.js"

export default class uranus extends Standard2DPGAPosedVertexColorObject {
  constructor(device, canvasFormat, pose) {
    let _vertices= circleMaker(54, 149, 169, 0.04);
    super(device, canvasFormat, _vertices, pose);
    this._interval = 360;
    this._t = 0;
    this._step = 0.681;
    this._pose0 = [0.7, 0, 0.5, 0.5, 0.5, 0.5];
    this._pose1 = [0, 1, -0.5, 0.5, 0.5, 0.5];
  }

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
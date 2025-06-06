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
 
export default class SmallUnitCube {
  constructor() {
    // Create the UnitCube vertices using two triangles
    this._pose = new Float32Array(Array(16).fill(0));
    this._pose[0] = 1;
    this._scales = new Float32Array(Array(4).fill(1000000));
    this._front = new Float32Array([
    // x, y, z, w
      -0.5, -0.5, 0.5, 1,
       0.5, -0.5, 0.5, 1,
       0.5,  0.5, 0.5, 1,
      -0.5,  0.5, 0.5, 1,
    ]);
    this._back = new Float32Array([
    // x, y, z, w
      -0.5, -0.5, -0.5, 1,
       0.5, -0.5, -0.5, 1,
       0.5,  0.5, -0.5, 1,
      -0.5,  0.5, -0.5, 1,
    ]);
    this._left = new Float32Array([
    // x, y, z, w
      -0.5, -0.5, -0.5, 1,
      -0.5, -0.5,  0.5, 1,
      -0.5,  0.5,  0.5, 1,
      -0.5,  0.5, -0.5, 1,
    ]);
    this._right = new Float32Array([
    // x, y, z, w
      0.5, -0.5, -0.5, 1,
      0.5, -0.5,  0.5, 1,
      0.5,  0.5,  0.5, 1,
      0.5,  0.5, -0.5, 1,
    ]);
    this._top = new Float32Array([
    // x, y, z, w
      -0.5,  0.5, -0.5, 1,
       0.5,  0.5, -0.5, 1,
       0.5,  0.5,  0.5, 1,
      -0.5,  0.5,  0.5, 1,
    ]);
    this._down = new Float32Array([
    // x, y, z, w
      -0.5, -0.5, -0.5, 1,
       0.5, -0.5, -0.5, 1,
       0.5, -0.5,  0.5, 1,
      -0.5, -0.5,  0.5, 1,
    ]);
  }
  
  updatePose(newPose) {
    for (let i = 0; i < 16; ++i) this._pose[i] = newPose[i];
  }
}
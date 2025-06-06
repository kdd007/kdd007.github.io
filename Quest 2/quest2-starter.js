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

// Check your browser supports: https://github.com/gpuweb/gpuweb/wiki/Implementation-Status#implementation-status
// Need to enable experimental flags chrome://flags/
// Chrome & Edge 113+ : Enable Vulkan, Default ANGLE Vulkan, Vulkan from ANGLE, Unsafe WebGPU Support, and WebGPU Developer Features (if exsits)
// Firefox Nightly: sudo snap install firefox --channel=latext/edge or download from https://www.mozilla.org/en-US/firefox/channel/desktop/

import FilteredRenderer from '/Quest 2/lib/Viz/2DFilteredRenderer.js'
import Standard2DFullScreenObject from '/Quest 2/lib/DSViz/Standard2DFullScreenObject.js'
import Standard2DPGAPosedVertexColorObject from '/Quest 2/lib/DSViz/Standard2DPGAPosedVertexColorObject.js'
// import LineStrip2DVertexObject from '/lib/DSViz/LineStrip2DVertexObject.js'
// import DemoTreeObject from '/lib/DSViz/DemoTreeObject.js'
import PGA2D from '/Quest 2/lib/Math/PGA2D.js'
import circleMaker from '/Quest 2/circleMaker.js'

import rocketShip from '/Quest 2/lib/DSViz/rocketShip.js'
import mercury from '/Quest 2/lib/DSViz/mercury.js'
import venus from '/Quest 2/lib/DSViz/venus.js'
import earth from '/Quest 2/lib/DSViz/earth.js'
import mars from '/Quest 2/lib/DSViz/mars.js'
import jupiter from '/Quest 2/lib/DSViz/jupiter.js'
import saturn from '/Quest 2/lib/DSViz/saturn.js'
import uranus from '/Quest 2/lib/DSViz/uranus.js'
import neptune from '/Quest 2/lib/DSViz/neptune.js'
import sunEffect from '/Quest 2/sunEffect.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  
  // Create a 2d animated renderer
  const renderer = new FilteredRenderer(canvasTag);
  await renderer.init();
  // Create a background
  await renderer.appendSceneObject(new Standard2DFullScreenObject(renderer._device, renderer._canvasFormat, "/Quest 2/assets/Space.jpg"));
  // Create a triangle geometry with color information at each vertex
  // var vertices1 = new Float32Array([
  //    // x, y, r, g, b, a
  //    0, 0.5, 1, 0, 0, 1,
  //    -0.5, 0, 0, 1, 0, 1,
  //    0.5,  0, 0, 0, 1, 1,
  // ])
  let vertices1= circleMaker(255, 223, 0, 0.2);
  let vertices2= sunEffect(255, 140, 0, 0.21);
  let vertices3= sunEffect(255, 70, 0, 0.075);
  var pose = [1, 0, 0, 0, 1, 1];
  pose = new Float32Array(pose); // need to covert to Float32Array for uploading to GPU with fixed known size
  await renderer.appendSceneObject(new Standard2DPGAPosedVertexColorObject(renderer._device, renderer._canvasFormat, vertices1, pose));
  await renderer.appendSceneObject(new Standard2DPGAPosedVertexColorObject(renderer._device, renderer._canvasFormat, vertices2, pose));
  await renderer.appendSceneObject(new Standard2DPGAPosedVertexColorObject(renderer._device, renderer._canvasFormat, vertices3, pose));
  // Create another triangle geometry for line-strips drawing
  // var vertices2 = new Float32Array([
  //    // x, y
  //    0, -0.6,
  //    -0.5, -0.1,
  //    0.5,  -0.1,
  //    0, -0.6, // loop back to the first vertex
  // ]);
  // await renderer.appendSceneObject(new LineStrip2DVertexObject(renderer._device, renderer._canvasFormat, vertices2));
  // Add a tree to the scene
  // await renderer.appendSceneObject(new sun(renderer._device, renderer._canvasFormat, pose));
  await renderer.appendSceneObject(new mercury(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new venus(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new earth(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new mars(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new jupiter(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new saturn(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new uranus(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new neptune(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));
  await renderer.appendSceneObject(new rocketShip(renderer._device, renderer._canvasFormat, new Float32Array([1, 0, 0, 0, 0.5, 0.5])));

  // run at every 100 ms
  let angle = Math.PI / 100;
  // use a rotor to rotate about an object around a center
  let center = [0, 0]; // set the ceter to (0, 0) - feel free to change it and see different results
  
  let dm = PGA2D.normaliozeMotor(PGA2D.createRotor(angle, center[0], center[1]));
  setInterval(() => { 
    renderer.render();
    // update the triangle pose by multiplying the delta motor to the current pose
    let newmotor = PGA2D.normaliozeMotor(PGA2D.geometricProduct(dm, [pose[0], pose[1], pose[2], pose[3]]));
    pose[0] = newmotor[0];
    pose[1] = newmotor[1];
    pose[2] = newmotor[2];
    pose[3] = newmotor[3];
  }, 100); // call every 100 ms
  return renderer;
}

init().then( ret => {
  console.log(ret);
}).catch( error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});

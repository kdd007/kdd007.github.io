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

import RayTracer from './lib/Viz/RayTracer.js'
import StandardTextObject from './lib/DSViz/StandardTextObject.js'
import RayTracingBoxObject from './lib/DSViz/RayTracingBoxObject.js'
import Camera from './lib/Viz/3DCamera.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a ray tracer
  const tracer = new RayTracer(canvasTag);
  await tracer.init();
  // Create a 3D Camera
  var camera = new Camera(0, 0, false, 4);
  // Create an object to trace
  var tracerObj = new RayTracingBoxObject(tracer._device, tracer._canvasFormat, camera);
  await tracer.setTracerObject(tracerObj);
  
  let toggleMovement=true;

  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps);
  fpsText._textCanvas.style.left="1460px";
  const infoText = new StandardTextObject('WS: Move in Z\n' +
                                          'AD: Move in X\n' +
                                          'Space/Shift: Move in Y\n' +
                                          'QE: Rotate in Z\n' +
                                          'Up/Down: Rotate in X\n' +
                                          'Left/Right: Rotate in Y\n' +
                                          'T: Change Camera Mode\n' +
                                          '-=: Change Camera Focal X\n' +
                                          '[]: Change Camera Focal Y\n'+
                                          'U: Toggle Camera/Object');
  var movespeed = 0.05;
  var rotatespeed = 2;
  var focalXSpeed = 0.1;
  var focalYSpeed = 0.1;
  document.addEventListener('keydown', (e) => {
    switch (e.key) {
      case 'w': case 'W':
        if (toggleMovement){camera.moveZ(movespeed);}
        else{tracerObj.moveZ(movespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'a': case 'A':
        if (toggleMovement){camera.moveX(-movespeed);}
        else{tracerObj.moveX(-movespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 's': case 'S':
        if (toggleMovement){camera.moveZ(-movespeed);}
        else{tracerObj.moveZ(-movespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'd': case 'D':
        if (toggleMovement){camera.moveX(movespeed);}
        else{tracerObj.moveX(movespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case ' ':
        if (toggleMovement){camera.moveY(-movespeed);}
        else{tracerObj.moveY(-movespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'Shift':
        if (toggleMovement){camera.moveY(movespeed);}
        else{tracerObj.moveY(movespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'q': case 'Q':
        if (toggleMovement){camera.rotateZ(rotatespeed);}
        else{tracerObj.rotateZ(rotatespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'e': case'E':
        if (toggleMovement){camera.rotateZ(-rotatespeed);}
        else{tracerObj.rotateZ(-rotatespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'ArrowUp':
        if (toggleMovement){camera.rotateX(-rotatespeed);}
        else{tracerObj.rotateX(-rotatespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'ArrowLeft':
        if (toggleMovement){camera.rotateY(rotatespeed);}
        else{tracerObj.rotateY(rotatespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'ArrowDown':
        if (toggleMovement){camera.rotateX(rotatespeed);}
        else{tracerObj.rotateX(rotatespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 'ArrowRight':
        if (toggleMovement){camera.rotateY(-rotatespeed);}
        else{tracerObj.rotateY(-rotatespeed);}
        tracerObj.updateCameraPose();
        tracerObj.updateBoxPose();
        break;
      case 't': case 'T':
        camera.toggleProjective();
        break;
      case '-':
        camera.changeFocalX(focalXSpeed);
        tracerObj.updateCameraFocal();
        break;
      case '=':
        camera.changeFocalX(-focalXSpeed);
        tracerObj.updateCameraFocal();
        break;
      case '[':
        camera.changeFocalY(focalYSpeed);
        tracerObj.updateCameraFocal();
        break;
      case ']':
        camera.changeFocalY(-focalYSpeed);
        tracerObj.updateCameraFocal();
        break;
      case "u": case "U":
        toggleMovement= !toggleMovement;
        console.log(toggleMovement)
    }
  });
  // run animation at 60 fps
  var frameCnt = 0;
  var tgtFPS = 60;
  var secPerFrame = 1. / tgtFPS;
  var frameInterval = secPerFrame * 1000;
  var lastCalled;
  let renderFrame = () => {
    let elapsed = Date.now() - lastCalled;
    if (elapsed > frameInterval) {
      ++frameCnt;
      lastCalled = Date.now() - (elapsed % frameInterval);
      tracer.render();
    }
    requestAnimationFrame(renderFrame);
  };
  lastCalled = Date.now();
  renderFrame();
  setInterval(() => { 
    fpsText.updateText('fps: ' + frameCnt);
    frameCnt = 0;
  }, 1000); // call every 1000 ms
  return tracer;
}

init().then( ret => {
  console.log(ret);
}).catch( error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});
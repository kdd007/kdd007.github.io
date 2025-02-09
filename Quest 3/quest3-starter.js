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

import Renderer from './lib/Viz/2DRenderer.js'
import Camera from './lib/Viz/2DCamera.js'
import CameraLineStrip2DAliveDeadObject from '/Quest 3/lib/DSViz/CameraLineStrip2DAliveDeadObject.js'
import StandardTextObject from './lib/DSViz/StandardTextObject.js'
import PGA2D from '/Quest 3/lib/Math/PGA2D.js'
import Standard2DPGACameraSceneObject from './lib/DSViz/Standard2DPGACameraSceneObject.js'

async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a 2d animated renderer
  const renderer = new Renderer(canvasTag);
  await renderer.init();
  const rule=0
  // var vertices = new Float32Array([
  //   // x, y
  //   -0.5, -0.5,
  //   0.5, -0.5,
  //   0.5,  0.5,
  //   -0.5, 0.5, 
  //   -0.5, -0.5 // loop back to the first vertex
  // ]);
  var vertices = new Float32Array([
      -1, -1,  
      1, -1,  
      -1,  1,  

      1, -1,  
      -1,  1,  
      1,  1, 
    ]);
  var vertices = new Float32Array(vertices)
  const camera = new Camera();
  const grid = new CameraLineStrip2DAliveDeadObject(renderer._device, renderer._canvasFormat, camera._pose, vertices);
  await renderer.appendSceneObject(grid);
  // Add a movable colored quad
  // var pose = new Float32Array([1, 0, 0, 0, 0.025, 0.025]);
  // var quadVertices = new Float32Array([
  //    // x, y, r, g, b, a
  //    -1, -1, 1, 0, 0, 1,
  //    1, -1, 0, 1, 0, 1,
  //    -1, 1, 0, 0, 1, 1,
  //    1, 1, 1, 0, 1, 1,
  //    -1, 1, 0, 0, 1, 1,
  //    1, -1, 0, 1, 0, 1
  // ]);
  // const quad = new Standard2DPGACameraSceneObject(renderer._device, renderer._canvasFormat, camera._pose, quadVertices, pose);
  // await renderer.appendSceneObject(quad);
  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps + "\n");
  var instructionText=new StandardTextObject("w/W: Move Up\na/A: Move Left\nd/D: Move Right\ns/S: Move Down\nq/Q: Zoom In\ne/E: Zoom Out\np/P: Pause Simulation\nr/R: Reset Simulation\nz/Z: Toggle Xbox Controls");
  var controllerText=new StandardTextObject("Left Stick: Movement\nX: Zoom In\nY: Zoom Out\nA: Pause Simulation\nB: Reset Simulation\nz/Z: Toggle Keyboard via Keyboard");
  controllerText.toggleVisibility()
  fpsText._textCanvas.style.left="1460px"
  // keyboard interaction
  var movespeed = 0.05;
  window.addEventListener("keydown", (e) => {
    switch (e.key) {
      case 'ArrowUp': case 'w': case 'W':
        camera.moveUp(movespeed);
        grid.updateCameraPose();
        quad.updateCameraPose();
        break;
      case 'ArrowDown': case 's': case 'S':   
        camera.moveDown(movespeed);
        grid.updateCameraPose();     
        quad.updateCameraPose();
        break;
      case 'ArrowLeft': case 'a': case 'A':  
        camera.moveLeft(movespeed);
        grid.updateCameraPose();
        quad.updateCameraPose();
        break;
      case 'ArrowRight': case 'd': case 'D': 
        camera.moveRight(movespeed);
        grid.updateCameraPose();    
        quad.updateCameraPose();        
        break;
      case 'q': case 'Q':  
        camera.zoomIn();
        grid.updateCameraPose();    
        quad.updateCameraPose();        
        break;
      case 'e': case 'E':
        camera.zoomOut();
        grid.updateCameraPose();  
        quad.updateCameraPose();
        break;
      case 'f': case 'F': fpsText.toggleVisibility(); break;
      case 'p': case 'P': grid.togglePause(); break;
      case 'r': case 'R': grid.refreshSimulation(); break;
      case 'z': case 'Z': controllerText.toggleVisibility();instructionText.toggleVisibility(); break;
      case 't': case 'T': grid.toggleRule(); break;
    }
  });
  
  // mouse interactions
  let isDragging = false;
  let oldP = [0, 0];
  // 
  const xboxGamepadMapping = () => {
    const gamepads = navigator.getGamepads();
    if (gamepads[0]) {
      const gp = gamepads[0];

      if (Math.abs(gp.axes[1]) > 0.1) {
        if (gp.axes[1] < 0) {
          camera.moveUp(movespeed/8);
        } else if (gp.axes[1] > 0) {
          camera.moveDown(movespeed/8); 
        }
        grid.updateCameraPose();
        // quad.updateCameraPose();
      }

      if (Math.abs(gp.axes[0]) > 0.1) {
        if (gp.axes[0] < 0) {
          camera.moveLeft(movespeed/8); 
        } else if (gp.axes[0] > 0) {
          camera.moveRight(movespeed/8);
        }
        grid.updateCameraPose();
        // quad.updateCameraPose();
      }

      if (gp.buttons[0].pressed) { 
        grid.togglePause();
      }

      if (gp.buttons[1].pressed) { 
        grid.refreshSimulation();
      }
      if (gp.buttons[2].pressed) { 
        camera.zoomIn(); 
        grid.updateCameraPose();
        // quad.updateCameraPose();
      }

      if (gp.buttons[3].pressed) {
        camera.zoomOut(); 
        grid.updateCameraPose();
        // quad.updateCameraPose();
      }
    }
  };

  const gamepadLoop = () => {
    xboxGamepadMapping();
    requestAnimationFrame(gamepadLoop);
  };

  gamepadLoop();

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
      renderer.render();
    }
    requestAnimationFrame(renderFrame);
  };
  lastCalled = Date.now();
  renderFrame();
  setInterval(() => { 
    fpsText.updateText('fps: ' + frameCnt);
    frameCnt = 0;
  }, 1000); // call every 1000 ms
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
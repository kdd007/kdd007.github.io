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
import PolygonObject from './lib/DSViz/PolygonObject.js'
import StandardTextObject from './lib/DSViz/StandardTextObject.js'

async function init() {
  var filesList= ["./assets/dense.polygon","./assets/circle.polygon","./assets/box.polygon","./assets/human.polygon","./assets/star.polygon"];
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a 2d animated renderer
  const renderer = new Renderer(canvasTag);
  await renderer.init();
  const polygon = new PolygonObject(renderer._device, renderer._canvasFormat, filesList);
  await renderer.appendSceneObject(polygon);
  let fps = '??';
  var fpsText = new StandardTextObject('fps: ' + fps);
  var instructionText=new StandardTextObject("Outside\nq/Q: Swap Polygon\nc/C: Change Collision Mode");
  fpsText._textCanvas.style.left="1460px"

  var currMethod=2;

  canvasTag.addEventListener('mousemove', async (e) => {
    var mouseX = 2*(e.offsetX/window.innerWidth)-1;
    var mouseY = 2*(-e.offsetY/window.innerHeight)+1;
    
    if (currMethod==0) {
      // where=calcGPUNonCon(mouseX,mouseY);
      instructionText.updateText(await calcGPUNonCon(polygon, mouseX,mouseY)+"\nq/Q: Swap Polygon\nc/C: Change Collision Mode");
    }
    else if (currMethod==1){
      // where=calcConvex(mouseX,mouseY);
      instructionText.updateText(calcConvex(polygon,mouseX,mouseY)+"\nq/Q: Swap Polygon\nc/C: Change Collision Mode");
      // console.log(calcConvex(polygon, mouseX,mouseY))
    }
    else {
      instructionText.updateText(calcNonConvex(polygon,mouseX,mouseY)+"\nq/Q: Swap Polygon\nc/C: Change Collision Mode");
      // console.log(calcNonConvex(polygon, mouseX,mouseY))
    }
  });
  window.addEventListener("keydown", async (e) => {
    switch (e.key) {
      case 'q': case 'Q':
        await renderer.removeSceneObject(polygon);
        await polygon.cycleFile();
        await renderer.appendSceneObject(polygon);
        break;
      case 'c': case "C":
        currMethod=(currMethod+1)%3;
        break;
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

  // setInterval(() => {
  //   instructionText.updateText(where);
  // }, 100);
  return renderer;
}

function calcConvex(polygon, mouseX,mouseY){
  //Convex
  for (let i=0; i < (polygon._vertices.length-2); i+=2) {
    if (!polygon.printIsInside(polygon._vertices.slice(i,i+2),polygon._vertices.slice(i+2,i+4),[mouseX,mouseY])){
      return "Outside"
    }
  }
  return "Inside"
}

function calcNonConvex(polygon, mouseX,mouseY){
//Non Convex
  var mouse=[mouseX,mouseY];
  var pos_winding = 0;
  var neg_winding = 0;


  for (let i = 0; i < polygon._vertices.length / 2 - 1; ++i) {
    if (Math.min(polygon._vertices[2 * i], polygon._vertices[2 * i + 2]) < mouseX && mouseX < Math.max(polygon._vertices[2 * i], polygon._vertices[2 * i + 2])) {
      if (Math.min(polygon._vertices[2 * i + 1], polygon._vertices[2 * i + 3]) < mouseY) {
        if (polygon._polygon.isInside(polygon._vertices.slice(2 * i, 2 * i + 2), polygon._vertices.slice(2 * i + 2, 2 * i + 4), mouse)) {
          pos_winding++;
        }
        else {
          pos_winding--;
        }
      }
      else if (Math.max(polygon._vertices[2 * i + 1], polygon._vertices[2 * i + 3]) > mouseY) {
        if (polygon._polygon.isInside(polygon._vertices.slice(2 * i, 2 * i + 2), polygon._vertices.slice(2 * i + 2, 2 * i + 4), mouse)) {
          neg_winding++;
        }
        else {
          neg_winding--;
        }
      }
    }
  }
  return pos_winding == 0 || neg_winding == 0 ? "Outside" : "Inside"
}

async function calcGPUNonCon(polygon, mouseX,mouseY){
  return await polygon.updateMousePos(mouseX,mouseY);
}

init().then( ret => {
  console.log(ret);
}).catch( error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});
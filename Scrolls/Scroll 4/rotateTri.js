import FilteredRenderer from '/lib/Viz/FilteredRenderer.js'
import Standard2DGAPosedVertexObject from '/lib/DSViz/Standard2DGAPosedVertexObject.js'

let applyRotorToRotor = (dr, r) => {
  // r = cS + s exey
  // dr = ccS + ss exey
  // dr r = (c * cc - s * ss)S + (cc * s + ss * s) e01
  return [dr[0] * r[0] - dr[1] * r[1], dr[0] * r[1] + dr[1] * r[0]];
};
async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Create a 2d renderer
  const renderer = new FilteredRenderer(canvasTag);
  await renderer.init();

  // Create a triangle geometry
  var vertices = new Float32Array([
     // x, y
     0, 0.5,
     -0.5, 0,
     0.5,  0,
  ]);
	var pose = [1, 0, 0, 0, 1, 1]; // rotor, translator, scales
  pose = new Float32Array(pose);
  await renderer.appendSceneObject(new Standard2DGAPosedVertexObject(renderer._device, renderer._canvasFormat, vertices, pose));
  let angle = Math.PI / 100 / 2;
  let dr = [Math.cos(angle), -Math.sin(angle)]; // a delta rotor

  setInterval(() => { 
    renderer.render();
    // update pose
    let newrotor = applyRotorToRotor(dr, [pose[0], pose[1]]);
    pose[0] = newrotor[0];
    pose[1] = newrotor[1];
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
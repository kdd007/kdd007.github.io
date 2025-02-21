/* 
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
struct Vert{
  // x:f32,
  // y:f32,
  p: vec2f
}
@group(0) @binding(0) var<storage> vertIn: array<Vert>; // Group #, Binding #, var<BufferType>, varName: Type you take in
@group(0) @binding(1) var<storage, read_write> vertOut: array<Vert>; // Group #, Binding #, var<BufferType>, varName: Type you take in
@group(0) @binding(2) var<uniform> mousePos: Vert; // varName: Type

@vertex // this compute the scene coordinate of each input vertex
fn vertexMain(@builtin(instance_index) idx: u32, @builtin(vertex_index) vIdx: u32) -> @builtin(position) vec4f {
  let xVal=vertIn[idx+vIdx].p.x; // array[vert] (X Val)
  let yVal=vertIn[idx+vIdx].p.y; // array[vert] (Y Val)
  return vec4f(xVal, yVal, 0, 1); // (pos, Z, W) = (X, Y, Z, W)
} 

@fragment // this compute the color of each pixel
fn fragmentMain() -> @location(0) vec4f {
  return vec4f(238.f/255, 118.f/255, 35.f/255, 1); // (R, G, B, A)
}

@compute @workgroup_size(2)
fn computeMain(@builtin(global_invocation_id) global_id: vec3u) {
  let idx= global_id.x;
  var windingNum=0;
  for (var i: u32 = 0; i < arrayLength(&vertIn); i+=1) {
    let leftSide= min(vertIn[i].p.x, vertIn[i+1].p.x);
    let rightSide=  max(vertIn[i].p.x, vertIn[i+1].p.x);
    if (leftSide< mousePos.p.x && rightSide > mousePos.p.x){
      if (isInside(vertIn[i].p,vertIn[i+1].p,mousePos.p)){
        windingNum++;
        // console.log("outside")
        // return
      }
      else{
        windingNum--;
      }
    }
  }
  vertOut[idx]= vertIn[idx];
}

fn isInside(v0: vec2f, v1: vec2f, p: vec2f  )-> bool {
  return (v1[0] - v0[0]) * (p[1] - v0[1]) - (v1[1] - v0[1]) * (p[0] - v0[0]) > 0;
}
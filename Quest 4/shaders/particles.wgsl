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

// TODO 3: Define a struct to store a particle
struct Particle {
  p: vec2f,  // Use vec2f for position instead of f32
  ip: vec2f,
  v: vec2f,
  iv: vec2f,
  l: f32,
  il: f32
};

struct VertexOutput {
  @builtin(position) pos: vec4f,
  @location(0) texCoords: vec2f
};
// TODO 4: Write the bind group spells here using array<Particle>
// name the binded variables particlesIn and particlesOut

@group(0) @binding(0) var<storage> particlesIn: array<Particle>;
@group(0) @binding(1) var<storage, read_write> particlesOut: array<Particle>; // a uniform buffer describing the object pose

// @group(0) @binding(2) var inTexture: texture_2d<f32>;
// @group(0) @binding(3) var inSampler: sampler;


@vertex
fn vertexMain(@builtin(instance_index) idx: u32, @builtin(vertex_index) vIdx: u32) -> @builtin(position) vec4f {
  // TODO 5: Revise the vertex shader to draw circle to visualize the particles
  let particle = particlesIn[idx].p;
  let size = 0.0125/3;
  let pi = 3.14159265;
  let theta = 2. * pi / 8 * f32(vIdx);
  let x = cos(theta) * size;
  let y = sin(theta) * size;

  // var pos = array<vec2f, 6>(
  // vec2f(-1, -1), vec2f(1, -1), vec2f(-1, 1),
  // vec2f(1, -1), vec2f(1, 1), vec2f(-1, 1)
  // );
  // var texCoords = array<vec2f, 6>(
  //   vec2f(0, 1), vec2f(1, 1), vec2f(0, 0),
  //   vec2f(1, 1), vec2f(1, 0), vec2f(0, 0)
  // );
  // var out: VertexOutput;
  // out.pos = vec4f(pos[vIdx], 0, 1);
  // out.texCoords = texCoords[vIdx];
  // return out;

  return vec4f(vec2f(x + particle[0], y + particle[1]), 0, 1);


  // var dist = length(particle - <YOUR BASE POSITION>) * 1024; // address this for your flame height
  // if (dist > 255) {
  //     dist = 255;
  // }
  // let size = 0.0125 * (255 - dist) / 255;
  
  // var out: VertexOutput;
  // out.pos = vec4f(vec2f(x + particle[0], y + particle[1]), 0, 1);
  // out.dist = dist;
  // return out;
}

@fragment
fn fragmentMain() -> @location(0) vec4f {
  // return vec4f(238.f/255, 118.f/255, 35.f/255, 1); // (R, G, B, A)
  return vec4f(255.f/255, 255.f/255, 255.f/255, 1); // (R, G, B, A)
}

// fn fragmentRain() -> @location(0) vec4f {
//   // return vec4f(238.f/255, 118.f/255, 35.f/255, 1); // (R, G, B, A)
//   return vec4f(160.f/255, 210.f/255, 219.f/255, 1); // (R, G, B, A)
// }
// fn fragmentMain(@location(0) texCoords: vec2f) -> @location(0) vec4f {
//   return textureSample(inTexture, inSampler, texCoords);
// }

@compute @workgroup_size(256)
fn computeMain(@builtin(global_invocation_id) global_id: vec3u) {
  // TODO 6: Revise the compute shader to update the particles using the velocity
  let idx = global_id.x;
  
  if (idx < arrayLength(&particlesIn)) {
  //  particlesOut[idx] = particlesIn[idx];
  var particle = particlesIn[idx];
    particle.v=particle.v + generateWind(particle.p.y, 1.5,0.0000);
    // Update the position using the velocity: newPos = oldPos + velocity
    particle.p = particle.p + particle.v;
    particle.p.y=particle.p.y + (-9.8/1000);
    particle.l -=1; 
    
    // TOOD 7: Add boundary checking and respawn the particle when it is offscreen
    // if (particle.p.x < -1.0 || particle.p.x > 1.0 || particle.p.y < -1.0 || particle.p.y > 1.0|| particle.l<=0) {
    //   particle.p = particle.ip;
    //   particle.v= particle.iv;
    //   particle.l= particle.il;
    // }
    if (particle.p.x < -1.0 || particle.p.x > 1.0) {
      particle.p.x = -1*particle.p.x;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    else if (particle.p.y < -1.0 || particle.p.y > 1.0) {
      particle.p.y = -1*particle.p.y;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    else if (particle.l<=0){
      particle.p = particle.ip;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    // Store the updated particle
    particlesOut[idx] = particle;
  };
}

@compute @workgroup_size(256)
fn addWind(@builtin(global_invocation_id) global_id: vec3u) {
  // TODO 6: Revise the compute shader to update the particles using the velocity
  let idx = global_id.x;
  
  if (idx < arrayLength(&particlesIn)) {
  //  particlesOut[idx] = particlesIn[idx];
  var particle = particlesIn[idx];
    particle.v=particle.v + generateWind(particle.p.y, 1,0.00005);
    // Update the position using the velocity: newPos = oldPos + velocity
    particle.p = particle.p + particle.v;
    particle.p.y=particle.p.y + (-9.8/1000);
    particle.l -=1; 
    
    // TOOD 7: Add boundary checking and respawn the particle when it is offscreen
    // if (particle.p.x < -1.0 || particle.p.x > 1.0 || particle.p.y < -1.0 || particle.p.y > 1.0|| particle.l<=0) {
    //   particle.p = particle.ip;
    //   particle.v= particle.iv;
    //   particle.l= particle.il;
    // }
    if (particle.p.x < -1.0 || particle.p.x > 1.0) {
      particle.p.x = -1*particle.p.x;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    else if (particle.p.y < -1.0 || particle.p.y > 1.0) {
      particle.p.y = -1*particle.p.y;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    else if (particle.l<=0){
      particle.p = particle.ip;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    // Store the updated particle
    particlesOut[idx] = particle;
  };
}

@compute @workgroup_size(256)
fn reverseGravity(@builtin(global_invocation_id) global_id: vec3u) {
  // TODO 6: Revise the compute shader to update the particles using the velocity
  let idx = global_id.x;
  
  if (idx < arrayLength(&particlesIn)) {
  //  particlesOut[idx] = particlesIn[idx];
  var particle = particlesIn[idx];
    particle.v=particle.v + generateWind(particle.p.y, 1,0.0000);
    // Update the position using the velocity: newPos = oldPos + velocity
    particle.p = particle.p + particle.v;
    particle.p.y=particle.p.y + (9.8/1000);
    particle.l -=1; 
    
    // TOOD 7: Add boundary checking and respawn the particle when it is offscreen
    // if (particle.p.x < -1.0 || particle.p.x > 1.0 || particle.p.y < -1.0 || particle.p.y > 1.0|| particle.l<=0) {
    //   particle.p = particle.ip;
    //   particle.v= particle.iv;
    //   particle.l= particle.il;
    // }
    if (particle.p.x < -1.0 || particle.p.x > 1.0) {
      particle.p.x = -1*particle.p.x;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    else if (particle.p.y < -1.0 || particle.p.y > 1.0) {
      particle.p.y = -1*particle.p.y;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    else if (particle.l<=0){
      particle.p = particle.ip;
      particle.v= particle.iv;
      particle.l= particle.il;
    }
    // Store the updated particle
    particlesOut[idx] = particle;
  };
}

  fn generateWind(time: f32, frequency: f32, strength: f32) -> vec2f {
      let angle = sin(time * frequency) * 3.14159265;
      return vec2f(cos(angle), sin(angle)) * strength;
} 
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

alias RTArr = array<f32>;

struct tint_symbol_2_block {
  /* @offset(0) */
  inner : RTArr,
}

var<private> tint_symbol_4_1 : vec3u;

@group(0) @binding(0) var tint_symbol : texture_2d<f32>;

@group(0) @binding(1) var tint_symbol_1 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(2) var<storage> tint_symbol_2 : tint_symbol_2_block;

fn tint_symbol_3_inner(tint_symbol_4 : vec3u) {
  var tint_symbol_9 = vec4f();
  let x_21 = bitcast<vec2i>(tint_symbol_4.xy);
  let x_26 = textureLoad(tint_symbol, x_21, 0i);
  let x_38 = ((x_21.y * bitcast<i32>(vec2i(textureDimensions(tint_symbol, 0i)).x)) + x_21.x);
  tint_symbol_9 = x_26;
  if ((abs(tint_symbol_2.inner[x_38]) < 0.30000001192092895508f)) {
    tint_symbol_9.x = max(min((x_26.x + tint_symbol_2.inner[x_38]), 1.0f), 0.0f);
    tint_symbol_9.y = max(min((x_26.y + tint_symbol_2.inner[x_38]), 1.0f), 0.0f);
    tint_symbol_9.z = max(min((x_26.z + tint_symbol_2.inner[x_38]), 1.0f), 0.0f);
  }
  tint_symbol_9.w = x_26.w;
  let x_84 = tint_symbol_9;
  textureStore(tint_symbol_1, x_21, x_84);
  return;
}

fn tint_symbol_3_1() {
  let x_89 = tint_symbol_4_1;
  tint_symbol_3_inner(x_89);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_4_1_param : vec3u) {
  tint_symbol_4_1 = tint_symbol_4_1_param;
  tint_symbol_3_1();
}

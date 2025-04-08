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

var<private> tint_symbol_3_1 : vec3u;

@group(0) @binding(0) var tint_symbol : texture_2d<f32>;

@group(0) @binding(1) var tint_symbol_1 : texture_storage_2d<rgba8unorm, write>;

fn tint_symbol_2_inner(tint_symbol_3 : vec3u) {
  let x_17 = bitcast<vec2i>(tint_symbol_3.xy);
  let x_22 = textureLoad(tint_symbol, x_17, 0i);
  textureStore(tint_symbol_1, x_17, x_22);
  return;
}

fn tint_symbol_2_1() {
  let x_32 = tint_symbol_3_1;
  tint_symbol_2_inner(x_32);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_3_1_param : vec3u) {
  tint_symbol_3_1 = tint_symbol_3_1_param;
  tint_symbol_2_1();
}

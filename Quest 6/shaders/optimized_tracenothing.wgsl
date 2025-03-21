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

var<private> tint_symbol_2_1 : vec3u;

@group(0) @binding(0) var tint_symbol : texture_storage_2d<rgba8unorm, write>;

fn tint_symbol_1_inner(tint_symbol_2 : vec3u) {
  textureStore(tint_symbol, bitcast<vec2i>(tint_symbol_2.xy), vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f));
  return;
}

fn tint_symbol_1_1() {
  let x_31 = tint_symbol_2_1;
  tint_symbol_1_inner(x_31);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_2_1_param : vec3u) {
  tint_symbol_2_1 = tint_symbol_2_1_param;
  tint_symbol_1_1();
}

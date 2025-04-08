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

struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec4f,
  /* @offset(16) */
  tint_symbol_2 : vec2f,
}

alias Arr = array<vec2f, 6u>;

var<private> tint_symbol_4_1 : u32;

var<private> tint_symbol_1_1 = vec4f();

var<private> tint_symbol_2_1 = vec2f();

var<private> tint_symbol_2_2 : vec2f;

var<private> value = vec4f();

@group(0) @binding(0) var tint_symbol_6 : texture_2d<f32>;

@group(0) @binding(1) var tint_symbol_7 : sampler;

const x_35 = vec2f(1.0f, -1.0f);

const x_36 = vec2f(-1.0f, 1.0f);

const x_37 = vec2f(1.0f);

fn tint_symbol_3_inner(tint_symbol_4 : u32) -> tint_symbol {
  var tint_symbol_1 = array<vec2f, 6u>();
  var tint_symbol_2 = array<vec2f, 6u>();
  var tint_symbol_5 = tint_symbol(vec4f(), vec2f());
  tint_symbol_1 = Arr(vec2f(-1.0f), x_35, x_36, x_35, x_37, x_36);
  tint_symbol_2 = Arr(vec2f(0.0f, 1.0f), x_37, vec2f(), x_37, vec2f(1.0f, 0.0f), vec2f());
  let x_54 = tint_symbol_1[tint_symbol_4];
  tint_symbol_5.tint_symbol_1 = vec4f(x_54.x, x_54.y, 0.0f, 1.0f);
  tint_symbol_5.tint_symbol_2 = tint_symbol_2[tint_symbol_4];
  let x_62 = tint_symbol_5;
  return x_62;
}

fn tint_symbol_3_1() {
  let x_68 = tint_symbol_4_1;
  let x_67 = tint_symbol_3_inner(x_68);
  tint_symbol_1_1 = x_67.tint_symbol_1;
  tint_symbol_2_1 = x_67.tint_symbol_2;
  return;
}

struct tint_symbol_3_out {
  @builtin(position)
  tint_symbol_1_1_1 : vec4f,
  @location(0)
  tint_symbol_2_1_1 : vec2f,
}

@vertex
fn vertexMain(@builtin(vertex_index) tint_symbol_4_1_param : u32) -> tint_symbol_3_out {
  tint_symbol_4_1 = tint_symbol_4_1_param;
  tint_symbol_3_1();
  return tint_symbol_3_out(tint_symbol_1_1, tint_symbol_2_1);
}

fn tint_symbol_8_inner(tint_symbol_2_3 : vec2f) -> vec4f {
  let x_75 = textureSample(tint_symbol_6, tint_symbol_7, tint_symbol_2_3);
  return x_75;
}

fn tint_symbol_8_1() {
  let x_83 = tint_symbol_2_2;
  let x_82 = tint_symbol_8_inner(x_83);
  value = x_82;
  return;
}

struct tint_symbol_8_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_2_2_param : vec2f) -> tint_symbol_8_out {
  tint_symbol_2_2 = tint_symbol_2_2_param;
  tint_symbol_8_1();
  return tint_symbol_8_out(value);
}

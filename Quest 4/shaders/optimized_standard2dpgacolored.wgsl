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
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : tint_symbol,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
}

struct tint_symbol_8_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

struct tint_symbol_20 {
  /* @offset(0) */
  tint_symbol_21 : vec4f,
  /* @offset(16) */
  tint_symbol_22 : vec4f,
}

var<private> tint_symbol_24_1 : vec2f;

var<private> tint_symbol_22_1 : vec4f;

var<private> tint_symbol_21_1 = vec4f();

var<private> tint_symbol_22_2 = vec4f();

var<private> tint_symbol_22_3 : vec4f;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

fn tint_symbol_9(tint_symbol_10 : tint_symbol, tint_symbol_11 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_1) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_2)), ((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_2) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_1)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_3) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_4)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_1)) - (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_2)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_4) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_3)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_2)) + (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_1)));
}

fn tint_symbol_12(tint_symbol_10_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_10_1.tint_symbol_1, -(tint_symbol_10_1.tint_symbol_2), -(tint_symbol_10_1.tint_symbol_3), -(tint_symbol_10_1.tint_symbol_4));
}

fn tint_symbol_13(tint_symbol_14 : tint_symbol, tint_symbol_15 : tint_symbol) -> tint_symbol {
  let x_88 = tint_symbol_12(tint_symbol_15);
  let x_89 = tint_symbol_9(tint_symbol_14, x_88);
  let x_90 = tint_symbol_9(tint_symbol_15, x_89);
  return x_90;
}

fn tint_symbol_16(tint_symbol_14_1 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_14_1.y, -(tint_symbol_14_1.x));
}

fn tint_symbol_17(tint_symbol_14_2 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_14_2.tint_symbol_4) / tint_symbol_14_2.tint_symbol_2), (tint_symbol_14_2.tint_symbol_3 / tint_symbol_14_2.tint_symbol_2));
}

fn tint_symbol_18(tint_symbol_14_3 : vec2f, tint_symbol_15_1 : tint_symbol) -> vec2f {
  let x_117 = tint_symbol_16(tint_symbol_14_3);
  let x_118 = tint_symbol_13(x_117, tint_symbol_15_1);
  let x_119 = tint_symbol_17(x_118);
  return x_119;
}

fn tint_symbol_23_inner(tint_symbol_24 : vec2f, tint_symbol_22 : vec4f) -> tint_symbol_20 {
  var tint_symbol_25 = tint_symbol_20(vec4f(), vec4f());
  let x_134 = tint_symbol_8.inner.tint_symbol_6;
  let x_129 = tint_symbol_18(tint_symbol_24, x_134);
  let x_139 = (x_129 * tint_symbol_8.inner.tint_symbol_7);
  tint_symbol_25.tint_symbol_21 = vec4f(x_139.x, x_139.y, 0.0f, 1.0f);
  tint_symbol_25.tint_symbol_22 = tint_symbol_22;
  let x_146 = tint_symbol_25;
  return x_146;
}

fn tint_symbol_23_1() {
  let x_152 = tint_symbol_24_1;
  let x_153 = tint_symbol_22_1;
  let x_151 = tint_symbol_23_inner(x_152, x_153);
  tint_symbol_21_1 = x_151.tint_symbol_21;
  tint_symbol_22_2 = x_151.tint_symbol_22;
  return;
}

struct tint_symbol_23_out {
  @builtin(position)
  tint_symbol_21_1_1 : vec4f,
  @location(0)
  tint_symbol_22_2_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_24_1_param : vec2f, @location(1) tint_symbol_22_1_param : vec4f) -> tint_symbol_23_out {
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_23_1();
  return tint_symbol_23_out(tint_symbol_21_1, tint_symbol_22_2);
}

fn tint_symbol_28_inner(tint_symbol_22_4 : vec4f) -> vec4f {
  return tint_symbol_22_4;
}

fn tint_symbol_28_1() {
  let x_163 = tint_symbol_22_3;
  let x_162 = tint_symbol_28_inner(x_163);
  value = x_162;
  return;
}

struct tint_symbol_28_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_22_3_param : vec4f) -> tint_symbol_28_out {
  tint_symbol_22_3 = tint_symbol_22_3_param;
  tint_symbol_28_1();
  return tint_symbol_28_out(value);
}

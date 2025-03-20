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

var<private> tint_symbol_22_1 : vec2f;

var<private> tint_symbol_23_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

@group(0) @binding(0) var<uniform> tint_symbol_20 : tint_symbol_8_block;

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

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_21_inner(tint_symbol_22 : vec2f, tint_symbol_23 : u32) -> vec4f {
  var x_151 = vec2f();
  var x_158 = vec2f();
  var x_163 = vec2f();
  var x_169 = vec2f();
  let x_143 = tint_mod(tint_symbol_23, 10u);
  let x_145 = tint_div(tint_symbol_23, 10u);
  let x_156 = (1.0f * 2.0f);
  let x_160 = -(1.0f);
  let x_167 = ((x_156 / 10.0f) * 0.5f);
  let x_176 = tint_symbol_20.inner.tint_symbol_6;
  let x_172 = tint_symbol_12(x_176);
  let x_177 = tint_symbol_18(((tint_symbol_22 / vec2f(10.0f)) + ((vec2f(x_160) + ((vec2f(f32(x_143), f32(x_145)) / vec2f(10.0f)) * x_156)) + vec2f(x_167))), x_172);
  let x_181 = (x_177 * tint_symbol_20.inner.tint_symbol_7);
  return vec4f(x_181.x, x_181.y, 0.0f, 1.0f);
}

fn tint_symbol_21_1() {
  let x_190 = tint_symbol_22_1;
  let x_191 = tint_symbol_23_1;
  let x_189 = tint_symbol_21_inner(x_190, x_191);
  value = x_189;
  return;
}

struct tint_symbol_21_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_22_1_param : vec2f, @builtin(instance_index) tint_symbol_23_1_param : u32) -> tint_symbol_21_out {
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_23_1 = tint_symbol_23_1_param;
  tint_symbol_21_1();
  return tint_symbol_21_out(value);
}

fn tint_symbol_33_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_33_1() {
  let x_201 = tint_symbol_33_inner();
  value_1 = x_201;
  return;
}

struct tint_symbol_33_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_33_out {
  tint_symbol_33_1();
  return tint_symbol_33_out(value_1);
}

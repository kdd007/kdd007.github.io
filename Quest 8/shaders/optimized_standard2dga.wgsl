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
  tint_symbol_1 : vec2f,
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
  /* @offset(24) */
  tint_symbol_4 : vec2f,
}

struct tint_symbol_5_block {
  /* @offset(0) */
  inner : tint_symbol,
}

var<private> tint_symbol_23_1 : vec2f;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_5 : tint_symbol_5_block;

fn tint_symbol_6(tint_symbol_7 : vec2f, tint_symbol_8 : vec2f) -> vec2f {
  let x_22 = tint_symbol_8.x;
  let x_23 = tint_symbol_8.y;
  return vec2f(((((x_22 * x_22) * tint_symbol_7.x) - (((2.0f * x_22) * x_23) * tint_symbol_7.y)) - ((x_23 * x_23) * tint_symbol_7.x)), (((((2.0f * x_22) * x_23) * tint_symbol_7.x) + ((x_22 * x_22) * tint_symbol_7.y)) - ((x_23 * x_23) * tint_symbol_7.y)));
}

fn tint_symbol_12(tint_symbol_7_1 : vec2f, tint_symbol_9 : vec2f, tint_symbol_8_1 : vec2f) -> vec2f {
  let x_57 = tint_symbol_6((tint_symbol_7_1 - tint_symbol_9), tint_symbol_8_1);
  return (x_57 + tint_symbol_9);
}

fn tint_symbol_14(tint_symbol_15 : vec4f, tint_symbol_16 : vec4f) -> vec4f {
  return vec4f(((((tint_symbol_15.x * tint_symbol_16.x) + (tint_symbol_15.y * tint_symbol_16.y)) + (tint_symbol_15.z * tint_symbol_16.z)) - (tint_symbol_15.w * tint_symbol_16.w)), ((((tint_symbol_15.x * tint_symbol_16.y) + (tint_symbol_15.y * tint_symbol_16.x)) - (tint_symbol_15.z * tint_symbol_16.w)) + (tint_symbol_15.w * tint_symbol_16.z)), ((((tint_symbol_15.x * tint_symbol_16.z) + (tint_symbol_15.y * tint_symbol_16.w)) + (tint_symbol_15.z * tint_symbol_16.x)) - (tint_symbol_15.w * tint_symbol_16.y)), ((((tint_symbol_15.x * tint_symbol_16.w) + (tint_symbol_15.y * tint_symbol_16.z)) - (tint_symbol_15.z * tint_symbol_16.y)) + (tint_symbol_15.w * tint_symbol_16.x)));
}

fn tint_symbol_17(tint_symbol_15_1 : vec4f) -> vec4f {
  return vec4f(tint_symbol_15_1.x, tint_symbol_15_1.y, tint_symbol_15_1.z, -(tint_symbol_15_1.w));
}

fn tint_symbol_18(tint_symbol_7_2 : vec2f, tint_symbol_8_2 : vec2f) -> vec2f {
  let x_150 = tint_symbol_17(vec4f(tint_symbol_8_2.x, 0.0f, 0.0f, tint_symbol_8_2.y));
  let x_154 = tint_symbol_14(vec4f(0.0f, tint_symbol_7_2.x, tint_symbol_7_2.y, 0.0f), x_150);
  let x_155 = tint_symbol_14(vec4f(tint_symbol_8_2.x, 0.0f, 0.0f, tint_symbol_8_2.y), x_154);
  return vec2f(x_155.y, x_155.z);
}

fn tint_symbol_19(tint_symbol_8_3 : vec2f, tint_symbol_20 : vec2f) -> vec2f {
  let x_163 = tint_symbol_14(vec4f(tint_symbol_8_3.x, 0.0f, 0.0f, tint_symbol_8_3.y), vec4f(tint_symbol_20.x, 0.0f, 0.0f, tint_symbol_20.y));
  return vec2f(x_163.x, x_163.w);
}

fn tint_symbol_21(tint_symbol_7_3 : vec2f, tint_symbol_9_1 : vec2f, tint_symbol_8_4 : vec2f) -> vec2f {
  let x_179 = tint_symbol_18((tint_symbol_7_3 - tint_symbol_9_1), tint_symbol_8_4);
  return (x_179 + tint_symbol_9_1);
}

fn tint_symbol_22_inner(tint_symbol_23 : vec2f) -> vec4f {
  let x_191 = tint_symbol_5.inner.tint_symbol_4;
  let x_193 = tint_symbol_5.inner.tint_symbol_1;
  let x_185 = tint_symbol_21(tint_symbol_23, x_191, x_193);
  let x_201 = ((x_185 + tint_symbol_5.inner.tint_symbol_2) * tint_symbol_5.inner.tint_symbol_3);
  return vec4f(x_201.x, x_201.y, 0.0f, 1.0f);
}

fn tint_symbol_22_1() {
  let x_211 = tint_symbol_23_1;
  let x_210 = tint_symbol_22_inner(x_211);
  value = x_210;
  return;
}

struct tint_symbol_22_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_23_1_param : vec2f) -> tint_symbol_22_out {
  tint_symbol_23_1 = tint_symbol_23_1_param;
  tint_symbol_22_1();
  return tint_symbol_22_out(value);
}

fn tint_symbol_26_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_26_1() {
  let x_221 = tint_symbol_26_inner();
  value_1 = x_221;
  return;
}

struct tint_symbol_26_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_26_out {
  tint_symbol_26_1();
  return tint_symbol_26_out(value_1);
}

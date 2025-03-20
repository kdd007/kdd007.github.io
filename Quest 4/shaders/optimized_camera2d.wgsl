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
  let x_85 = tint_symbol_12(tint_symbol_15);
  let x_86 = tint_symbol_9(tint_symbol_14, x_85);
  let x_87 = tint_symbol_9(tint_symbol_15, x_86);
  return x_87;
}

fn tint_symbol_16(tint_symbol_14_1 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_14_1.y, -(tint_symbol_14_1.x));
}

fn tint_symbol_17(tint_symbol_14_2 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_14_2.tint_symbol_4) / tint_symbol_14_2.tint_symbol_2), (tint_symbol_14_2.tint_symbol_3 / tint_symbol_14_2.tint_symbol_2));
}

fn tint_symbol_18(tint_symbol_14_3 : vec2f, tint_symbol_15_1 : tint_symbol) -> vec2f {
  let x_114 = tint_symbol_16(tint_symbol_14_3);
  let x_115 = tint_symbol_13(x_114, tint_symbol_15_1);
  let x_116 = tint_symbol_17(x_115);
  return x_116;
}

fn tint_symbol_21_inner(tint_symbol_22 : vec2f) -> vec4f {
  let x_126 = tint_symbol_20.inner.tint_symbol_6;
  let x_121 = tint_symbol_12(x_126);
  let x_127 = tint_symbol_18(tint_symbol_22, x_121);
  let x_132 = (x_127 * tint_symbol_20.inner.tint_symbol_7);
  return vec4f(x_132.x, x_132.y, 0.0f, 1.0f);
}

fn tint_symbol_21_1() {
  let x_141 = tint_symbol_22_1;
  let x_140 = tint_symbol_21_inner(x_141);
  value = x_140;
  return;
}

struct tint_symbol_21_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_22_1_param : vec2f) -> tint_symbol_21_out {
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_21_1();
  return tint_symbol_21_out(value);
}

fn tint_symbol_25_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_25_1() {
  let x_151 = tint_symbol_25_inner();
  value_1 = x_151;
  return;
}

struct tint_symbol_25_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_25_out {
  tint_symbol_25_1();
  return tint_symbol_25_out(value_1);
}

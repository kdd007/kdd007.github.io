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

alias RTArr = array<u32>;

struct tint_symbol_21_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_23 {
  /* @offset(0) */
  tint_symbol_24 : vec4f,
  /* @offset(16) */
  tint_symbol_25 : f32,
}

var<private> tint_symbol_24_1 : vec2f;

var<private> tint_symbol_27_1 : u32;

var<private> tint_symbol_24_2 = vec4f();

var<private> tint_symbol_25_1 = 0.0f;

var<private> tint_symbol_25_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_33_1 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

@group(0) @binding(0) var<uniform> tint_symbol_20 : tint_symbol_8_block;

@group(0) @binding(1) var<storage> tint_symbol_21 : tint_symbol_21_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_22 : tint_symbol_21_block;

fn tint_symbol_9(tint_symbol_10 : tint_symbol, tint_symbol_11 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_1) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_2)), ((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_2) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_1)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_3) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_4)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_1)) - (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_2)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_4) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_3)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_2)) + (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_1)));
}

fn tint_symbol_12(tint_symbol_10_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_10_1.tint_symbol_1, -(tint_symbol_10_1.tint_symbol_2), -(tint_symbol_10_1.tint_symbol_3), -(tint_symbol_10_1.tint_symbol_4));
}

fn tint_symbol_13(tint_symbol_14 : tint_symbol, tint_symbol_15 : tint_symbol) -> tint_symbol {
  let x_99 = tint_symbol_12(tint_symbol_15);
  let x_100 = tint_symbol_9(tint_symbol_14, x_99);
  let x_101 = tint_symbol_9(tint_symbol_15, x_100);
  return x_101;
}

fn tint_symbol_16(tint_symbol_14_1 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_14_1.y, -(tint_symbol_14_1.x));
}

fn tint_symbol_17(tint_symbol_14_2 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_14_2.tint_symbol_4) / tint_symbol_14_2.tint_symbol_2), (tint_symbol_14_2.tint_symbol_3 / tint_symbol_14_2.tint_symbol_2));
}

fn tint_symbol_18(tint_symbol_14_3 : vec2f, tint_symbol_15_1 : tint_symbol) -> vec2f {
  let x_128 = tint_symbol_16(tint_symbol_14_3);
  let x_129 = tint_symbol_13(x_128, tint_symbol_15_1);
  let x_130 = tint_symbol_17(x_129);
  return x_130;
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_26_inner(tint_symbol_24 : vec2f, tint_symbol_27 : u32) -> tint_symbol_23 {
  var x_163 = vec2f();
  var x_170 = vec2f();
  var x_175 = vec2f();
  var x_181 = vec2f();
  var tint_symbol_37 = tint_symbol_23(vec4f(), 0.0f);
  let x_155 = tint_mod(tint_symbol_27, 10u);
  let x_157 = tint_div(tint_symbol_27, 10u);
  let x_168 = (1.0f * 2.0f);
  let x_172 = -(1.0f);
  let x_179 = ((x_168 / 10.0f) * 0.5f);
  let x_188 = tint_symbol_20.inner.tint_symbol_6;
  let x_184 = tint_symbol_12(x_188);
  let x_189 = tint_symbol_18(((tint_symbol_24 / vec2f(10.0f)) + ((vec2f(x_172) + ((vec2f(f32(x_155), f32(x_157)) / vec2f(10.0f)) * x_168)) + vec2f(x_179))), x_184);
  let x_193 = (x_189 * tint_symbol_20.inner.tint_symbol_7);
  tint_symbol_37.tint_symbol_24 = vec4f(x_193.x, x_193.y, 0.0f, 1.0f);
  tint_symbol_37.tint_symbol_25 = f32(tint_symbol_21.inner[tint_symbol_27]);
  let x_208 = tint_symbol_37;
  return x_208;
}

fn tint_symbol_26_1() {
  let x_214 = tint_symbol_24_1;
  let x_215 = tint_symbol_27_1;
  let x_213 = tint_symbol_26_inner(x_214, x_215);
  tint_symbol_24_2 = x_213.tint_symbol_24;
  tint_symbol_25_1 = x_213.tint_symbol_25;
  return;
}

struct tint_symbol_26_out {
  @builtin(position)
  tint_symbol_24_2_1 : vec4f,
  @location(0)
  tint_symbol_25_1_1 : f32,
}

@vertex
fn vertexMain(@location(0) tint_symbol_24_1_param : vec2f, @builtin(instance_index) tint_symbol_27_1_param : u32) -> tint_symbol_26_out {
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_27_1 = tint_symbol_27_1_param;
  tint_symbol_26_1();
  return tint_symbol_26_out(tint_symbol_24_2, tint_symbol_25_1);
}

fn tint_symbol_38_inner(tint_symbol_25 : f32) -> vec4f {
  return (vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f) * tint_symbol_25);
}

fn tint_symbol_38_1() {
  let x_230 = tint_symbol_25_2;
  let x_229 = tint_symbol_38_inner(x_230);
  value = x_229;
  return;
}

struct tint_symbol_38_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_25_2_param : f32) -> tint_symbol_38_out {
  tint_symbol_25_2 = tint_symbol_25_2_param;
  tint_symbol_38_1();
  return tint_symbol_38_out(value);
}

fn tint_symbol_39_inner(tint_symbol_33 : vec3u) {
  let x_235 = tint_symbol_33.x;
  let x_236 = tint_symbol_33.y;
  let x_241 = tint_symbol_21.inner[((x_236 * 10u) + (x_235 + 1u))];
  let x_246 = tint_symbol_21.inner[((x_236 * 10u) + (x_235 - 1u))];
  let x_252 = tint_symbol_21.inner[(((x_236 + 1u) * 10u) + x_235)];
  let x_258 = tint_symbol_21.inner[(((x_236 - 1u) * 10u) + x_235)];
  let x_261 = ((x_236 * 10u) + x_235);
  let x_262 = tint_mod((x_261 + (((x_241 + x_246) + x_252) + x_258)), 2u);
  if ((x_262 == 1u)) {
    tint_symbol_22.inner[x_261] = 1u;
  } else {
    tint_symbol_22.inner[x_261] = 0u;
  }
  return;
}

fn tint_symbol_39_1() {
  let x_274 = tint_symbol_33_1;
  tint_symbol_39_inner(x_274);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_33_1_param : vec3u) {
  tint_symbol_33_1 = tint_symbol_33_1_param;
  tint_symbol_39_1();
}

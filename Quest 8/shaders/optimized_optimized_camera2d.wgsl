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

struct tint_symbol_8 {
  /* @offset(0) */
  tint_symbol_9 : tint_symbol_5,
}

struct tint_symbol_13_block {
  /* @offset(0) */
  inner : tint_symbol_8,
}

struct tint_symbol_45 {
  /* @offset(0) */
  tint_symbol_46 : vec4f,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_53 : vec4f,
}

var<private> tint_symbol_48_1 : vec2f;

var<private> tint_symbol_46_1 = vec4f();

var<private> tint_symbol_53_1 = vec4f();

var<private> tint_symbol_10 = vec2f();

var<private> tint_symbol_11 = vec4f();

var<private> tint_symbol_12 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_13 : tint_symbol_13_block;

@group(0) @binding(0) var<uniform> tint_symbol_14 : tint_symbol_13_block;

fn tint_symbol_15(tint_symbol_16 : tint_symbol, tint_symbol_17 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_16.tint_symbol_1 * tint_symbol_17.tint_symbol_1) - (tint_symbol_16.tint_symbol_2 * tint_symbol_17.tint_symbol_2)), ((tint_symbol_16.tint_symbol_1 * tint_symbol_17.tint_symbol_2) + (tint_symbol_16.tint_symbol_2 * tint_symbol_17.tint_symbol_1)), ((((tint_symbol_16.tint_symbol_1 * tint_symbol_17.tint_symbol_3) + (tint_symbol_16.tint_symbol_2 * tint_symbol_17.tint_symbol_4)) + (tint_symbol_16.tint_symbol_3 * tint_symbol_17.tint_symbol_1)) - (tint_symbol_16.tint_symbol_4 * tint_symbol_17.tint_symbol_2)), ((((tint_symbol_16.tint_symbol_1 * tint_symbol_17.tint_symbol_4) - (tint_symbol_16.tint_symbol_2 * tint_symbol_17.tint_symbol_3)) + (tint_symbol_16.tint_symbol_3 * tint_symbol_17.tint_symbol_2)) + (tint_symbol_16.tint_symbol_4 * tint_symbol_17.tint_symbol_1)));
}

fn tint_symbol_18(tint_symbol_19 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_19.tint_symbol_1, -(tint_symbol_19.tint_symbol_2), -(tint_symbol_19.tint_symbol_3), -(tint_symbol_19.tint_symbol_4));
}

fn tint_symbol_20(tint_symbol_21 : tint_symbol, tint_symbol_22 : tint_symbol) -> tint_symbol {
  let x_92 = tint_symbol_18(tint_symbol_22);
  let x_93 = tint_symbol_15(tint_symbol_21, x_92);
  let x_94 = tint_symbol_15(tint_symbol_22, x_93);
  return x_94;
}

fn tint_symbol_26(tint_symbol_27 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_27.y, -(tint_symbol_27.x));
}

fn tint_symbol_28(tint_symbol_29 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_29.tint_symbol_4) / tint_symbol_29.tint_symbol_2), (tint_symbol_29.tint_symbol_3 / tint_symbol_29.tint_symbol_2));
}

fn tint_symbol_30(tint_symbol_31 : vec2f, tint_symbol_32 : tint_symbol) -> vec2f {
  let x_121 = tint_symbol_26(tint_symbol_31);
  let x_122 = tint_symbol_20(x_121, tint_symbol_32);
  let x_123 = tint_symbol_28(x_122);
  return x_123;
}

fn tint_symbol_36(tint_symbol_37 : vec2f) -> vec4f {
  let x_132 = tint_symbol_14.inner.tint_symbol_9.tint_symbol_6;
  let x_133 = tint_symbol_18(x_132);
  let x_134 = tint_symbol_30(tint_symbol_37, x_133);
  let x_139 = (x_134 * tint_symbol_14.inner.tint_symbol_9.tint_symbol_7);
  return vec4f(x_139.x, x_139.y, 0.0f, 1.0f);
}

fn tint_symbol_42() {
  let x_147 = tint_symbol_10;
  let x_148 = tint_symbol_36(x_147);
  tint_symbol_11 = x_148;
  return;
}

fn tint_symbol_47_inner(tint_symbol_48 : vec2f) -> tint_symbol_45 {
  tint_symbol_10 = tint_symbol_48;
  tint_symbol_42();
  let x_155 = tint_symbol_11;
  return tint_symbol_45(x_155);
}

fn tint_symbol_47_1() {
  let x_160 = tint_symbol_48_1;
  let x_159 = tint_symbol_47_inner(x_160);
  tint_symbol_46_1 = x_159.tint_symbol_46;
  return;
}

struct tint_symbol_47_out {
  @builtin(position)
  tint_symbol_46_1_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_48_1_param : vec2f) -> tint_symbol_47_out {
  tint_symbol_48_1 = tint_symbol_48_1_param;
  tint_symbol_47_1();
  return tint_symbol_47_out(tint_symbol_46_1);
}

fn tint_symbol_49() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_50() {
  let x_171 = tint_symbol_49();
  tint_symbol_12 = x_171;
  return;
}

fn tint_symbol_54_inner() -> tint_symbol_52 {
  tint_symbol_50();
  let x_177 = tint_symbol_12;
  return tint_symbol_52(x_177);
}

fn tint_symbol_54_1() {
  let x_181 = tint_symbol_54_inner();
  tint_symbol_53_1 = x_181.tint_symbol_53;
  return;
}

struct tint_symbol_54_out {
  @location(0)
  tint_symbol_53_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_54_out {
  tint_symbol_54_1();
  return tint_symbol_54_out(tint_symbol_53_1);
}

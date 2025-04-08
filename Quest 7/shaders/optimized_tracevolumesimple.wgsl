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
  /* @offset(16) */
  tint_symbol_5 : f32,
  /* @offset(20) */
  tint_symbol_6 : f32,
  /* @offset(24) */
  tint_symbol_7 : f32,
  /* @offset(28) */
  tint_symbol_8 : f32,
  /* @offset(32) */
  tint_symbol_9 : f32,
  /* @offset(36) */
  tint_symbol_10 : f32,
  /* @offset(40) */
  tint_symbol_11 : f32,
  /* @offset(44) */
  tint_symbol_12 : f32,
  /* @offset(48) */
  tint_symbol_13 : f32,
  /* @offset(52) */
  tint_symbol_14 : f32,
  /* @offset(56) */
  tint_symbol_15 : f32,
  /* @offset(60) */
  tint_symbol_16 : f32,
}

struct tint_symbol_63 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_65 : vec2f,
  /* @offset(72) */
  tint_symbol_66 : vec2f,
}

struct tint_symbol_70_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
}

struct tint_symbol_71_block {
  /* @offset(0) */
  inner : tint_symbol_67,
}

alias RTArr = array<f32>;

struct tint_symbol_72_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_74_block {
  /* @offset(0) */
  inner : f32,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_122_1 : vec3u;

var<private> tint_symbol_122_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_70 : tint_symbol_70_block;

@group(0) @binding(1) var<uniform> tint_symbol_71 : tint_symbol_71_block;

@group(0) @binding(2) var<storage> tint_symbol_72 : tint_symbol_72_block;

@group(0) @binding(3) var tint_symbol_73 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(4) var<uniform> tint_symbol_74 : tint_symbol_74_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_saturate(v_1 : vec4f) -> vec4f {
  return clamp(v_1, vec4f(), vec4f(1.0f));
}

fn tint_symbol_17(tint_symbol_18 : tint_symbol, tint_symbol_19 : tint_symbol) -> tint_symbol {
  var tint_symbol_20 = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  tint_symbol_20.tint_symbol_1 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_1) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_2 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_2) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_3 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_3) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_4 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_4) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_5 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_5) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_6 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_6) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_7 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_7) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_11)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_8 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_8) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_9 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_9) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_10 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_10) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_11 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_11) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_12 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_12) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_13 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_13) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_14 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_14) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_1));
  tint_symbol_20.tint_symbol_15 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_15) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_6)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_16 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_16) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_1));
  let x_845 = tint_symbol_20;
  return x_845;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_881 = tint_symbol_21(tint_symbol_24);
  let x_882 = tint_symbol_17(tint_symbol_23, x_881);
  let x_883 = tint_symbol_17(tint_symbol_24, x_882);
  return x_883;
}

fn tint_symbol_25(tint_symbol_24_1 : tint_symbol) -> f32 {
  var tint_symbol_26 = 0.0f;
  tint_symbol_26 = 0.0f;
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_1 * tint_symbol_24_1.tint_symbol_1));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_2 * tint_symbol_24_1.tint_symbol_2));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_3 * tint_symbol_24_1.tint_symbol_3));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_4 * tint_symbol_24_1.tint_symbol_4));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_5 * tint_symbol_24_1.tint_symbol_5));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_6 * tint_symbol_24_1.tint_symbol_6));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_7 * tint_symbol_24_1.tint_symbol_7));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_8 * tint_symbol_24_1.tint_symbol_8));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_9 * tint_symbol_24_1.tint_symbol_9));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_10 * tint_symbol_24_1.tint_symbol_10));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_11 * tint_symbol_24_1.tint_symbol_11));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_12 * tint_symbol_24_1.tint_symbol_12));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_13 * tint_symbol_24_1.tint_symbol_13));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_14 * tint_symbol_24_1.tint_symbol_14));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_15 * tint_symbol_24_1.tint_symbol_15));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_16 * tint_symbol_24_1.tint_symbol_16));
  let x_971 = tint_symbol_26;
  return sqrt(x_971);
}

fn tint_symbol_27(tint_symbol_28 : vec3f) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, (-(tint_symbol_28.x) / 2.0f), (-(tint_symbol_28.y) / 2.0f), (-(tint_symbol_28.z) / 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_29(tint_symbol_24_2 : tint_symbol) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, tint_symbol_24_2.tint_symbol_5, tint_symbol_24_2.tint_symbol_6, tint_symbol_24_2.tint_symbol_7, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_30(tint_symbol_28_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, tint_symbol_28_1.z, -(tint_symbol_28_1.y), tint_symbol_28_1.x, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_34(tint_symbol_24_3 : tint_symbol) -> tint_symbol {
  var tint_return_flag = false;
  var tint_return_value = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  let x_1010 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1010 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1010), (tint_symbol_24_3.tint_symbol_2 / x_1010), (tint_symbol_24_3.tint_symbol_3 / x_1010), (tint_symbol_24_3.tint_symbol_4 / x_1010), (tint_symbol_24_3.tint_symbol_5 / x_1010), (tint_symbol_24_3.tint_symbol_6 / x_1010), (tint_symbol_24_3.tint_symbol_7 / x_1010), (tint_symbol_24_3.tint_symbol_8 / x_1010), (tint_symbol_24_3.tint_symbol_9 / x_1010), (tint_symbol_24_3.tint_symbol_10 / x_1010), (tint_symbol_24_3.tint_symbol_11 / x_1010), (tint_symbol_24_3.tint_symbol_12 / x_1010), (tint_symbol_24_3.tint_symbol_13 / x_1010), (tint_symbol_24_3.tint_symbol_14 / x_1010), (tint_symbol_24_3.tint_symbol_15 / x_1010), (tint_symbol_24_3.tint_symbol_16 / x_1010));
  }
  let x_1053 = tint_return_value;
  return x_1053;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1059 = tint_symbol_30(tint_symbol_28_2);
  let x_1060 = tint_symbol_34(x_1059);
  return tint_symbol(0.0f, x_1060.tint_symbol_2, x_1060.tint_symbol_3, x_1060.tint_symbol_4, -(((-(x_1060.tint_symbol_3) * tint_symbol_1.z) - (x_1060.tint_symbol_2 * tint_symbol_1.y))), -(((x_1060.tint_symbol_2 * tint_symbol_1.x) - (x_1060.tint_symbol_4 * tint_symbol_1.z))), -(((x_1060.tint_symbol_4 * tint_symbol_1.y) + (x_1060.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1098 = sin((tint_symbol_36 / 2.0f));
  let x_1100 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1098 * x_1100.tint_symbol_2), (x_1098 * x_1100.tint_symbol_3), (x_1098 * x_1100.tint_symbol_4), (x_1098 * x_1100.tint_symbol_5), (x_1098 * x_1100.tint_symbol_6), (x_1098 * x_1100.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_40(tint_symbol_24_4 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_24_4.tint_symbol_1, tint_symbol_24_4.tint_symbol_2, tint_symbol_24_4.tint_symbol_3, tint_symbol_24_4.tint_symbol_4, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_41(tint_symbol_23_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, -(tint_symbol_23_1.z), tint_symbol_23_1.y, -(tint_symbol_23_1.x), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_42(tint_symbol_23_2 : tint_symbol) -> vec3f {
  return vec3f((-(tint_symbol_23_2.tint_symbol_11) / tint_symbol_23_2.tint_symbol_8), (tint_symbol_23_2.tint_symbol_10 / tint_symbol_23_2.tint_symbol_8), (-(tint_symbol_23_2.tint_symbol_9) / tint_symbol_23_2.tint_symbol_8));
}

fn tint_symbol_43(tint_symbol_32 : vec3f, tint_symbol_28_4 : f32) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, tint_symbol_32.x, tint_symbol_32.y, tint_symbol_32.z, -(tint_symbol_28_4), 0.0f);
}

fn tint_symbol_44(tint_symbol_45 : vec3f, tint_symbol_46 : vec3f, tint_symbol_47 : vec3f) -> tint_symbol {
  let x_1264 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1264;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1293 : bool;
  var x_1294 : bool;
  var x_1299 : bool;
  var x_1300 : bool;
  var x_1305 : bool;
  var x_1306 : bool;
  let x_1273 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1279 = tint_symbol_42(x_1273);
  tint_symbol_58.tint_symbol_23 = x_1279;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1273.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1288 = tint_symbol_58.tint_symbol_53;
  x_1294 = x_1288;
  if (x_1288) {
    x_1293 = (abs(x_1273.tint_symbol_9) <= 0.00000000999999993923f);
    x_1294 = x_1293;
  }
  x_1300 = x_1294;
  if (x_1294) {
    x_1299 = (abs(x_1273.tint_symbol_10) <= 0.00000000999999993923f);
    x_1300 = x_1299;
  }
  x_1306 = x_1300;
  if (x_1300) {
    x_1305 = (abs(x_1273.tint_symbol_11) <= 0.00000000999999993923f);
    x_1306 = x_1305;
  }
  tint_symbol_58.tint_symbol_54 = x_1306;
  let x_1307 = tint_symbol_58;
  return x_1307;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1313 = tint_symbol_41(tint_symbol_23_3);
  let x_1314 = tint_symbol_22(x_1313, tint_symbol_24_5);
  let x_1315 = tint_symbol_42(x_1314);
  return x_1315;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1320 = tint_symbol_40(tint_symbol_24_6);
  let x_1321 = tint_symbol_41(tint_symbol_28_5);
  let x_1322 = tint_symbol_22(x_1321, x_1320);
  let x_1323 = tint_symbol_42(x_1322);
  return x_1323;
}

fn tint_symbol_75(tint_symbol_28_6 : vec3f) -> vec3f {
  var tint_symbol_76 = vec3f();
  let x_1331 = tint_symbol_70.inner.tint_symbol_64;
  let x_1328 = tint_symbol_61(tint_symbol_28_6, x_1331);
  tint_symbol_76 = x_1328;
  let x_1334 = tint_symbol_76;
  return x_1334;
}

fn tint_symbol_77(tint_symbol_78 : vec3f) -> vec3f {
  var tint_symbol_76_1 = vec3f();
  let x_1340 = tint_symbol_70.inner.tint_symbol_64;
  let x_1338 = tint_symbol_60(tint_symbol_78, x_1340);
  tint_symbol_76_1 = x_1338;
  let x_1342 = tint_symbol_76_1;
  return x_1342;
}

const x_1353 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_79(tint_symbol_80 : vec2i) {
  var tint_symbol_81 = vec4f();
  tint_symbol_81 = x_1353;
  let x_1356 = tint_symbol_81;
  textureStore(tint_symbol_73, tint_symbol_80, x_1356);
  return;
}

fn tint_symbol_82(tint_symbol_83 : vec2f, tint_symbol_84 : f32) -> vec2f {
  var tint_symbol_85 = vec2f();
  tint_symbol_85 = tint_symbol_83;
  if ((tint_symbol_83.x < 0.0f)) {
    tint_symbol_85.x = tint_symbol_84;
  } else {
    if ((tint_symbol_84 < tint_symbol_83.x)) {
      tint_symbol_85.y = tint_symbol_83.x;
      tint_symbol_85.x = tint_symbol_84;
    } else {
      if ((tint_symbol_83.y < 0.0f)) {
        tint_symbol_85.y = tint_symbol_84;
      } else {
        if ((tint_symbol_84 < tint_symbol_83.y)) {
          tint_symbol_85.y = tint_symbol_84;
        }
      }
    }
  }
  let x_1390 = tint_symbol_85;
  return x_1390;
}

fn tint_symbol_86(tint_symbol_87 : f32, tint_symbol_88 : vec2f, tint_symbol_89 : f32, tint_symbol_90 : f32, tint_symbol_23_4 : vec2f, tint_symbol_28_7 : vec2f, tint_symbol_91 : vec2f) -> vec2f {
  var tint_symbol_92 = vec2f();
  tint_symbol_92 = tint_symbol_91;
  if ((abs(tint_symbol_90) > 0.00000000999999993923f)) {
    var x_1407 : f32;
    var x_1421 : bool;
    var x_1422 : bool;
    var x_1428 : bool;
    var x_1429 : bool;
    var x_1434 : bool;
    var x_1435 : bool;
    x_1407 = ((tint_symbol_87 - tint_symbol_89) / tint_symbol_90);
    if ((x_1407 > 0.0f)) {
      let x_1412 = (tint_symbol_23_4 + (tint_symbol_28_7 * x_1407));
      let x_1416 = (-(tint_symbol_88.x) < x_1412.x);
      x_1422 = x_1416;
      if (x_1416) {
        x_1421 = (x_1412.x < tint_symbol_88.x);
        x_1422 = x_1421;
      }
      x_1429 = x_1422;
      if (x_1422) {
        x_1428 = (-(tint_symbol_88.y) < x_1412.y);
        x_1429 = x_1428;
      }
      x_1435 = x_1429;
      if (x_1429) {
        x_1434 = (x_1412.y < tint_symbol_88.y);
        x_1435 = x_1434;
      }
      if (x_1435) {
        let x_1439 = tint_symbol_92;
        let x_1438 = tint_symbol_82(x_1439, x_1407);
        tint_symbol_92 = x_1438;
      }
    }
  }
  let x_1440 = tint_symbol_92;
  return x_1440;
}

fn tint_symbol_94(tint_symbol_23_5 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_95 = vec2f();
  var x_1467 = vec4f();
  tint_symbol_95 = vec2f(-1.0f);
  let x_1466 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1476 = tint_symbol_95;
  let x_1469 = tint_symbol_86(x_1466.z, x_1466.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1476);
  tint_symbol_95 = x_1469;
  let x_1485 = tint_symbol_95;
  let x_1477 = tint_symbol_86(-(x_1466.z), x_1466.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1485);
  tint_symbol_95 = x_1477;
  let x_1494 = tint_symbol_95;
  let x_1486 = tint_symbol_86(-(x_1466.x), x_1466.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1494);
  tint_symbol_95 = x_1486;
  let x_1502 = tint_symbol_95;
  let x_1495 = tint_symbol_86(x_1466.x, x_1466.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1502);
  tint_symbol_95 = x_1495;
  let x_1510 = tint_symbol_95;
  let x_1503 = tint_symbol_86(x_1466.y, x_1466.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1510);
  tint_symbol_95 = x_1503;
  let x_1519 = tint_symbol_95;
  let x_1511 = tint_symbol_86(-(x_1466.y), x_1466.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1519);
  tint_symbol_95 = x_1511;
  let x_1520 = tint_symbol_95;
  return x_1520;
}

fn tint_symbol_96(tint_symbol_97 : vec4f, tint_symbol_98 : vec4f, tint_symbol_84_1 : f32) -> vec4f {
  return ((tint_symbol_97 * tint_symbol_84_1) + (tint_symbol_98 * (1.0f - tint_symbol_84_1)));
}

fn tint_symbol_99(tint_symbol_100 : f32, tint_symbol_91_1 : f32, tint_symbol_87_1 : f32, tint_symbol_101 : vec2f, tint_symbol_102 : vec2f, tint_symbol_89_1 : f32, tint_symbol_90_1 : f32, tint_symbol_23_6 : vec2f, tint_symbol_28_9 : vec2f) -> f32 {
  var tint_symbol_92_1 = 0.0f;
  var x_1559 : bool;
  var x_1560 : bool;
  var x_1565 : bool;
  var x_1566 : bool;
  var x_1571 : bool;
  var x_1572 : bool;
  tint_symbol_92_1 = tint_symbol_91_1;
  if ((abs(tint_symbol_90_1) > 0.00000000999999993923f)) {
    let x_1549 = ((tint_symbol_87_1 - tint_symbol_89_1) / tint_symbol_90_1);
    let x_1551 = (tint_symbol_23_6 + (tint_symbol_28_9 * x_1549));
    let x_1554 = (tint_symbol_101.x < x_1551.x);
    x_1560 = x_1554;
    if (x_1554) {
      x_1559 = (x_1551.x < tint_symbol_102.x);
      x_1560 = x_1559;
    }
    x_1566 = x_1560;
    if (x_1560) {
      x_1565 = (tint_symbol_101.y < x_1551.y);
      x_1566 = x_1565;
    }
    x_1572 = x_1566;
    if (x_1566) {
      x_1571 = (x_1551.y < tint_symbol_102.y);
      x_1572 = x_1571;
    }
    var x_1579 : bool;
    var x_1580 : bool;
    if (x_1572) {
      let x_1575 = (x_1549 > tint_symbol_100);
      x_1580 = x_1575;
      if (x_1575) {
        x_1579 = (tint_symbol_92_1 < x_1549);
        x_1580 = x_1579;
      }
      if (x_1580) {
        tint_symbol_92_1 = x_1549;
      }
    }
  }
  let x_1583 = tint_symbol_92_1;
  return x_1583;
}

const x_1592 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_103(tint_symbol_80_1 : vec2i, tint_symbol_23_7 : vec3f, tint_symbol_28_10 : vec3f) {
  var tint_symbol_104 = vec2f();
  var tint_symbol_81_1 = vec4f();
  var tint_symbol_106 = 0.0f;
  var x_1631 = vec3f();
  var tint_symbol_108 = 0.0f;
  var x_1649 = vec3f();
  var tint_symbol_101_1 = vec3f();
  var tint_symbol_102_1 = vec3f();
  var x_1601 : bool;
  var x_1602 : bool;
  let x_1590 = tint_symbol_94(tint_symbol_23_7, tint_symbol_28_10);
  tint_symbol_104 = x_1590;
  tint_symbol_81_1 = x_1592;
  let x_1596 = (tint_symbol_104.y < 0.0f);
  x_1602 = x_1596;
  if (x_1596) {
    x_1601 = (tint_symbol_104.x > 0.0f);
    x_1602 = x_1601;
  }
  if (x_1602) {
    tint_symbol_104.y = tint_symbol_104.x;
    tint_symbol_104.x = 0.0f;
  }
  if ((tint_symbol_104.x >= 0.0f)) {
    tint_symbol_106 = (tint_symbol_104.x + 0.00000000999999993923f);
    let x_1630 = (tint_symbol_71.inner.tint_symbol_69.xyz / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_108 = 0.0f;
    loop {
      if (!((tint_symbol_106 < tint_symbol_104.y))) {
        break;
      }
      let x_1656 = (((tint_symbol_23_7 + (tint_symbol_28_10 * tint_symbol_106)) + ((x_1630 / vec3f(2.0f)) * tint_symbol_71.inner.tint_symbol_68.xyz)) / x_1630);
      let x_1657 = tint_ftoi(x_1656.z);
      let x_1661 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1663 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1659 = tint_ftoi((x_1661 * x_1663));
      let x_1666 = tint_ftoi(x_1656.y);
      let x_1670 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1668 = tint_ftoi(x_1670);
      let x_1673 = tint_ftoi(x_1656.x);
      tint_symbol_108 = max(tint_symbol_108, tint_symbol_72.inner[(((x_1657 * x_1659) + (x_1666 * x_1668)) + x_1673)]);
      tint_symbol_101_1 = floor(x_1656);
      tint_symbol_102_1 = ceil(x_1656);
      let x_1687 = tint_symbol_104.x;
      let x_1688 = tint_symbol_106;
      let x_1690 = tint_symbol_101_1.z;
      let x_1691 = tint_symbol_101_1;
      let x_1693 = tint_symbol_102_1;
      let x_1685 = tint_symbol_99(x_1687, x_1688, x_1690, x_1691.xy, x_1693.xy, tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_106 = x_1685;
      let x_1701 = tint_symbol_104.x;
      let x_1702 = tint_symbol_106;
      let x_1704 = tint_symbol_102_1.z;
      let x_1705 = tint_symbol_101_1;
      let x_1707 = tint_symbol_102_1;
      let x_1699 = tint_symbol_99(x_1701, x_1702, x_1704, x_1705.xy, x_1707.xy, tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_106 = x_1699;
      let x_1715 = tint_symbol_104.x;
      let x_1716 = tint_symbol_106;
      let x_1718 = tint_symbol_101_1.x;
      let x_1719 = tint_symbol_101_1;
      let x_1721 = tint_symbol_102_1;
      let x_1713 = tint_symbol_99(x_1715, x_1716, x_1718, x_1719.yz, x_1721.yz, tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      tint_symbol_106 = x_1713;
      let x_1729 = tint_symbol_104.x;
      let x_1730 = tint_symbol_106;
      let x_1732 = tint_symbol_102_1.x;
      let x_1733 = tint_symbol_101_1;
      let x_1735 = tint_symbol_102_1;
      let x_1727 = tint_symbol_99(x_1729, x_1730, x_1732, x_1733.yz, x_1735.yz, tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      tint_symbol_106 = x_1727;
      let x_1743 = tint_symbol_104.x;
      let x_1744 = tint_symbol_106;
      let x_1746 = tint_symbol_101_1.y;
      let x_1747 = tint_symbol_101_1;
      let x_1749 = tint_symbol_102_1;
      let x_1741 = tint_symbol_99(x_1743, x_1744, x_1746, x_1747.xz, x_1749.xz, tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      tint_symbol_106 = x_1741;
      let x_1757 = tint_symbol_104.x;
      let x_1758 = tint_symbol_106;
      let x_1760 = tint_symbol_102_1.y;
      let x_1761 = tint_symbol_101_1;
      let x_1763 = tint_symbol_102_1;
      let x_1755 = tint_symbol_99(x_1757, x_1758, x_1760, x_1761.xz, x_1763.xz, tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      tint_symbol_106 = x_1755;
      tint_symbol_106 = (tint_symbol_106 + 0.00499999988824129105f);
    }
    tint_symbol_108 = (tint_symbol_108 / 4095.0f);
    tint_symbol_81_1 = vec4f(tint_symbol_108, tint_symbol_108, tint_symbol_108, 1.0f);
  } else {
    tint_symbol_81_1 = x_1353;
  }
  let x_1781 = tint_symbol_81_1;
  textureStore(tint_symbol_73, tint_symbol_80_1, x_1781);
  return;
}

fn tint_symbol_112(tint_symbol_80_2 : vec2i, tint_symbol_23_8 : vec3f, tint_symbol_28_11 : vec3f) {
  var tint_symbol_104_1 = vec2f();
  var tint_symbol_106_1 = 0.0f;
  var x_1811 = vec3f();
  var x_1827 = vec3f();
  var tint_symbol_81_2 = vec4f();
  var tint_symbol_101_2 = vec3f();
  var tint_symbol_102_2 = vec3f();
  let x_1787 = tint_symbol_94(tint_symbol_23_8, tint_symbol_28_11);
  tint_symbol_104_1 = x_1787;
  tint_symbol_106_1 = (tint_symbol_104_1.x + 0.01999999955296516418f);
  let x_1810 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1826 = ((vec3f(1.0f) * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  tint_symbol_81_2 = x_1353;
  loop {
    var x_1939 : bool;
    var x_1944 : bool;
    if (!((tint_symbol_106_1 < tint_symbol_104_1.y))) {
      break;
    }
    let x_1845 = (((tint_symbol_23_8 + (tint_symbol_28_11 * tint_symbol_106_1)) + x_1810) / x_1826);
    tint_symbol_101_2 = floor(x_1845);
    tint_symbol_102_2 = ceil(x_1845);
    let x_1852 = tint_symbol_104_1.x;
    let x_1853 = tint_symbol_106_1;
    let x_1855 = tint_symbol_101_2.z;
    let x_1856 = tint_symbol_101_2;
    let x_1858 = tint_symbol_102_2;
    let x_1850 = tint_symbol_99(x_1852, x_1853, x_1855, x_1856.xy, x_1858.xy, tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
    tint_symbol_106_1 = x_1850;
    let x_1866 = tint_symbol_104_1.x;
    let x_1867 = tint_symbol_106_1;
    let x_1869 = tint_symbol_102_2.z;
    let x_1870 = tint_symbol_101_2;
    let x_1872 = tint_symbol_102_2;
    let x_1864 = tint_symbol_99(x_1866, x_1867, x_1869, x_1870.xy, x_1872.xy, tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
    tint_symbol_106_1 = x_1864;
    let x_1880 = tint_symbol_104_1.x;
    let x_1881 = tint_symbol_106_1;
    let x_1883 = tint_symbol_101_2.x;
    let x_1884 = tint_symbol_101_2;
    let x_1886 = tint_symbol_102_2;
    let x_1878 = tint_symbol_99(x_1880, x_1881, x_1883, x_1884.yz, x_1886.yz, tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
    tint_symbol_106_1 = x_1878;
    let x_1894 = tint_symbol_104_1.x;
    let x_1895 = tint_symbol_106_1;
    let x_1897 = tint_symbol_102_2.x;
    let x_1898 = tint_symbol_101_2;
    let x_1900 = tint_symbol_102_2;
    let x_1892 = tint_symbol_99(x_1894, x_1895, x_1897, x_1898.yz, x_1900.yz, tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
    tint_symbol_106_1 = x_1892;
    let x_1908 = tint_symbol_104_1.x;
    let x_1909 = tint_symbol_106_1;
    let x_1911 = tint_symbol_101_2.y;
    let x_1912 = tint_symbol_101_2;
    let x_1914 = tint_symbol_102_2;
    let x_1906 = tint_symbol_99(x_1908, x_1909, x_1911, x_1912.xz, x_1914.xz, tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
    tint_symbol_106_1 = x_1906;
    let x_1922 = tint_symbol_104_1.x;
    let x_1923 = tint_symbol_106_1;
    let x_1925 = tint_symbol_102_2.y;
    let x_1926 = tint_symbol_101_2;
    let x_1928 = tint_symbol_102_2;
    let x_1920 = tint_symbol_99(x_1922, x_1923, x_1925, x_1926.xz, x_1928.xz, tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
    tint_symbol_106_1 = x_1920;
    let x_1934 = all((x_1845 >= vec3f()));
    x_1944 = x_1934;
    if (x_1934) {
      x_1939 = all((x_1845 < tint_symbol_71.inner.tint_symbol_68.xyz));
      x_1944 = x_1939;
    }
    if (x_1944) {
      var x_1965 : i32;
      let x_1947 = tint_ftoi(x_1845.z);
      let x_1951 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1953 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1949 = tint_ftoi((x_1951 * x_1953));
      let x_1956 = tint_ftoi(x_1845.y);
      let x_1960 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1958 = tint_ftoi(x_1960);
      let x_1963 = tint_ftoi(x_1845.x);
      x_1965 = (((x_1947 * x_1949) + (x_1956 * x_1958)) + x_1963);
      let x_1968 = tint_symbol_72.inner[x_1965];
      let x_1966 = tint_ftoi(x_1968);
      if ((x_1966 != 0i)) {
        if ((tint_symbol_72.inner[x_1965] < (tint_symbol_71.inner.tint_symbol_68.y * 0.10000000149011611938f))) {
          tint_symbol_81_2 = vec4f(1.0f, 0.98039215803146362305f, 0.98039215803146362305f, 1.0f);
        } else {
          if ((tint_symbol_72.inner[x_1965] < (tint_symbol_71.inner.tint_symbol_68.y * 0.34999999403953552246f))) {
            tint_symbol_81_2 = vec4f(0.50588238239288330078f, 0.54509806632995605469f, 0.60000002384185791016f, 1.0f);
          } else {
            if ((tint_symbol_72.inner[x_1965] < (tint_symbol_71.inner.tint_symbol_68.y * 0.60000002384185791016f))) {
              tint_symbol_81_2 = vec4f(0.0f, 0.6666666865348815918f, 0.0f, 1.0f);
            } else {
              tint_symbol_81_2 = vec4f(0.3764705955982208252f, 0.69411766529083251953f, 0.78039216995239257812f, 1.0f);
            }
          }
        }
        break;
      }
    }
    tint_symbol_106_1 = (tint_symbol_106_1 + 0.00200000009499490261f);
  }
  let x_2018 = tint_symbol_81_2;
  textureStore(tint_symbol_73, tint_symbol_80_2, x_2018);
  return;
}

fn tint_symbol_114(tint_symbol_80_3 : vec2i, tint_symbol_23_9 : vec3f, tint_symbol_28_12 : vec3f) {
  var tint_symbol_104_2 = vec2f();
  var tint_symbol_81_3 = vec4f();
  var tint_symbol_115 = vec4f();
  var tint_symbol_116 = 0.0f;
  var tint_symbol_106_2 = 0.0f;
  var x_2048 = vec3f();
  var x_2065 = vec3f();
  var tint_symbol_101_3 = vec3f();
  var tint_symbol_102_3 = vec3f();
  var tint_symbol_117 = 0.0f;
  var tint_symbol_118 = 0.0f;
  var tint_symbol_119 = 0.0f;
  var tint_symbol_120 = 0.0f;
  let x_2024 = tint_symbol_94(tint_symbol_23_9, tint_symbol_28_12);
  tint_symbol_104_2 = x_2024;
  tint_symbol_81_3 = x_1592;
  tint_symbol_115 = vec4f(0.69999998807907104492f, 0.69999998807907104492f, 0.80000001192092895508f, 1.0f);
  tint_symbol_116 = 1.0f;
  tint_symbol_106_2 = (tint_symbol_104_2.x + 0.00200000009499490261f);
  let x_2047 = (tint_symbol_71.inner.tint_symbol_69.xyz / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  loop {
    var x_2186 : bool;
    var x_2191 : bool;
    if (!((tint_symbol_106_2 < tint_symbol_104_2.y))) {
      break;
    }
    let x_2072 = (((tint_symbol_23_9 + (tint_symbol_28_12 * tint_symbol_106_2)) + ((x_2047 / vec3f(2.0f)) * tint_symbol_71.inner.tint_symbol_68.xyz)) / x_2047);
    let x_2073 = tint_ftoi(x_2072.z);
    let x_2077 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2079 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2075 = tint_ftoi((x_2077 * x_2079));
    let x_2082 = tint_ftoi(x_2072.y);
    let x_2086 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2084 = tint_ftoi(x_2086);
    let x_2089 = tint_ftoi(x_2072.x);
    let x_2091 = (((x_2073 * x_2075) + (x_2082 * x_2084)) + x_2089);
    tint_symbol_101_3 = floor(x_2072);
    tint_symbol_102_3 = ceil(x_2072);
    tint_symbol_117 = tint_symbol_106_2;
    let x_2100 = tint_symbol_104_2.x;
    let x_2101 = tint_symbol_117;
    let x_2103 = tint_symbol_101_3.z;
    let x_2104 = tint_symbol_101_3;
    let x_2106 = tint_symbol_102_3;
    let x_2098 = tint_symbol_99(x_2100, x_2101, x_2103, x_2104.xy, x_2106.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
    tint_symbol_117 = x_2098;
    let x_2114 = tint_symbol_104_2.x;
    let x_2115 = tint_symbol_117;
    let x_2117 = tint_symbol_102_3.z;
    let x_2118 = tint_symbol_101_3;
    let x_2120 = tint_symbol_102_3;
    let x_2112 = tint_symbol_99(x_2114, x_2115, x_2117, x_2118.xy, x_2120.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
    tint_symbol_117 = x_2112;
    let x_2128 = tint_symbol_104_2.x;
    let x_2129 = tint_symbol_117;
    let x_2131 = tint_symbol_101_3.x;
    let x_2132 = tint_symbol_101_3;
    let x_2134 = tint_symbol_102_3;
    let x_2126 = tint_symbol_99(x_2128, x_2129, x_2131, x_2132.yz, x_2134.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
    tint_symbol_117 = x_2126;
    let x_2142 = tint_symbol_104_2.x;
    let x_2143 = tint_symbol_117;
    let x_2145 = tint_symbol_102_3.x;
    let x_2146 = tint_symbol_101_3;
    let x_2148 = tint_symbol_102_3;
    let x_2140 = tint_symbol_99(x_2142, x_2143, x_2145, x_2146.yz, x_2148.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
    tint_symbol_117 = x_2140;
    let x_2156 = tint_symbol_104_2.x;
    let x_2157 = tint_symbol_117;
    let x_2159 = tint_symbol_101_3.y;
    let x_2160 = tint_symbol_101_3;
    let x_2162 = tint_symbol_102_3;
    let x_2154 = tint_symbol_99(x_2156, x_2157, x_2159, x_2160.xz, x_2162.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
    tint_symbol_117 = x_2154;
    let x_2170 = tint_symbol_104_2.x;
    let x_2171 = tint_symbol_117;
    let x_2173 = tint_symbol_102_3.y;
    let x_2174 = tint_symbol_101_3;
    let x_2176 = tint_symbol_102_3;
    let x_2168 = tint_symbol_99(x_2170, x_2171, x_2173, x_2174.xz, x_2176.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
    tint_symbol_117 = x_2168;
    let x_2182 = all((x_2072 >= vec3f()));
    x_2191 = x_2182;
    if (x_2182) {
      x_2186 = all((x_2072 < tint_symbol_71.inner.tint_symbol_68.xyz));
      x_2191 = x_2186;
    }
    if (x_2191) {
      let x_2194 = tint_ftoi(x_2072.z);
      let x_2198 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2200 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_2196 = tint_ftoi((x_2198 * x_2200));
      let x_2203 = tint_ftoi(x_2072.y);
      let x_2207 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2205 = tint_ftoi(x_2207);
      let x_2210 = tint_ftoi(x_2072.x);
      tint_symbol_118 = tint_symbol_72.inner[(((x_2194 * x_2196) + (x_2203 * x_2205)) + x_2210)];
      tint_symbol_119 = clamp((tint_symbol_118 * 0.01999999955296516418f), 0.0f, 0.10000000149011611938f);
      tint_symbol_120 = (tint_symbol_119 * tint_symbol_116);
      tint_symbol_116 = (tint_symbol_116 - tint_symbol_120);
      tint_symbol_81_3 = (tint_symbol_81_3 + (tint_symbol_115 * tint_symbol_120));
      if ((tint_symbol_116 < 0.10000000149011611938f)) {
        break;
      }
    }
    tint_symbol_106_2 = (tint_symbol_117 + 0.00200000009499490261f);
  }
  let x_2239 = tint_symbol_81_3;
  let x_2238 = tint_saturate(x_2239);
  tint_symbol_81_3 = x_2238;
  if ((tint_symbol_116 > 0.10000000149011611938f)) {
    tint_symbol_81_3 = x_1353;
  } else {
    let x_2246 = tint_symbol_81_3;
    let x_2247 = tint_symbol_106_2;
    let x_2249 = tint_symbol_104_2.y;
    let x_2245 = tint_symbol_96(x_1353, x_2246, (x_2247 - x_2249));
    tint_symbol_81_3 = x_2245;
  }
  let x_2253 = tint_symbol_81_3;
  textureStore(tint_symbol_73, tint_symbol_80_3, x_2253);
  return;
}

const x_2275 = vec2f(2.0f);

fn tint_symbol_121_inner(tint_symbol_122 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_125 = vec3f();
  var x_2271 : bool;
  var x_2272 : bool;
  let x_2258 = bitcast<vec2i>(tint_symbol_122.xy);
  let x_2261 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_2266 = (x_2258.x < x_2261.x);
  x_2272 = x_2266;
  if (x_2266) {
    x_2271 = (x_2258.y < x_2261.y);
    x_2272 = x_2271;
  }
  if (x_2272) {
    let x_2280 = (x_2275 / tint_symbol_70.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_2258.x) + 0.5f) * x_2280.x) - 1.0f), (((f32(x_2258.y) + 0.5f) * x_2280.y) - 1.0f), 0.0f);
    tint_symbol_125 = vec3f(0.0f, 0.0f, 1.0f);
    let x_2298 = tint_symbol_37_1;
    let x_2297 = tint_symbol_77(x_2298);
    tint_symbol_37_1 = x_2297;
    let x_2300 = tint_symbol_125;
    let x_2299 = tint_symbol_75(x_2300);
    tint_symbol_125 = x_2299;
    if ((tint_symbol_74.inner == 0.0f)) {
      let x_2308 = tint_symbol_37_1;
      let x_2309 = tint_symbol_125;
      tint_symbol_103(x_2258, x_2308, x_2309);
    } else {
      if ((tint_symbol_74.inner == 1.0f)) {
        let x_2317 = tint_symbol_37_1;
        let x_2318 = tint_symbol_125;
        tint_symbol_114(x_2258, x_2317, x_2318);
      } else {
        let x_2320 = tint_symbol_37_1;
        let x_2321 = tint_symbol_125;
        tint_symbol_112(x_2258, x_2320, x_2321);
      }
    }
  }
  return;
}

fn tint_symbol_121_1() {
  let x_2326 = tint_symbol_122_1;
  tint_symbol_121_inner(x_2326);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_122_1_param : vec3u) {
  tint_symbol_122_1 = tint_symbol_122_1_param;
  tint_symbol_121_1();
}

fn tint_symbol_126_inner(tint_symbol_122_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_125_1 = vec3f();
  var x_2342 : bool;
  var x_2343 : bool;
  let x_2330 = bitcast<vec2i>(tint_symbol_122_3.xy);
  let x_2332 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_2337 = (x_2330.x < x_2332.x);
  x_2343 = x_2337;
  if (x_2337) {
    x_2342 = (x_2330.y < x_2332.y);
    x_2343 = x_2342;
  }
  if (x_2343) {
    let x_2353 = ((x_2275 / tint_symbol_70.inner.tint_symbol_66.xy) * tint_symbol_70.inner.tint_symbol_65.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_125_1 = vec3f((((f32(x_2330.x) + 0.5f) * x_2353.x) - tint_symbol_70.inner.tint_symbol_65.x), (((f32(x_2330.y) + 0.5f) * x_2353.y) - tint_symbol_70.inner.tint_symbol_65.y), 1.0f);
    let x_2374 = tint_symbol_37_2;
    let x_2373 = tint_symbol_77(x_2374);
    tint_symbol_37_2 = x_2373;
    let x_2376 = tint_symbol_125_1;
    let x_2375 = tint_symbol_75(x_2376);
    tint_symbol_125_1 = x_2375;
    if ((tint_symbol_74.inner == 0.0f)) {
      let x_2384 = tint_symbol_37_2;
      let x_2385 = tint_symbol_125_1;
      tint_symbol_103(x_2330, x_2384, x_2385);
    } else {
      if ((tint_symbol_74.inner == 1.0f)) {
        let x_2393 = tint_symbol_37_2;
        let x_2394 = tint_symbol_125_1;
        tint_symbol_114(x_2330, x_2393, x_2394);
      } else {
        let x_2396 = tint_symbol_37_2;
        let x_2397 = tint_symbol_125_1;
        tint_symbol_112(x_2330, x_2396, x_2397);
      }
    }
  }
  return;
}

fn tint_symbol_126_1() {
  let x_2401 = tint_symbol_122_2;
  tint_symbol_126_inner(x_2401);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_122_2_param : vec3u) {
  tint_symbol_122_2 = tint_symbol_122_2_param;
  tint_symbol_126_1();
}

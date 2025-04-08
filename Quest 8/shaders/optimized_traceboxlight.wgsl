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

struct tint_symbol_82_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
  /* @offset(32) */
  tint_symbol_70 : vec4f,
  /* @offset(48) */
  tint_symbol_71 : vec4f,
}

alias Arr = array<tint_symbol_67, 6u>;

struct tint_symbol_72 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_73 : vec4f,
  /* @offset(80) */
  tint_symbol_74 : Arr,
}

alias Arr_1 = array<tint_symbol_72, 2u>;

struct tint_symbol_83_block {
  /* @offset(0) */
  inner : Arr_1,
}

struct tint_symbol_75 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_77 : vec4f,
  /* @offset(32) */
  tint_symbol_78 : vec4f,
  /* @offset(48) */
  tint_symbol_79 : vec4f,
  /* @offset(64) */
  tint_symbol_80 : vec4f,
  /* @offset(80) */
  tint_symbol_81 : vec4u,
}

struct tint_symbol_85_block {
  /* @offset(0) */
  inner : tint_symbol_75,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

struct tint_symbol_117 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_118 : vec3f,
  /* @offset(28) */
  tint_symbol_119 : f32,
}

var<private> tint_symbol_131_1 : vec3u;

var<private> tint_symbol_131_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_82 : tint_symbol_82_block;

@group(0) @binding(1) var<uniform> tint_symbol_83 : tint_symbol_83_block;

@group(0) @binding(2) var tint_symbol_84 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(3) var<uniform> tint_symbol_85 : tint_symbol_85_block;

@group(0) @binding(4) var tint_symbol_86 : texture_2d<f32>;

@group(0) @binding(5) var tint_symbol_87 : texture_2d<f32>;

@group(0) @binding(6) var tint_symbol_88 : texture_2d<f32>;

@group(0) @binding(7) var tint_symbol_89 : texture_2d<f32>;

@group(0) @binding(8) var tint_symbol_90 : texture_2d<f32>;

@group(0) @binding(9) var tint_symbol_91 : texture_2d<f32>;

@group(0) @binding(10) var tint_symbol_92 : texture_2d<f32>;

@group(0) @binding(11) var tint_symbol_93 : texture_2d<f32>;

fn tint_ftoi(v : vec2f) -> vec2i {
  return select(vec2i(2147483647i), select(vec2i(v), vec2i(i32(-2147483648)), (v < vec2f(-2147483648.0f))), (v < vec2f(2147483520.0f)));
}

fn tint_ftoi_1(v_1 : f32) -> i32 {
  return select(2147483647i, select(i32(v_1), i32(-2147483648), (v_1 < -2147483648.0f)), (v_1 < 2147483520.0f));
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
  let x_862 = tint_symbol_20;
  return x_862;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_898 = tint_symbol_21(tint_symbol_24);
  let x_899 = tint_symbol_17(tint_symbol_23, x_898);
  let x_900 = tint_symbol_17(tint_symbol_24, x_899);
  return x_900;
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
  let x_989 = tint_symbol_26;
  return sqrt(x_989);
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
  let x_1029 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1029 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1029), (tint_symbol_24_3.tint_symbol_2 / x_1029), (tint_symbol_24_3.tint_symbol_3 / x_1029), (tint_symbol_24_3.tint_symbol_4 / x_1029), (tint_symbol_24_3.tint_symbol_5 / x_1029), (tint_symbol_24_3.tint_symbol_6 / x_1029), (tint_symbol_24_3.tint_symbol_7 / x_1029), (tint_symbol_24_3.tint_symbol_8 / x_1029), (tint_symbol_24_3.tint_symbol_9 / x_1029), (tint_symbol_24_3.tint_symbol_10 / x_1029), (tint_symbol_24_3.tint_symbol_11 / x_1029), (tint_symbol_24_3.tint_symbol_12 / x_1029), (tint_symbol_24_3.tint_symbol_13 / x_1029), (tint_symbol_24_3.tint_symbol_14 / x_1029), (tint_symbol_24_3.tint_symbol_15 / x_1029), (tint_symbol_24_3.tint_symbol_16 / x_1029));
  }
  let x_1072 = tint_return_value;
  return x_1072;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1078 = tint_symbol_30(tint_symbol_28_2);
  let x_1079 = tint_symbol_34(x_1078);
  return tint_symbol(0.0f, x_1079.tint_symbol_2, x_1079.tint_symbol_3, x_1079.tint_symbol_4, -(((-(x_1079.tint_symbol_3) * tint_symbol_1.z) - (x_1079.tint_symbol_2 * tint_symbol_1.y))), -(((x_1079.tint_symbol_2 * tint_symbol_1.x) - (x_1079.tint_symbol_4 * tint_symbol_1.z))), -(((x_1079.tint_symbol_4 * tint_symbol_1.y) + (x_1079.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1117 = sin((tint_symbol_36 / 2.0f));
  let x_1119 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1117 * x_1119.tint_symbol_2), (x_1117 * x_1119.tint_symbol_3), (x_1117 * x_1119.tint_symbol_4), (x_1117 * x_1119.tint_symbol_5), (x_1117 * x_1119.tint_symbol_6), (x_1117 * x_1119.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1283 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1283;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1312 : bool;
  var x_1313 : bool;
  var x_1318 : bool;
  var x_1319 : bool;
  var x_1324 : bool;
  var x_1325 : bool;
  let x_1292 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1298 = tint_symbol_42(x_1292);
  tint_symbol_58.tint_symbol_23 = x_1298;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1292.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1307 = tint_symbol_58.tint_symbol_53;
  x_1313 = x_1307;
  if (x_1307) {
    x_1312 = (abs(x_1292.tint_symbol_9) <= 0.00000000999999993923f);
    x_1313 = x_1312;
  }
  x_1319 = x_1313;
  if (x_1313) {
    x_1318 = (abs(x_1292.tint_symbol_10) <= 0.00000000999999993923f);
    x_1319 = x_1318;
  }
  x_1325 = x_1319;
  if (x_1319) {
    x_1324 = (abs(x_1292.tint_symbol_11) <= 0.00000000999999993923f);
    x_1325 = x_1324;
  }
  tint_symbol_58.tint_symbol_54 = x_1325;
  let x_1326 = tint_symbol_58;
  return x_1326;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1332 = tint_symbol_41(tint_symbol_23_3);
  let x_1333 = tint_symbol_22(x_1332, tint_symbol_24_5);
  let x_1334 = tint_symbol_42(x_1333);
  return x_1334;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1339 = tint_symbol_40(tint_symbol_24_6);
  let x_1340 = tint_symbol_41(tint_symbol_28_5);
  let x_1341 = tint_symbol_22(x_1340, x_1339);
  let x_1342 = tint_symbol_42(x_1341);
  return x_1342;
}

fn tint_symbol_94(tint_symbol_1_1 : vec3f, tint_symbol_28_6 : vec3f, tint_symbol_95 : tint_symbol_67, tint_symbol_96 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_58_1 = tint_symbol_52(vec3f(), false, false);
  var tint_symbol_97 = 0.0f;
  let x_1354 = tint_symbol_31(tint_symbol_1_1, tint_symbol_28_6);
  let x_1356 = tint_symbol_95.tint_symbol_68;
  let x_1358 = tint_symbol_95.tint_symbol_69;
  let x_1360 = tint_symbol_95.tint_symbol_70;
  let x_1355 = tint_symbol_44(x_1356.xyz, x_1358.xyz, x_1360.xyz);
  let x_1362 = tint_symbol_55(x_1354, x_1355);
  tint_symbol_58_1 = x_1362;
  if (tint_symbol_58_1.tint_symbol_53) {
    var x_1390 : bool;
    var x_1391 : bool;
    var x_1406 : bool;
    var x_1407 : bool;
    if ((abs((tint_symbol_95.tint_symbol_68.z - tint_symbol_95.tint_symbol_70.z)) <= 0.00000000999999993923f)) {
      let x_1383 = (tint_symbol_95.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
      x_1391 = x_1383;
      if (x_1383) {
        x_1390 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_95.tint_symbol_70.x);
        x_1391 = x_1390;
      }
      var x_1405 : bool;
      x_1407 = x_1391;
      if (x_1391) {
        let x_1398 = (tint_symbol_95.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
        x_1406 = x_1398;
        if (x_1398) {
          x_1405 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_95.tint_symbol_70.y);
          x_1406 = x_1405;
        }
        x_1407 = x_1406;
      }
      tint_symbol_58_1.tint_symbol_53 = x_1407;
    } else {
      var x_1430 : bool;
      var x_1431 : bool;
      var x_1446 : bool;
      var x_1447 : bool;
      if ((abs((tint_symbol_95.tint_symbol_68.y - tint_symbol_95.tint_symbol_70.y)) <= 0.00000000999999993923f)) {
        let x_1423 = (tint_symbol_95.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
        x_1431 = x_1423;
        if (x_1423) {
          x_1430 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_95.tint_symbol_70.x);
          x_1431 = x_1430;
        }
        var x_1445 : bool;
        x_1447 = x_1431;
        if (x_1431) {
          let x_1438 = (tint_symbol_95.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
          x_1446 = x_1438;
          if (x_1438) {
            x_1445 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_95.tint_symbol_70.z);
            x_1446 = x_1445;
          }
          x_1447 = x_1446;
        }
        tint_symbol_58_1.tint_symbol_53 = x_1447;
      } else {
        var x_1469 : bool;
        var x_1470 : bool;
        var x_1485 : bool;
        var x_1486 : bool;
        if ((abs((tint_symbol_95.tint_symbol_68.x - tint_symbol_95.tint_symbol_70.x)) <= 0.00000000999999993923f)) {
          let x_1462 = (tint_symbol_95.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
          x_1470 = x_1462;
          if (x_1462) {
            x_1469 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_95.tint_symbol_70.y);
            x_1470 = x_1469;
          }
          var x_1484 : bool;
          x_1486 = x_1470;
          if (x_1470) {
            let x_1477 = (tint_symbol_95.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
            x_1485 = x_1477;
            if (x_1477) {
              x_1484 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_95.tint_symbol_70.z);
              x_1485 = x_1484;
            }
            x_1486 = x_1485;
          }
          tint_symbol_58_1.tint_symbol_53 = x_1486;
        }
      }
    }
    if (tint_symbol_58_1.tint_symbol_53) {
      tint_symbol_97 = -1.0f;
      if ((tint_symbol_28_6.x > 0.00000000999999993923f)) {
        tint_symbol_97 = ((tint_symbol_58_1.tint_symbol_23.x - tint_symbol_1_1.x) / tint_symbol_28_6.x);
      } else {
        if ((tint_symbol_28_6.y > 0.00000000999999993923f)) {
          tint_symbol_97 = ((tint_symbol_58_1.tint_symbol_23.y - tint_symbol_1_1.y) / tint_symbol_28_6.y);
        } else {
          tint_symbol_97 = ((tint_symbol_58_1.tint_symbol_23.z - tint_symbol_1_1.z) / tint_symbol_28_6.z);
        }
      }
      if ((tint_symbol_97 < 0.0f)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_96, -1.0f);
      } else {
        if ((tint_symbol_96 < 0.0f)) {
          tint_return_flag_1 = true;
          tint_return_value_1 = vec2f(tint_symbol_97, 1.0f);
        } else {
          if ((tint_symbol_97 < tint_symbol_96)) {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_97, 1.0f);
          } else {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_96, -1.0f);
          }
        }
      }
    }
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_96, -1.0f);
  }
  let x_1546 = tint_return_value_1;
  return x_1546;
}

fn tint_symbol_98(tint_symbol_28_7 : vec3f, tint_symbol_99 : tint_symbol_72) -> vec3f {
  var tint_symbol_100 = vec3f();
  let x_1555 = tint_symbol_82.inner.tint_symbol_64;
  let x_1552 = tint_symbol_61(tint_symbol_28_7, x_1555);
  tint_symbol_100 = x_1552;
  let x_1558 = tint_symbol_100;
  let x_1559 = tint_symbol_21(tint_symbol_99.tint_symbol_64);
  let x_1561 = tint_symbol_61(x_1558, x_1559);
  tint_symbol_100 = x_1561;
  tint_symbol_100 = (tint_symbol_100 / tint_symbol_99.tint_symbol_73.xyz);
  let x_1566 = tint_symbol_100;
  return x_1566;
}

fn tint_symbol_101(tint_symbol_102 : vec3f, tint_symbol_99_1 : tint_symbol_72) -> vec3f {
  var tint_symbol_100_1 = vec3f();
  let x_1573 = tint_symbol_82.inner.tint_symbol_64;
  let x_1571 = tint_symbol_60(tint_symbol_102, x_1573);
  tint_symbol_100_1 = x_1571;
  let x_1575 = tint_symbol_100_1;
  let x_1576 = tint_symbol_21(tint_symbol_99_1.tint_symbol_64);
  let x_1578 = tint_symbol_60(x_1575, x_1576);
  tint_symbol_100_1 = x_1578;
  tint_symbol_100_1 = (tint_symbol_100_1 / tint_symbol_99_1.tint_symbol_73.xyz);
  let x_1583 = tint_symbol_100_1;
  return x_1583;
}

fn tint_symbol_103(tint_symbol_32_1 : vec3f, tint_symbol_99_2 : tint_symbol_72) -> vec3f {
  var tint_symbol_100_2 = vec3f();
  tint_symbol_100_2 = (tint_symbol_32_1 * tint_symbol_99_2.tint_symbol_73.xyz);
  let x_1593 = tint_symbol_100_2;
  let x_1592 = tint_symbol_61(x_1593, tint_symbol_99_2.tint_symbol_64);
  tint_symbol_100_2 = x_1592;
  let x_1596 = tint_symbol_100_2;
  return normalize(x_1596);
}

fn tint_symbol_104(tint_symbol_102_1 : vec3f, tint_symbol_99_3 : tint_symbol_72) -> vec3f {
  var tint_symbol_100_3 = vec3f();
  tint_symbol_100_3 = (tint_symbol_102_1 * tint_symbol_99_3.tint_symbol_73.xyz);
  let x_1606 = tint_symbol_100_3;
  let x_1605 = tint_symbol_60(x_1606, tint_symbol_99_3.tint_symbol_64);
  tint_symbol_100_3 = x_1605;
  let x_1608 = tint_symbol_100_3;
  return x_1608;
}

fn tint_symbol_105(tint_symbol_1_2 : vec3f, tint_symbol_28_8 : vec3f, tint_symbol_99_4 : tint_symbol_72) -> vec2f {
  var tint_symbol_106 = 0.0f;
  var tint_symbol_107 = 0.0f;
  var tint_symbol_108 = 0i;
  var var_for_index = array<tint_symbol_67, 6u>();
  tint_symbol_106 = -1.0f;
  tint_symbol_107 = -1.0f;
  tint_symbol_108 = 0i;
  loop {
    if (!((tint_symbol_108 < 6i))) {
      break;
    }
    var_for_index = tint_symbol_99_4.tint_symbol_74;
    let x_1637 = var_for_index[tint_symbol_108];
    let x_1638 = tint_symbol_106;
    let x_1633 = tint_symbol_94(tint_symbol_1_2, tint_symbol_28_8, x_1637, x_1638);
    if ((x_1633.y > 0.0f)) {
      tint_symbol_106 = x_1633.x;
      tint_symbol_107 = f32(tint_symbol_108);
    }

    continuing {
      tint_symbol_108 = (tint_symbol_108 + 1i);
    }
  }
  let x_1648 = tint_symbol_106;
  let x_1649 = tint_symbol_107;
  return vec2f(x_1648, x_1649);
}

const x_1654 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_110() -> vec4f {
  return x_1654;
}

fn tint_symbol_111(tint_symbol_107_1 : i32, tint_symbol_112 : vec3f, tint_symbol_113 : i32) -> vec4f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec4f();
  var tint_symbol_114 = vec4f();
  if ((tint_symbol_113 == 0i)) {
    switch(tint_symbol_107_1) {
      case 5i: {
        tint_symbol_114 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
      }
      case 4i: {
        tint_symbol_114 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
      }
      case 3i: {
        tint_symbol_114 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
      }
      case 2i: {
        tint_symbol_114 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
      }
      case 1i: {
        let x_1700 = vec2i(textureDimensions(tint_symbol_86, 0i));
        let x_1708 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1713 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1704 = tint_ftoi((((tint_symbol_112.xy - (x_1708.xy * -0.5f)) / x_1713.xy) * vec2f(bitcast<vec2u>(x_1700))));
        tint_symbol_114 = textureLoad(tint_symbol_86, x_1704, 0i);
      }
      case 0i: {
        let x_1679 = vec2i(textureDimensions(tint_symbol_86, 0i));
        let x_1690 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1695 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1684 = tint_ftoi((((tint_symbol_112.xy - (x_1690.xy * -0.5f)) / x_1695.xy) * vec2f(bitcast<vec2u>(x_1679))));
        tint_symbol_114 = textureLoad(tint_symbol_86, x_1684, 0i);
      }
      default: {
        tint_symbol_114 = x_1654;
      }
    }
    tint_return_flag_2 = true;
    tint_return_value_2 = tint_symbol_114;
  } else {
    switch(tint_symbol_107_1) {
      case 5i: {
        let x_1831 = vec2i(textureDimensions(tint_symbol_92, 0i));
        let x_1839 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1844 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1835 = tint_ftoi((((tint_symbol_112.xz - (x_1839.xz * -0.5f)) / x_1844.xz) * vec2f(bitcast<vec2u>(x_1831))));
        tint_symbol_114 = textureLoad(tint_symbol_92, x_1835, 0i);
      }
      case 4i: {
        let x_1813 = vec2i(textureDimensions(tint_symbol_89, 0i));
        let x_1821 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1826 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1817 = tint_ftoi((((tint_symbol_112.xz - (x_1821.xz * -0.5f)) / x_1826.xz) * vec2f(bitcast<vec2u>(x_1813))));
        tint_symbol_114 = textureLoad(tint_symbol_89, x_1817, 0i);
      }
      case 3i: {
        let x_1795 = vec2i(textureDimensions(tint_symbol_91, 0i));
        let x_1803 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1808 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1799 = tint_ftoi((((tint_symbol_112.yz - (x_1803.yz * -0.5f)) / x_1808.yz) * vec2f(bitcast<vec2u>(x_1795))));
        tint_symbol_114 = textureLoad(tint_symbol_91, x_1799, 0i);
      }
      case 2i: {
        let x_1777 = vec2i(textureDimensions(tint_symbol_88, 0i));
        let x_1785 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1790 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1781 = tint_ftoi((((tint_symbol_112.yz - (x_1785.yz * -0.5f)) / x_1790.yz) * vec2f(bitcast<vec2u>(x_1777))));
        tint_symbol_114 = textureLoad(tint_symbol_88, x_1781, 0i);
      }
      case 1i: {
        let x_1759 = vec2i(textureDimensions(tint_symbol_93, 0i));
        let x_1767 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1772 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1763 = tint_ftoi((((tint_symbol_112.xy - (x_1767.xy * -0.5f)) / x_1772.xy) * vec2f(bitcast<vec2u>(x_1759))));
        tint_symbol_114 = textureLoad(tint_symbol_93, x_1763, 0i);
      }
      case 0i: {
        let x_1741 = vec2i(textureDimensions(tint_symbol_90, 0i));
        let x_1749 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1754 = tint_symbol_83.inner[tint_symbol_113].tint_symbol_73;
        let x_1745 = tint_ftoi((((tint_symbol_112.xy - (x_1749.xy * -0.5f)) / x_1754.xy) * vec2f(bitcast<vec2u>(x_1741))));
        tint_symbol_114 = textureLoad(tint_symbol_90, x_1745, 0i);
      }
      default: {
        tint_symbol_114 = x_1654;
      }
    }
    tint_return_flag_2 = true;
    tint_return_value_2 = tint_symbol_114;
  }
  let x_1849 = tint_return_value_2;
  return x_1849;
}

const x_1930 = vec3f(0.0f, 1.0f, 0.0f);

const x_1929 = vec3f(0.0f, -1.0f, 0.0f);

const x_1928 = vec3f(-1.0f, 0.0f, 0.0f);

const x_1927 = vec3f(1.0f, 0.0f, 0.0f);

const x_1940 = vec3f(0.0f, 0.0f, 1.0f);

fn tint_symbol_116(tint_symbol_107_2 : i32, tint_symbol_112_1 : vec3f, tint_symbol_113_1 : i32) -> vec3f {
  var tint_return_flag_3 = false;
  var tint_return_value_3 = vec3f();
  var x_1891 = vec3f();
  var tint_symbol_114_1 = vec3f();
  var x_1921 = vec3f();
  var tint_symbol_114_2 = vec3f();
  if ((tint_symbol_113_1 == 0i)) {
    switch(tint_symbol_107_2) {
      case 5i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1930;
      }
      case 4i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1929;
      }
      case 3i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1928;
      }
      case 2i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1927;
      }
      case 1i: {
        let x_1902 = vec2i(textureDimensions(tint_symbol_87, 0i));
        let x_1910 = tint_symbol_83.inner[tint_symbol_113_1].tint_symbol_73;
        let x_1915 = tint_symbol_83.inner[tint_symbol_113_1].tint_symbol_73;
        let x_1906 = tint_ftoi((((tint_symbol_112_1.xy - (x_1910.xy * -0.5f)) / x_1915.xy) * vec2f(bitcast<vec2u>(x_1902))));
        tint_symbol_114_2 = (textureLoad(tint_symbol_87, x_1906, 0i).xyz - vec3f(0.5f));
        tint_symbol_114_2 = normalize(tint_symbol_114_2);
        tint_return_flag_3 = true;
        tint_return_value_3 = tint_symbol_114_2;
      }
      case 0i: {
        let x_1871 = vec2i(textureDimensions(tint_symbol_87, 0i));
        let x_1879 = tint_symbol_83.inner[tint_symbol_113_1].tint_symbol_73;
        let x_1884 = tint_symbol_83.inner[tint_symbol_113_1].tint_symbol_73;
        let x_1875 = tint_ftoi((((tint_symbol_112_1.xy - (x_1879.xy * -0.5f)) / x_1884.xy) * vec2f(bitcast<vec2u>(x_1871))));
        tint_symbol_114_1 = (textureLoad(tint_symbol_87, x_1875, 0i).xyz - vec3f(0.5f));
        tint_symbol_114_1 = normalize(tint_symbol_114_1);
        tint_symbol_114_1.z = (tint_symbol_114_1.z * -1.0f);
        tint_return_flag_3 = true;
        tint_return_value_3 = tint_symbol_114_1;
      }
      default: {
        tint_return_flag_3 = true;
        tint_return_value_3 = vec3f();
      }
    }
  } else {
    switch(tint_symbol_107_2) {
      case 5i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1930;
      }
      case 4i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1929;
      }
      case 3i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1928;
      }
      case 2i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1927;
      }
      case 1i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = x_1940;
      }
      case 0i: {
        tint_return_flag_3 = true;
        tint_return_value_3 = vec3f(0.0f, 0.0f, -1.0f);
      }
      default: {
        tint_return_flag_3 = true;
        tint_return_value_3 = vec3f();
      }
    }
  }
  let x_1941 = tint_return_value_3;
  return x_1941;
}

fn tint_symbol_120(tint_symbol_121 : vec3f, tint_symbol_122 : vec3f, tint_symbol_112_2 : vec3f, tint_symbol_123 : vec3f) -> tint_symbol_117 {
  var tint_return_flag_4 = false;
  var tint_return_value_4 = tint_symbol_117(vec4f(), vec3f(), 0.0f);
  var tint_symbol_76 = vec4f();
  var tint_symbol_119 = 0.0f;
  var x_1985 = vec4f();
  var tint_symbol_125 = vec3f();
  var tint_symbol_100_4 = tint_symbol_117(vec4f(), vec3f(), 0.0f);
  var tint_symbol_76_1 = vec4f();
  var tint_symbol_125_1 = vec3f();
  var tint_symbol_100_5 = tint_symbol_117(vec4f(), vec3f(), 0.0f);
  var tint_symbol_76_2 = vec4f();
  var tint_symbol_119_1 = 0.0f;
  var x_2053 = vec4f();
  var tint_symbol_125_2 = vec3f();
  var tint_symbol_100_6 = tint_symbol_117(vec4f(), vec3f(), 0.0f);
  if ((tint_symbol_85.inner.tint_symbol_81.y == 0u)) {
    tint_symbol_76 = tint_symbol_85.inner.tint_symbol_76;
    tint_symbol_119 = length((tint_symbol_112_2 - tint_symbol_121));
    tint_symbol_76 = (tint_symbol_76 / vec4f(((tint_symbol_85.inner.tint_symbol_79[0i] + (tint_symbol_119 * tint_symbol_85.inner.tint_symbol_79.y)) + ((tint_symbol_119 * tint_symbol_119) * tint_symbol_85.inner.tint_symbol_79.z))));
    tint_symbol_125 = normalize((tint_symbol_112_2 - tint_symbol_121));
    tint_symbol_100_4.tint_symbol_76 = (tint_symbol_76 * max(dot(tint_symbol_125, -(tint_symbol_123)), 0.0f));
    tint_symbol_100_4.tint_symbol_118 = tint_symbol_125;
    tint_symbol_100_4.tint_symbol_119 = dot((tint_symbol_112_2 - tint_symbol_121), (tint_symbol_112_2 - tint_symbol_121));
    tint_return_flag_4 = true;
    tint_return_value_4 = tint_symbol_100_4;
  } else {
    if ((tint_symbol_85.inner.tint_symbol_81.y == 1u)) {
      tint_symbol_76_1 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_125_1 = normalize(tint_symbol_122);
      tint_symbol_100_5.tint_symbol_76 = (tint_symbol_76_1 * max(dot(tint_symbol_125_1, -(tint_symbol_123)), 0.0f));
      tint_symbol_100_5.tint_symbol_118 = tint_symbol_125_1;
      tint_symbol_100_5.tint_symbol_119 = dot((tint_symbol_112_2 - tint_symbol_121), (tint_symbol_112_2 - tint_symbol_121));
      tint_return_flag_4 = true;
      tint_return_value_4 = tint_symbol_100_5;
    } else {
      tint_symbol_76_2 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_119_1 = length((tint_symbol_112_2 - tint_symbol_121));
      tint_symbol_76_2 = (tint_symbol_76_2 / vec4f(((tint_symbol_85.inner.tint_symbol_79[0i] + (tint_symbol_119_1 * tint_symbol_85.inner.tint_symbol_79.y)) + ((tint_symbol_119_1 * tint_symbol_119_1) * tint_symbol_85.inner.tint_symbol_79.z))));
      tint_symbol_125_2 = normalize((tint_symbol_112_2 - tint_symbol_121));
      if ((dot(tint_symbol_85.inner.tint_symbol_78.xyz, tint_symbol_125_2) > cos(tint_symbol_85.inner.tint_symbol_80[0i]))) {
        tint_symbol_100_6.tint_symbol_76 = (tint_symbol_76_2 * max(pow(dot(tint_symbol_125_2, -(tint_symbol_123)), tint_symbol_85.inner.tint_symbol_80.y), 0.0f));
        tint_symbol_100_6.tint_symbol_118 = tint_symbol_125_2;
      }
      tint_symbol_100_6.tint_symbol_119 = dot((tint_symbol_112_2 - tint_symbol_121), (tint_symbol_112_2 - tint_symbol_121));
      tint_return_flag_4 = true;
      tint_return_value_4 = tint_symbol_100_6;
    }
  }
  let x_2087 = tint_return_value_4;
  return x_2087;
}

fn tint_symbol_126(tint_symbol_114_3 : vec4f, tint_symbol_127 : f32) -> vec4f {
  var x_2096 = vec4f();
  let x_2093 = (1.0f / tint_symbol_127);
  return (round((tint_symbol_114_3 / vec4f(x_2093))) * x_2093);
}

const x_2120 = vec2f(2.0f);

const x_2144 = vec2f(1000000.0f, 0.0f);

const x_2208 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

const x_2262 = vec4f(1.0f);

const x_2298 = vec4f(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f, 1.0f);

fn tint_symbol_130_inner(tint_symbol_131 : vec3u) {
  var tint_symbol_135 = vec3f();
  var tint_symbol_136 = vec3f();
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_137 = vec3f();
  var tint_symbol_58_2 = vec2f();
  var tint_symbol_138 = 0i;
  var tint_symbol_108_1 = 0i;
  var tint_symbol_139 = vec3f();
  var tint_symbol_140 = vec3f();
  var tint_symbol_141 = vec2f();
  var tint_symbol_114_4 = vec4f();
  var tint_symbol_143 = vec3f();
  var tint_symbol_144 = vec4f();
  var tint_symbol_145 = vec3f();
  var tint_symbol_146 = tint_symbol_117(vec4f(), vec3f(), 0.0f);
  var tint_symbol_148 = vec4f();
  var tint_symbol_148_1 = vec4f();
  var tint_symbol_119_2 = 0.0f;
  var tint_symbol_148_2 = vec4f();
  var x_2116 : bool;
  var x_2117 : bool;
  let x_2104 = bitcast<vec2i>(tint_symbol_131.xy);
  let x_2106 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_84)));
  let x_2111 = (x_2104.x < x_2106.x);
  x_2117 = x_2111;
  if (x_2111) {
    x_2116 = (x_2104.y < x_2106.y);
    x_2117 = x_2116;
  }
  if (x_2117) {
    let x_2125 = (x_2120 / tint_symbol_82.inner.tint_symbol_66.xy);
    tint_symbol_135 = vec3f((((f32(x_2104.x) + 0.5f) * x_2125.x) - 1.0f), (((f32(x_2104.y) + 0.5f) * x_2125.y) - 1.0f), 0.0f);
    tint_symbol_136 = x_1940;
    tint_symbol_37_1 = vec3f();
    tint_symbol_137 = vec3f();
    tint_symbol_58_2 = x_2144;
    tint_symbol_138 = 0i;
    tint_symbol_108_1 = 0i;
    loop {
      if (!((tint_symbol_108_1 < 2i))) {
        break;
      }
      var x_2196 : bool;
      var x_2197 : bool;
      let x_2158 = tint_symbol_135;
      let x_2162 = tint_symbol_83.inner[tint_symbol_108_1];
      let x_2157 = tint_symbol_101(x_2158, x_2162);
      tint_symbol_139 = x_2157;
      let x_2165 = tint_symbol_136;
      let x_2168 = tint_symbol_83.inner[tint_symbol_108_1];
      let x_2164 = tint_symbol_98(x_2165, x_2168);
      tint_symbol_140 = x_2164;
      let x_2171 = tint_symbol_139;
      let x_2172 = tint_symbol_140;
      let x_2175 = tint_symbol_83.inner[tint_symbol_108_1];
      let x_2170 = tint_symbol_105(x_2171, x_2172, x_2175);
      tint_symbol_141 = x_2170;
      if ((tint_symbol_58_2.x == 0.0f)) {
        tint_symbol_37_1 = tint_symbol_139;
        tint_symbol_137 = tint_symbol_140;
        tint_symbol_58_2 = tint_symbol_141;
        tint_symbol_138 = tint_symbol_108_1;
      } else {
        let x_2191 = (tint_symbol_141.x < tint_symbol_58_2.x);
        x_2197 = x_2191;
        if (x_2191) {
          x_2196 = (tint_symbol_141.x != -1.0f);
          x_2197 = x_2196;
        }
        if (x_2197) {
          tint_symbol_37_1 = tint_symbol_139;
          tint_symbol_137 = tint_symbol_140;
          tint_symbol_58_2 = tint_symbol_141;
          tint_symbol_138 = tint_symbol_108_1;
        }
      }

      continuing {
        tint_symbol_108_1 = (tint_symbol_108_1 + 1i);
      }
    }
    tint_symbol_114_4 = x_2208;
    if ((tint_symbol_58_2.x > 0.0f)) {
      let x_2215 = tint_symbol_110();
      tint_symbol_143 = (tint_symbol_37_1 + (tint_symbol_137 * tint_symbol_58_2.x));
      let x_2224 = tint_symbol_143;
      let x_2227 = tint_symbol_83.inner[tint_symbol_138];
      let x_2223 = tint_symbol_104(x_2224, x_2227);
      tint_symbol_143 = x_2223;
      let x_2231 = tint_symbol_58_2.y;
      let x_2229 = tint_ftoi_1(x_2231);
      let x_2232 = tint_symbol_143;
      let x_2233 = tint_symbol_138;
      let x_2228 = tint_symbol_111(x_2229, x_2232, x_2233);
      tint_symbol_144 = x_2228;
      let x_2238 = tint_symbol_58_2.y;
      let x_2236 = tint_ftoi_1(x_2238);
      let x_2239 = tint_symbol_143;
      let x_2240 = tint_symbol_138;
      let x_2235 = tint_symbol_116(x_2236, x_2239, x_2240);
      tint_symbol_145 = x_2235;
      let x_2243 = tint_symbol_145;
      let x_2246 = tint_symbol_83.inner[tint_symbol_138];
      let x_2242 = tint_symbol_103(x_2243, x_2246);
      tint_symbol_145 = x_2242;
      let x_2248 = tint_symbol_85.inner.tint_symbol_77;
      let x_2251 = tint_symbol_85.inner.tint_symbol_78;
      let x_2254 = tint_symbol_143;
      let x_2255 = tint_symbol_145;
      let x_2253 = tint_symbol_120(x_2248.xyz, x_2251.xyz, x_2254, x_2255);
      tint_symbol_146 = x_2253;
      if ((tint_symbol_138 == 1i)) {
        tint_symbol_146.tint_symbol_76 = x_2262;
      }
      tint_symbol_144 = (tint_symbol_144 * tint_symbol_146.tint_symbol_76);
      if ((tint_symbol_85.inner.tint_symbol_81[0i] == 0u)) {
        tint_symbol_114_4 = (x_2215 + tint_symbol_144);
      } else {
        if ((tint_symbol_85.inner.tint_symbol_81[0i] == 1u)) {
          tint_symbol_148 = ((x_2262 * tint_symbol_146.tint_symbol_76) * pow(dot(tint_symbol_137, -(reflect(tint_symbol_146.tint_symbol_118, tint_symbol_145))), 100.0f));
          tint_symbol_148 = clamp(tint_symbol_148, vec4f(), x_2262);
          tint_symbol_114_4 = (((x_2215 + tint_symbol_144) + tint_symbol_148) + (x_2298 * tint_symbol_146.tint_symbol_76));
        } else {
          if ((tint_symbol_85.inner.tint_symbol_81[0i] == 2u)) {
            tint_symbol_148_1 = ((x_2262 * tint_symbol_146.tint_symbol_76) * pow(dot(tint_symbol_137, -(reflect(tint_symbol_146.tint_symbol_118, tint_symbol_145))), 100.0f));
            tint_symbol_148_1 = clamp(tint_symbol_148_1, vec4f(), x_2262);
            tint_symbol_114_4 = (((x_2215 + tint_symbol_144) + tint_symbol_148_1) + (x_2298 * tint_symbol_146.tint_symbol_76));
            let x_2337 = tint_symbol_114_4;
            let x_2336 = tint_symbol_126(x_2337, 5.0f);
            tint_symbol_114_4 = x_2336;
          } else {
            if ((tint_symbol_85.inner.tint_symbol_81[0i] == 3u)) {
              let x_2346 = tint_symbol_143;
              tint_symbol_119_2 = tint_symbol_146.tint_symbol_119;
              tint_symbol_148_2 = ((x_2262 * tint_symbol_146.tint_symbol_76) * pow(dot(normalize((tint_symbol_146.tint_symbol_118 + normalize(-(x_2346)))), tint_symbol_145), 100.0f));
              tint_symbol_148_2 = clamp(tint_symbol_148_2, vec4f(), x_2262);
              let x_2366 = (x_2298 * tint_symbol_146.tint_symbol_76);
              tint_symbol_114_4 = ((x_2215 + tint_symbol_144) + tint_symbol_148_2);
            }
          }
        }
      }
    }
    let x_2373 = tint_symbol_114_4;
    textureStore(tint_symbol_84, x_2104, x_2373);
  }
  return;
}

fn tint_symbol_130_1() {
  let x_2378 = tint_symbol_131_1;
  tint_symbol_130_inner(x_2378);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_131_1_param : vec3u) {
  tint_symbol_131_1 = tint_symbol_131_1_param;
  tint_symbol_130_1();
}

fn tint_symbol_152_inner(tint_symbol_131_3 : vec3u) {
  var tint_symbol_135_1 = vec3f();
  var tint_symbol_136_1 = vec3f();
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_137_1 = vec3f();
  var tint_symbol_58_3 = vec2f();
  var tint_symbol_138_1 = 0i;
  var tint_symbol_108_2 = 0i;
  var tint_symbol_139_1 = vec3f();
  var tint_symbol_140_1 = vec3f();
  var tint_symbol_141_1 = vec2f();
  var tint_symbol_114_5 = vec4f();
  var tint_symbol_143_1 = vec3f();
  var tint_symbol_144_1 = vec4f();
  var tint_symbol_145_1 = vec3f();
  var tint_symbol_146_1 = tint_symbol_117(vec4f(), vec3f(), 0.0f);
  var tint_symbol_148_3 = vec4f();
  var tint_symbol_148_4 = vec4f();
  var tint_symbol_119_3 = 0.0f;
  var tint_symbol_148_5 = vec4f();
  var x_2394 : bool;
  var x_2395 : bool;
  let x_2382 = bitcast<vec2i>(tint_symbol_131_3.xy);
  let x_2384 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_84)));
  let x_2389 = (x_2382.x < x_2384.x);
  x_2395 = x_2389;
  if (x_2389) {
    x_2394 = (x_2382.y < x_2384.y);
    x_2395 = x_2394;
  }
  if (x_2395) {
    let x_2405 = ((x_2120 / tint_symbol_82.inner.tint_symbol_66.xy) * tint_symbol_82.inner.tint_symbol_65.xy);
    tint_symbol_135_1 = vec3f();
    tint_symbol_136_1 = normalize(vec3f((((f32(x_2382.x) + 0.5f) * x_2405.x) - tint_symbol_82.inner.tint_symbol_65.x), (((f32(x_2382.y) + 0.5f) * x_2405.y) - tint_symbol_82.inner.tint_symbol_65.y), 1.0f));
    tint_symbol_37_2 = vec3f();
    tint_symbol_137_1 = vec3f();
    tint_symbol_58_3 = x_2144;
    tint_symbol_138_1 = 0i;
    tint_symbol_108_2 = 0i;
    loop {
      if (!((tint_symbol_108_2 < 2i))) {
        break;
      }
      var x_2478 : bool;
      var x_2479 : bool;
      let x_2441 = tint_symbol_135_1;
      let x_2444 = tint_symbol_83.inner[tint_symbol_108_2];
      let x_2440 = tint_symbol_101(x_2441, x_2444);
      tint_symbol_139_1 = x_2440;
      let x_2447 = tint_symbol_136_1;
      let x_2450 = tint_symbol_83.inner[tint_symbol_108_2];
      let x_2446 = tint_symbol_98(x_2447, x_2450);
      tint_symbol_140_1 = x_2446;
      let x_2453 = tint_symbol_139_1;
      let x_2454 = tint_symbol_140_1;
      let x_2457 = tint_symbol_83.inner[tint_symbol_108_2];
      let x_2452 = tint_symbol_105(x_2453, x_2454, x_2457);
      tint_symbol_141_1 = x_2452;
      if ((tint_symbol_58_3.x == 0.0f)) {
        tint_symbol_37_2 = tint_symbol_139_1;
        tint_symbol_137_1 = tint_symbol_140_1;
        tint_symbol_58_3 = tint_symbol_141_1;
        tint_symbol_138_1 = tint_symbol_108_2;
      } else {
        let x_2473 = (tint_symbol_141_1.x < tint_symbol_58_3.x);
        x_2479 = x_2473;
        if (x_2473) {
          x_2478 = (tint_symbol_141_1.x != -1.0f);
          x_2479 = x_2478;
        }
        if (x_2479) {
          tint_symbol_37_2 = tint_symbol_139_1;
          tint_symbol_137_1 = tint_symbol_140_1;
          tint_symbol_58_3 = tint_symbol_141_1;
          tint_symbol_138_1 = tint_symbol_108_2;
        }
      }

      continuing {
        tint_symbol_108_2 = (tint_symbol_108_2 + 1i);
      }
    }
    tint_symbol_114_5 = x_2208;
    if ((tint_symbol_58_3.x > 0.0f)) {
      let x_2494 = tint_symbol_110();
      tint_symbol_143_1 = (tint_symbol_37_2 + (tint_symbol_137_1 * tint_symbol_58_3.x));
      let x_2503 = tint_symbol_143_1;
      let x_2506 = tint_symbol_83.inner[tint_symbol_138_1];
      let x_2502 = tint_symbol_104(x_2503, x_2506);
      tint_symbol_143_1 = x_2502;
      let x_2510 = tint_symbol_58_3.y;
      let x_2508 = tint_ftoi_1(x_2510);
      let x_2511 = tint_symbol_143_1;
      let x_2512 = tint_symbol_138_1;
      let x_2507 = tint_symbol_111(x_2508, x_2511, x_2512);
      tint_symbol_144_1 = x_2507;
      let x_2517 = tint_symbol_58_3.y;
      let x_2515 = tint_ftoi_1(x_2517);
      let x_2518 = tint_symbol_143_1;
      let x_2519 = tint_symbol_138_1;
      let x_2514 = tint_symbol_116(x_2515, x_2518, x_2519);
      tint_symbol_145_1 = x_2514;
      let x_2522 = tint_symbol_145_1;
      let x_2525 = tint_symbol_83.inner[tint_symbol_138_1];
      let x_2521 = tint_symbol_103(x_2522, x_2525);
      tint_symbol_145_1 = x_2521;
      let x_2527 = tint_symbol_85.inner.tint_symbol_77;
      let x_2530 = tint_symbol_85.inner.tint_symbol_78;
      let x_2533 = tint_symbol_143_1;
      let x_2534 = tint_symbol_145_1;
      let x_2532 = tint_symbol_120(x_2527.xyz, x_2530.xyz, x_2533, x_2534);
      tint_symbol_146_1 = x_2532;
      if ((tint_symbol_138_1 == 1i)) {
        tint_symbol_146_1.tint_symbol_76 = x_2262;
      }
      tint_symbol_144_1 = (tint_symbol_144_1 * tint_symbol_146_1.tint_symbol_76);
      if ((tint_symbol_85.inner.tint_symbol_81[0i] == 0u)) {
        tint_symbol_114_5 = (x_2494 + tint_symbol_144_1);
      } else {
        if ((tint_symbol_85.inner.tint_symbol_81[0i] == 1u)) {
          tint_symbol_148_3 = ((x_2262 * tint_symbol_146_1.tint_symbol_76) * pow(dot(tint_symbol_137_1, -(reflect(tint_symbol_146_1.tint_symbol_118, tint_symbol_145_1))), 100.0f));
          tint_symbol_148_3 = clamp(tint_symbol_148_3, vec4f(), x_2262);
          tint_symbol_114_5 = (((x_2494 + tint_symbol_144_1) + tint_symbol_148_3) + (x_2298 * tint_symbol_146_1.tint_symbol_76));
        } else {
          if ((tint_symbol_85.inner.tint_symbol_81[0i] == 2u)) {
            tint_symbol_148_4 = ((x_2262 * tint_symbol_146_1.tint_symbol_76) * pow(dot(tint_symbol_137_1, -(reflect(tint_symbol_146_1.tint_symbol_118, tint_symbol_145_1))), 100.0f));
            tint_symbol_148_4 = clamp(tint_symbol_148_4, vec4f(), x_2262);
            tint_symbol_114_5 = (((x_2494 + tint_symbol_144_1) + tint_symbol_148_4) + (x_2298 * tint_symbol_146_1.tint_symbol_76));
            let x_2612 = tint_symbol_114_5;
            let x_2611 = tint_symbol_126(x_2612, 5.0f);
            tint_symbol_114_5 = x_2611;
          } else {
            if ((tint_symbol_85.inner.tint_symbol_81[0i] == 3u)) {
              let x_2619 = tint_symbol_143_1;
              tint_symbol_119_3 = tint_symbol_146_1.tint_symbol_119;
              tint_symbol_148_5 = ((x_2262 * tint_symbol_146_1.tint_symbol_76) * pow(dot(normalize((tint_symbol_146_1.tint_symbol_118 + normalize(x_2619))), -(tint_symbol_145_1)), 100.0f));
              tint_symbol_148_5 = clamp(tint_symbol_148_5, vec4f(), x_2262);
              let x_2640 = (x_2298 * tint_symbol_146_1.tint_symbol_76);
              tint_symbol_114_5 = ((x_2494 + tint_symbol_144_1) + tint_symbol_148_5);
            }
          }
        }
      }
    }
    let x_2647 = tint_symbol_114_5;
    textureStore(tint_symbol_84, x_2382, x_2647);
  }
  return;
}

fn tint_symbol_152_1() {
  let x_2651 = tint_symbol_131_2;
  tint_symbol_152_inner(x_2651);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_131_2_param : vec3u) {
  tint_symbol_131_2 = tint_symbol_131_2_param;
  tint_symbol_152_1();
}

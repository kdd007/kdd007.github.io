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
  /* @offset(32) */
  tint_symbol_5 : f32,
  /* @offset(36) */
  tint_symbol_6 : f32,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_10_block {
  /* @offset(0) */
  inner : RTArr,
}

var<private> tint_symbol_13_1 : u32;

var<private> tint_symbol_14_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_23_1 : vec3u;

var<private> tint_symbol_23_2 : vec3u;

var<private> tint_symbol_23_3 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_10 : tint_symbol_10_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_11 : tint_symbol_10_block;

fn tint_symbol_12_inner(tint_symbol_13 : u32, tint_symbol_14 : u32) -> vec4f {
  let x_34 = tint_symbol_10.inner[tint_symbol_13].tint_symbol_1;
  let x_42 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_14));
  let x_55 = vec2f(((cos(x_42) * 0.00416666688397526741f) + x_34.x), ((sin(x_42) * 0.00416666688397526741f) + x_34.y));
  return vec4f(x_55.x, x_55.y, 0.0f, 1.0f);
}

fn tint_symbol_12_1() {
  let x_65 = tint_symbol_13_1;
  let x_66 = tint_symbol_14_1;
  let x_64 = tint_symbol_12_inner(x_65, x_66);
  value = x_64;
  return;
}

struct tint_symbol_12_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_13_1_param : u32, @builtin(vertex_index) tint_symbol_14_1_param : u32) -> tint_symbol_12_out {
  tint_symbol_13_1 = tint_symbol_13_1_param;
  tint_symbol_14_1 = tint_symbol_14_1_param;
  tint_symbol_12_1();
  return tint_symbol_12_out(value);
}

fn tint_symbol_21_inner() -> vec4f {
  return vec4f(1.0f);
}

fn tint_symbol_21_1() {
  let x_73 = tint_symbol_21_inner();
  value_1 = x_73;
  return;
}

struct tint_symbol_21_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_21_out {
  tint_symbol_21_1();
  return tint_symbol_21_out(value_1);
}

fn tint_symbol_24(tint_symbol_27 : f32, tint_symbol_28 : f32, tint_symbol_29 : f32) -> vec2f {
  let x_82 = (sin((tint_symbol_27 * tint_symbol_28)) * 3.14159274101257324219f);
  return (vec2f(cos(x_82), sin(x_82)) * tint_symbol_29);
}

fn tint_symbol_22_inner(tint_symbol_23 : vec3u) {
  var tint_symbol_15 = tint_symbol(vec2f(), vec2f(), vec2f(), vec2f(), 0.0f, 0.0f);
  var x_91 : u32;
  var x_139 : bool;
  var x_140 : bool;
  x_91 = tint_symbol_23.x;
  if ((x_91 < arrayLength(&(tint_symbol_10.inner)))) {
    tint_symbol_15 = tint_symbol_10.inner[x_91];
    let x_106 = tint_symbol_15.tint_symbol_3;
    let x_111 = tint_symbol_15.tint_symbol_1.y;
    let x_107 = tint_symbol_24(x_111, 1.5f, 0.0f);
    tint_symbol_15.tint_symbol_3 = (x_106 + x_107);
    tint_symbol_15.tint_symbol_1 = (tint_symbol_15.tint_symbol_1 + tint_symbol_15.tint_symbol_3);
    tint_symbol_15.tint_symbol_1.y = (tint_symbol_15.tint_symbol_1.y + -0.00980000011622905731f);
    tint_symbol_15.tint_symbol_5 = (tint_symbol_15.tint_symbol_5 - 1.0f);
    let x_134 = (tint_symbol_15.tint_symbol_1.x < -1.0f);
    x_140 = x_134;
    if (x_134) {
    } else {
      x_139 = (tint_symbol_15.tint_symbol_1.x > 1.0f);
      x_140 = x_139;
    }
    var x_163 : bool;
    var x_164 : bool;
    if (x_140) {
      tint_symbol_15.tint_symbol_1.x = (-1.0f * tint_symbol_15.tint_symbol_1.x);
      tint_symbol_15.tint_symbol_3 = tint_symbol_15.tint_symbol_4;
      tint_symbol_15.tint_symbol_5 = tint_symbol_15.tint_symbol_6;
    } else {
      let x_158 = (tint_symbol_15.tint_symbol_1.y < -1.0f);
      x_164 = x_158;
      if (x_158) {
      } else {
        x_163 = (tint_symbol_15.tint_symbol_1.y > 1.0f);
        x_164 = x_163;
      }
      if (x_164) {
        tint_symbol_15.tint_symbol_1.y = (-1.0f * tint_symbol_15.tint_symbol_1.y);
        tint_symbol_15.tint_symbol_3 = tint_symbol_15.tint_symbol_4;
        tint_symbol_15.tint_symbol_5 = tint_symbol_15.tint_symbol_6;
      } else {
        if ((tint_symbol_15.tint_symbol_5 <= 0.0f)) {
          tint_symbol_15.tint_symbol_1 = tint_symbol_15.tint_symbol_2;
          tint_symbol_15.tint_symbol_3 = tint_symbol_15.tint_symbol_4;
          tint_symbol_15.tint_symbol_5 = tint_symbol_15.tint_symbol_6;
        }
      }
    }
    tint_symbol_11.inner[x_91] = tint_symbol_15;
  }
  return;
}

fn tint_symbol_22_1() {
  let x_197 = tint_symbol_23_1;
  tint_symbol_22_inner(x_197);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_23_1_param : vec3u) {
  tint_symbol_23_1 = tint_symbol_23_1_param;
  tint_symbol_22_1();
}

fn tint_symbol_25_inner(tint_symbol_23_4 : vec3u) {
  var tint_symbol_15_1 = tint_symbol(vec2f(), vec2f(), vec2f(), vec2f(), 0.0f, 0.0f);
  var x_201 : u32;
  var x_238 : bool;
  var x_239 : bool;
  x_201 = tint_symbol_23_4.x;
  if ((x_201 < arrayLength(&(tint_symbol_10.inner)))) {
    tint_symbol_15_1 = tint_symbol_10.inner[x_201];
    let x_210 = tint_symbol_15_1.tint_symbol_3;
    let x_213 = tint_symbol_15_1.tint_symbol_1.y;
    let x_211 = tint_symbol_24(x_213, 1.0f, 0.00004999999873689376f);
    tint_symbol_15_1.tint_symbol_3 = (x_210 + x_211);
    tint_symbol_15_1.tint_symbol_1 = (tint_symbol_15_1.tint_symbol_1 + tint_symbol_15_1.tint_symbol_3);
    tint_symbol_15_1.tint_symbol_1.y = (tint_symbol_15_1.tint_symbol_1.y + -0.00980000011622905731f);
    tint_symbol_15_1.tint_symbol_5 = (tint_symbol_15_1.tint_symbol_5 - 1.0f);
    let x_233 = (tint_symbol_15_1.tint_symbol_1.x < -1.0f);
    x_239 = x_233;
    if (x_233) {
    } else {
      x_238 = (tint_symbol_15_1.tint_symbol_1.x > 1.0f);
      x_239 = x_238;
    }
    var x_260 : bool;
    var x_261 : bool;
    if (x_239) {
      tint_symbol_15_1.tint_symbol_1.x = (-1.0f * tint_symbol_15_1.tint_symbol_1.x);
      tint_symbol_15_1.tint_symbol_3 = tint_symbol_15_1.tint_symbol_4;
      tint_symbol_15_1.tint_symbol_5 = tint_symbol_15_1.tint_symbol_6;
    } else {
      let x_255 = (tint_symbol_15_1.tint_symbol_1.y < -1.0f);
      x_261 = x_255;
      if (x_255) {
      } else {
        x_260 = (tint_symbol_15_1.tint_symbol_1.y > 1.0f);
        x_261 = x_260;
      }
      if (x_261) {
        tint_symbol_15_1.tint_symbol_1.y = (-1.0f * tint_symbol_15_1.tint_symbol_1.y);
        tint_symbol_15_1.tint_symbol_3 = tint_symbol_15_1.tint_symbol_4;
        tint_symbol_15_1.tint_symbol_5 = tint_symbol_15_1.tint_symbol_6;
      } else {
        if ((tint_symbol_15_1.tint_symbol_5 <= 0.0f)) {
          tint_symbol_15_1.tint_symbol_1 = tint_symbol_15_1.tint_symbol_2;
          tint_symbol_15_1.tint_symbol_3 = tint_symbol_15_1.tint_symbol_4;
          tint_symbol_15_1.tint_symbol_5 = tint_symbol_15_1.tint_symbol_6;
        }
      }
    }
    tint_symbol_11.inner[x_201] = tint_symbol_15_1;
  }
  return;
}

fn tint_symbol_25_1() {
  let x_294 = tint_symbol_23_2;
  tint_symbol_25_inner(x_294);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn addWind(@builtin(global_invocation_id) tint_symbol_23_2_param : vec3u) {
  tint_symbol_23_2 = tint_symbol_23_2_param;
  tint_symbol_25_1();
}

fn tint_symbol_26_inner(tint_symbol_23_5 : vec3u) {
  var tint_symbol_15_2 = tint_symbol(vec2f(), vec2f(), vec2f(), vec2f(), 0.0f, 0.0f);
  var x_298 : u32;
  var x_335 : bool;
  var x_336 : bool;
  x_298 = tint_symbol_23_5.x;
  if ((x_298 < arrayLength(&(tint_symbol_10.inner)))) {
    tint_symbol_15_2 = tint_symbol_10.inner[x_298];
    let x_307 = tint_symbol_15_2.tint_symbol_3;
    let x_310 = tint_symbol_15_2.tint_symbol_1.y;
    let x_308 = tint_symbol_24(x_310, 1.0f, 0.0f);
    tint_symbol_15_2.tint_symbol_3 = (x_307 + x_308);
    tint_symbol_15_2.tint_symbol_1 = (tint_symbol_15_2.tint_symbol_1 + tint_symbol_15_2.tint_symbol_3);
    tint_symbol_15_2.tint_symbol_1.y = (tint_symbol_15_2.tint_symbol_1.y + 0.00980000011622905731f);
    tint_symbol_15_2.tint_symbol_5 = (tint_symbol_15_2.tint_symbol_5 - 1.0f);
    let x_330 = (tint_symbol_15_2.tint_symbol_1.x < -1.0f);
    x_336 = x_330;
    if (x_330) {
    } else {
      x_335 = (tint_symbol_15_2.tint_symbol_1.x > 1.0f);
      x_336 = x_335;
    }
    var x_357 : bool;
    var x_358 : bool;
    if (x_336) {
      tint_symbol_15_2.tint_symbol_1.x = (-1.0f * tint_symbol_15_2.tint_symbol_1.x);
      tint_symbol_15_2.tint_symbol_3 = tint_symbol_15_2.tint_symbol_4;
      tint_symbol_15_2.tint_symbol_5 = tint_symbol_15_2.tint_symbol_6;
    } else {
      let x_352 = (tint_symbol_15_2.tint_symbol_1.y < -1.0f);
      x_358 = x_352;
      if (x_352) {
      } else {
        x_357 = (tint_symbol_15_2.tint_symbol_1.y > 1.0f);
        x_358 = x_357;
      }
      if (x_358) {
        tint_symbol_15_2.tint_symbol_1.y = (-1.0f * tint_symbol_15_2.tint_symbol_1.y);
        tint_symbol_15_2.tint_symbol_3 = tint_symbol_15_2.tint_symbol_4;
        tint_symbol_15_2.tint_symbol_5 = tint_symbol_15_2.tint_symbol_6;
      } else {
        if ((tint_symbol_15_2.tint_symbol_5 <= 0.0f)) {
          tint_symbol_15_2.tint_symbol_1 = tint_symbol_15_2.tint_symbol_2;
          tint_symbol_15_2.tint_symbol_3 = tint_symbol_15_2.tint_symbol_4;
          tint_symbol_15_2.tint_symbol_5 = tint_symbol_15_2.tint_symbol_6;
        }
      }
    }
    tint_symbol_11.inner[x_298] = tint_symbol_15_2;
  }
  return;
}

fn tint_symbol_26_1() {
  let x_391 = tint_symbol_23_3;
  tint_symbol_26_inner(x_391);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn reverseGravity(@builtin(global_invocation_id) tint_symbol_23_3_param : vec3u) {
  tint_symbol_23_3 = tint_symbol_23_3_param;
  tint_symbol_26_1();
}

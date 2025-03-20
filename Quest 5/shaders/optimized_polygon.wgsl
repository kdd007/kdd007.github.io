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
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_2_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_4_block {
  /* @offset(0) */
  inner : tint_symbol,
}

alias Arr = array<u32, 2u>;

struct tint_symbol_5_block_atomic {
  /* @offset(0) */
  inner : array<atomic<u32>, 2u>,
}

struct tint_symbol_5_block {
  /* @offset(0) */
  inner : Arr,
}

var<private> tint_symbol_7_1 : u32;

var<private> tint_symbol_8_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_13_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_2 : tint_symbol_2_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_3 : tint_symbol_2_block;

@group(0) @binding(2) var<uniform> tint_symbol_4 : tint_symbol_4_block;

@group(0) @binding(3) var<storage, read_write> tint_symbol_5 : tint_symbol_5_block_atomic;

fn tint_symbol_6_inner(tint_symbol_7 : u32, tint_symbol_8 : u32) -> vec4f {
  let x_41 = tint_symbol_2.inner[(tint_symbol_7 + tint_symbol_8)].tint_symbol_1.x;
  let x_45 = tint_symbol_2.inner[(tint_symbol_7 + tint_symbol_8)].tint_symbol_1.y;
  return vec4f(x_41, x_45, 0.0f, 1.0f);
}

fn tint_symbol_6_1() {
  let x_53 = tint_symbol_7_1;
  let x_54 = tint_symbol_8_1;
  let x_52 = tint_symbol_6_inner(x_53, x_54);
  value = x_52;
  return;
}

struct tint_symbol_6_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_7_1_param : u32, @builtin(vertex_index) tint_symbol_8_1_param : u32) -> tint_symbol_6_out {
  tint_symbol_7_1 = tint_symbol_7_1_param;
  tint_symbol_8_1 = tint_symbol_8_1_param;
  tint_symbol_6_1();
  return tint_symbol_6_out(value);
}

fn tint_symbol_11_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_11_1() {
  let x_64 = tint_symbol_11_inner();
  value_1 = x_64;
  return;
}

struct tint_symbol_11_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_11_out {
  tint_symbol_11_1();
  return tint_symbol_11_out(value_1);
}

fn tint_symbol_18(tint_symbol_19 : vec2f, tint_symbol_20 : vec2f, tint_symbol_1 : vec2f) -> bool {
  return ((((tint_symbol_20.x - tint_symbol_19.x) * (tint_symbol_1.y - tint_symbol_19.y)) - ((tint_symbol_20.y - tint_symbol_19.y) * (tint_symbol_1.x - tint_symbol_19.x))) > 0.0f);
}

fn tint_symbol_12_inner(tint_symbol_13 : vec3u) {
  var x_95 : u32;
  var x_96 : u32;
  var x_120 : bool;
  var x_121 : bool;
  x_95 = tint_symbol_13.x;
  x_96 = (x_95 + 1u);
  if ((x_96 < arrayLength(&(tint_symbol_2.inner)))) {
    let x_109 = tint_symbol_2.inner[x_95].tint_symbol_1.x;
    let x_111 = tint_symbol_2.inner[x_96].tint_symbol_1.x;
    let x_115 = (min(tint_symbol_2.inner[x_95].tint_symbol_1.x, tint_symbol_2.inner[x_96].tint_symbol_1.x) < tint_symbol_4.inner.tint_symbol_1.x);
    x_121 = x_115;
    if (x_115) {
      x_120 = (max(x_109, x_111) > tint_symbol_4.inner.tint_symbol_1.x);
      x_121 = x_120;
    }
    if (x_121) {
      if ((tint_symbol_4.inner.tint_symbol_1.y < max(tint_symbol_2.inner[x_95].tint_symbol_1.y, tint_symbol_2.inner[x_96].tint_symbol_1.y))) {
        let x_138 = tint_symbol_2.inner[x_95].tint_symbol_1;
        let x_140 = tint_symbol_2.inner[x_96].tint_symbol_1;
        let x_143 = tint_symbol_4.inner.tint_symbol_1;
        let x_135 = tint_symbol_18(x_138, x_140, x_143);
        if (x_135) {
          let x_147 = atomicAdd(&(tint_symbol_5.inner[0i]), 1u);
        } else {
          let x_151 = atomicSub(&(tint_symbol_5.inner[0i]), 1u);
        }
      } else {
        let x_156 = tint_symbol_2.inner[x_95].tint_symbol_1;
        let x_158 = tint_symbol_2.inner[x_96].tint_symbol_1;
        let x_160 = tint_symbol_4.inner.tint_symbol_1;
        let x_154 = tint_symbol_18(x_156, x_158, x_160);
        if (x_154) {
          let x_164 = atomicAdd(&(tint_symbol_5.inner[1i]), 1u);
        } else {
          let x_167 = atomicSub(&(tint_symbol_5.inner[1i]), 1u);
        }
      }
    }
    tint_symbol_3.inner[x_95] = tint_symbol_2.inner[x_95];
  }
  return;
}

fn tint_symbol_12_1() {
  let x_177 = tint_symbol_13_1;
  tint_symbol_12_inner(x_177);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_13_1_param : vec3u) {
  tint_symbol_13_1 = tint_symbol_13_1_param;
  tint_symbol_12_1();
}

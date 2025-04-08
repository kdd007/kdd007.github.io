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
  tint_symbol_1 : vec4f,
  /* @offset(16) */
  tint_symbol_2 : vec4f,
}

struct tint_symbol_24 {
  /* @offset(0) */
  tint_symbol_14 : tint_symbol,
  /* @offset(32) */
  tint_symbol_25 : vec2f,
  /* @offset(40) */
  tint_symbol_26 : vec2f,
}

struct tint_symbol_27_block {
  /* @offset(0) */
  inner : tint_symbol_24,
}

struct tint_symbol_20 {
  /* @offset(0) */
  tint_symbol_21 : vec4f,
  /* @offset(16) */
  tint_symbol_22 : vec4f,
}

struct tint_symbol_28_block {
  /* @offset(0) */
  inner : tint_symbol_20,
}

alias RTArr = array<f32>;

struct tint_symbol_29_block {
  /* @offset(0) */
  inner : RTArr,
}

var<private> tint_symbol_60_1 : vec3u;

var<private> tint_symbol_60_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_27 : tint_symbol_27_block;

@group(0) @binding(1) var<uniform> tint_symbol_28 : tint_symbol_28_block;

@group(0) @binding(2) var<storage> tint_symbol_29 : tint_symbol_29_block;

@group(0) @binding(3) var tint_symbol_30 : texture_storage_2d<rgba8unorm, write>;

fn tint_symbol_3(tint_symbol_4 : vec3f, tint_symbol_5 : f32, tint_symbol_6 : f32, tint_symbol_7 : f32) -> vec3f {
  return vec3f((tint_symbol_4.x + tint_symbol_5), (tint_symbol_4.y + tint_symbol_6), (tint_symbol_4.z + tint_symbol_7));
}

fn tint_symbol_8(tint_symbol_4_1 : vec3f, tint_symbol_9 : i32, tint_symbol_10 : f32) -> vec3f {
  var tint_return_flag = false;
  var tint_return_value = vec3f();
  let x_57 = cos(tint_symbol_10);
  let x_59 = sin(tint_symbol_10);
  switch(tint_symbol_9) {
    case 2i: {
      tint_return_flag = true;
      tint_return_value = vec3f(((tint_symbol_4_1.x * x_57) - (tint_symbol_4_1.y * x_59)), ((tint_symbol_4_1.x * x_59) + (tint_symbol_4_1.y * x_57)), tint_symbol_4_1.z);
    }
    case 1i: {
      tint_return_flag = true;
      tint_return_value = vec3f(((tint_symbol_4_1.x * x_57) + (tint_symbol_4_1.z * x_59)), tint_symbol_4_1.y, ((-(tint_symbol_4_1.x) * x_59) + (tint_symbol_4_1.z * x_57)));
    }
    case 0i: {
      tint_return_flag = true;
      tint_return_value = vec3f(tint_symbol_4_1.x, ((tint_symbol_4_1.y * x_57) - (tint_symbol_4_1.z * x_59)), ((tint_symbol_4_1.y * x_59) + (tint_symbol_4_1.z * x_57)));
    }
    default: {
      tint_return_flag = true;
      tint_return_value = tint_symbol_4_1;
    }
  }
  let x_103 = tint_return_value;
  return x_103;
}

fn tint_symbol_13(tint_symbol_4_2 : vec3f, tint_symbol_14 : tint_symbol) -> vec3f {
  var tint_symbol_15 = vec3f();
  let x_109 = tint_symbol_8(tint_symbol_4_2, 0i, tint_symbol_14.tint_symbol_2.x);
  tint_symbol_15 = x_109;
  let x_114 = tint_symbol_15;
  let x_113 = tint_symbol_8(x_114, 1i, tint_symbol_14.tint_symbol_2.y);
  tint_symbol_15 = x_113;
  let x_118 = tint_symbol_15;
  let x_117 = tint_symbol_8(x_118, 2i, tint_symbol_14.tint_symbol_2.z);
  tint_symbol_15 = x_117;
  let x_122 = tint_symbol_15;
  let x_121 = tint_symbol_3(x_122, tint_symbol_14.tint_symbol_1.x, tint_symbol_14.tint_symbol_1.y, tint_symbol_14.tint_symbol_1.z);
  tint_symbol_15 = x_121;
  let x_129 = tint_symbol_15;
  return x_129;
}

fn tint_symbol_16(tint_symbol_17 : vec3f, tint_symbol_14_1 : tint_symbol) -> vec3f {
  var tint_symbol_15_1 = vec3f();
  let x_134 = tint_symbol_8(tint_symbol_17, 0i, tint_symbol_14_1.tint_symbol_2.x);
  tint_symbol_15_1 = x_134;
  let x_139 = tint_symbol_15_1;
  let x_138 = tint_symbol_8(x_139, 1i, tint_symbol_14_1.tint_symbol_2.y);
  tint_symbol_15_1 = x_138;
  let x_143 = tint_symbol_15_1;
  let x_142 = tint_symbol_8(x_143, 2i, tint_symbol_14_1.tint_symbol_2.z);
  tint_symbol_15_1 = x_142;
  let x_146 = tint_symbol_15_1;
  return x_146;
}

fn tint_symbol_18(tint_symbol_4_3 : vec3f, tint_symbol_14_2 : tint_symbol) -> vec3f {
  var tint_symbol_15_2 = vec3f();
  let x_151 = tint_symbol_3(tint_symbol_4_3, -(tint_symbol_14_2.tint_symbol_1.x), -(tint_symbol_14_2.tint_symbol_1.y), -(tint_symbol_14_2.tint_symbol_1.z));
  tint_symbol_15_2 = x_151;
  let x_163 = tint_symbol_15_2;
  let x_162 = tint_symbol_8(x_163, 2i, -(tint_symbol_14_2.tint_symbol_2.z));
  tint_symbol_15_2 = x_162;
  let x_168 = tint_symbol_15_2;
  let x_167 = tint_symbol_8(x_168, 1i, -(tint_symbol_14_2.tint_symbol_2.y));
  tint_symbol_15_2 = x_167;
  let x_173 = tint_symbol_15_2;
  let x_172 = tint_symbol_8(x_173, 0i, -(tint_symbol_14_2.tint_symbol_2.x));
  tint_symbol_15_2 = x_172;
  let x_177 = tint_symbol_15_2;
  return x_177;
}

fn tint_symbol_19(tint_symbol_17_1 : vec3f, tint_symbol_14_3 : tint_symbol) -> vec3f {
  var tint_symbol_15_3 = vec3f();
  let x_182 = tint_symbol_8(tint_symbol_17_1, 2i, -(tint_symbol_14_3.tint_symbol_2.z));
  tint_symbol_15_3 = x_182;
  let x_188 = tint_symbol_15_3;
  let x_187 = tint_symbol_8(x_188, 1i, -(tint_symbol_14_3.tint_symbol_2.y));
  tint_symbol_15_3 = x_187;
  let x_193 = tint_symbol_15_3;
  let x_192 = tint_symbol_8(x_193, 0i, -(tint_symbol_14_3.tint_symbol_2.x));
  tint_symbol_15_3 = x_192;
  let x_197 = tint_symbol_15_3;
  return x_197;
}

fn tint_symbol_31(tint_symbol_32 : vec3f) -> vec3f {
  var tint_symbol_15_4 = vec3f();
  let x_206 = tint_symbol_27.inner.tint_symbol_14;
  let x_202 = tint_symbol_16(tint_symbol_32, x_206);
  tint_symbol_15_4 = x_202;
  let x_208 = tint_symbol_15_4;
  return x_208;
}

fn tint_symbol_33(tint_symbol_4_4 : vec3f) -> vec3f {
  var tint_symbol_15_5 = vec3f();
  let x_214 = tint_symbol_27.inner.tint_symbol_14;
  let x_212 = tint_symbol_13(tint_symbol_4_4, x_214);
  tint_symbol_15_5 = x_212;
  let x_216 = tint_symbol_15_5;
  return x_216;
}

const x_230 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_34(tint_symbol_35 : vec2i) {
  var tint_symbol_36 = vec4f();
  tint_symbol_36 = x_230;
  let x_233 = tint_symbol_36;
  textureStore(tint_symbol_30, tint_symbol_35, x_233);
  return;
}

fn tint_symbol_37(tint_symbol_38 : vec2f, tint_symbol_39 : f32) -> vec2f {
  var tint_symbol_40 = vec2f();
  tint_symbol_40 = tint_symbol_38;
  if ((tint_symbol_38.x < 0.0f)) {
    tint_symbol_40.x = tint_symbol_39;
  } else {
    if ((tint_symbol_39 < tint_symbol_38.x)) {
      tint_symbol_40.y = tint_symbol_38.x;
      tint_symbol_40.x = tint_symbol_39;
    } else {
      if ((tint_symbol_38.y < 0.0f)) {
        tint_symbol_40.y = tint_symbol_39;
      } else {
        if ((tint_symbol_39 < tint_symbol_38.y)) {
          tint_symbol_40.y = tint_symbol_39;
        }
      }
    }
  }
  let x_269 = tint_symbol_40;
  return x_269;
}

fn tint_symbol_41(tint_symbol_42 : f32, tint_symbol_43 : vec2f, tint_symbol_44 : f32, tint_symbol_45 : f32, tint_symbol_46 : vec2f, tint_symbol_32_1 : vec2f, tint_symbol_47 : vec2f) -> vec2f {
  var tint_symbol_48 = vec2f();
  tint_symbol_48 = tint_symbol_47;
  if ((abs(tint_symbol_45) > 0.00000000999999993923f)) {
    var x_287 : f32;
    var x_301 : bool;
    var x_302 : bool;
    var x_308 : bool;
    var x_309 : bool;
    var x_314 : bool;
    var x_315 : bool;
    x_287 = ((tint_symbol_42 - tint_symbol_44) / tint_symbol_45);
    if ((x_287 > 0.0f)) {
      let x_292 = (tint_symbol_46 + (tint_symbol_32_1 * x_287));
      let x_296 = (-(tint_symbol_43.x) < x_292.x);
      x_302 = x_296;
      if (x_296) {
        x_301 = (x_292.x < tint_symbol_43.x);
        x_302 = x_301;
      }
      x_309 = x_302;
      if (x_302) {
        x_308 = (-(tint_symbol_43.y) < x_292.y);
        x_309 = x_308;
      }
      x_315 = x_309;
      if (x_309) {
        x_314 = (x_292.y < tint_symbol_43.y);
        x_315 = x_314;
      }
      if (x_315) {
        let x_319 = tint_symbol_48;
        let x_318 = tint_symbol_37(x_319, x_287);
        tint_symbol_48 = x_318;
      }
    }
  }
  let x_320 = tint_symbol_48;
  return x_320;
}

fn tint_symbol_50(tint_symbol_46_1 : vec3f, tint_symbol_32_2 : vec3f) -> vec2f {
  var tint_symbol_51 = vec2f();
  var x_348 = vec4f();
  tint_symbol_51 = vec2f(-1.0f);
  let x_347 = (((tint_symbol_28.inner.tint_symbol_21 * tint_symbol_28.inner.tint_symbol_22) * 0.5f) / vec4f(max(max(tint_symbol_28.inner.tint_symbol_21.x, tint_symbol_28.inner.tint_symbol_21.y), tint_symbol_28.inner.tint_symbol_21.z)));
  let x_357 = tint_symbol_51;
  let x_350 = tint_symbol_41(x_347.z, x_347.xy, tint_symbol_46_1.z, tint_symbol_32_2.z, tint_symbol_46_1.xy, tint_symbol_32_2.xy, x_357);
  tint_symbol_51 = x_350;
  let x_366 = tint_symbol_51;
  let x_358 = tint_symbol_41(-(x_347.z), x_347.xy, tint_symbol_46_1.z, tint_symbol_32_2.z, tint_symbol_46_1.xy, tint_symbol_32_2.xy, x_366);
  tint_symbol_51 = x_358;
  let x_375 = tint_symbol_51;
  let x_367 = tint_symbol_41(-(x_347.x), x_347.yz, tint_symbol_46_1.x, tint_symbol_32_2.x, tint_symbol_46_1.yz, tint_symbol_32_2.yz, x_375);
  tint_symbol_51 = x_367;
  let x_383 = tint_symbol_51;
  let x_376 = tint_symbol_41(x_347.x, x_347.yz, tint_symbol_46_1.x, tint_symbol_32_2.x, tint_symbol_46_1.yz, tint_symbol_32_2.yz, x_383);
  tint_symbol_51 = x_376;
  let x_391 = tint_symbol_51;
  let x_384 = tint_symbol_41(x_347.y, x_347.xz, tint_symbol_46_1.y, tint_symbol_32_2.y, tint_symbol_46_1.xz, tint_symbol_32_2.xz, x_391);
  tint_symbol_51 = x_384;
  let x_400 = tint_symbol_51;
  let x_392 = tint_symbol_41(-(x_347.y), x_347.xz, tint_symbol_46_1.y, tint_symbol_32_2.y, tint_symbol_46_1.xz, tint_symbol_32_2.xz, x_400);
  tint_symbol_51 = x_392;
  let x_401 = tint_symbol_51;
  return x_401;
}

fn tint_symbol_52(tint_symbol_53 : f32, tint_symbol_47_1 : f32, tint_symbol_42_1 : f32, tint_symbol_54 : vec2f, tint_symbol_55 : vec2f, tint_symbol_44_1 : f32, tint_symbol_45_1 : f32, tint_symbol_46_2 : vec2f, tint_symbol_32_3 : vec2f) -> f32 {
  var tint_symbol_48_1 = 0.0f;
  var x_430 : bool;
  var x_431 : bool;
  var x_436 : bool;
  var x_437 : bool;
  var x_442 : bool;
  var x_443 : bool;
  tint_symbol_48_1 = tint_symbol_47_1;
  if ((abs(tint_symbol_45_1) > 0.00000000999999993923f)) {
    let x_420 = ((tint_symbol_42_1 - tint_symbol_44_1) / tint_symbol_45_1);
    let x_422 = (tint_symbol_46_2 + (tint_symbol_32_3 * x_420));
    let x_425 = (tint_symbol_54.x < x_422.x);
    x_431 = x_425;
    if (x_425) {
      x_430 = (x_422.x < tint_symbol_55.x);
      x_431 = x_430;
    }
    x_437 = x_431;
    if (x_431) {
      x_436 = (tint_symbol_54.y < x_422.y);
      x_437 = x_436;
    }
    x_443 = x_437;
    if (x_437) {
      x_442 = (x_422.y < tint_symbol_55.y);
      x_443 = x_442;
    }
    var x_450 : bool;
    var x_451 : bool;
    if (x_443) {
      let x_446 = (x_420 > tint_symbol_53);
      x_451 = x_446;
      if (x_446) {
        x_450 = (tint_symbol_48_1 < x_420);
        x_451 = x_450;
      }
      if (x_451) {
        tint_symbol_48_1 = x_420;
      }
    }
  }
  let x_454 = tint_symbol_48_1;
  return x_454;
}

fn tint_symbol_56(tint_symbol_35_1 : vec2i, tint_symbol_46_3 : vec3f, tint_symbol_32_4 : vec3f) {
  var tint_symbol_57 = vec2f();
  var tint_symbol_36_1 = vec4f();
  var x_472 : bool;
  var x_473 : bool;
  let x_461 = tint_symbol_50(tint_symbol_46_3, tint_symbol_32_4);
  tint_symbol_57 = x_461;
  tint_symbol_36_1 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);
  let x_467 = (tint_symbol_57.y < 0.0f);
  x_473 = x_467;
  if (x_467) {
    x_472 = (tint_symbol_57.x > 0.0f);
    x_473 = x_472;
  }
  if (x_473) {
    tint_symbol_57.y = tint_symbol_57.x;
    tint_symbol_57.x = 0.0f;
  }
  if ((tint_symbol_57.x >= 0.0f)) {
    let x_490 = (tint_symbol_57.y - tint_symbol_57.x);
    tint_symbol_36_1 = vec4f(x_490, (1.0f - x_490), 0.0f, 1.0f);
  } else {
    tint_symbol_36_1 = x_230;
  }
  let x_495 = tint_symbol_36_1;
  textureStore(tint_symbol_30, tint_symbol_35_1, x_495);
  return;
}

fn tint_symbol_59_inner(tint_symbol_60 : vec3u) {
  var tint_symbol_63 = vec3f();
  var tint_symbol_64 = vec3f();
  var x_513 : bool;
  var x_514 : bool;
  let x_500 = bitcast<vec2i>(tint_symbol_60.xy);
  let x_503 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_30)));
  let x_508 = (x_500.x < x_503.x);
  x_514 = x_508;
  if (x_508) {
    x_513 = (x_500.y < x_503.y);
    x_514 = x_513;
  }
  if (x_514) {
    let x_523 = (vec2f(2.0f) / tint_symbol_27.inner.tint_symbol_26.xy);
    tint_symbol_63 = vec3f((((f32(x_500.x) + 0.5f) * x_523.x) - 1.0f), (((f32(x_500.y) + 0.5f) * x_523.y) - 1.0f), 0.0f);
    tint_symbol_64 = vec3f(0.0f, 0.0f, 1.0f);
    let x_541 = tint_symbol_63;
    let x_540 = tint_symbol_33(x_541);
    tint_symbol_63 = x_540;
    let x_543 = tint_symbol_64;
    let x_542 = tint_symbol_31(x_543);
    tint_symbol_64 = x_542;
    let x_545 = tint_symbol_63;
    let x_546 = tint_symbol_64;
    tint_symbol_56(x_500, x_545, x_546);
  }
  return;
}

fn tint_symbol_59_1() {
  let x_551 = tint_symbol_60_1;
  tint_symbol_59_inner(x_551);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_60_1_param : vec3u) {
  tint_symbol_60_1 = tint_symbol_60_1_param;
  tint_symbol_59_1();
}

fn tint_symbol_65_inner(tint_symbol_60_3 : vec3u) {
  return;
}

fn tint_symbol_65_1() {
  let x_558 = tint_symbol_60_2;
  tint_symbol_65_inner(x_558);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_60_2_param : vec3u) {
  tint_symbol_60_2 = tint_symbol_60_2_param;
  tint_symbol_65_1();
}

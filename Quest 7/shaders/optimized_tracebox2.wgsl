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

struct tint_symbol_21 {
  /* @offset(0) */
  tint_symbol_14 : tint_symbol,
  /* @offset(32) */
  tint_symbol_22 : vec2f,
  /* @offset(40) */
  tint_symbol_23 : vec2f,
}

struct tint_symbol_32_block {
  /* @offset(0) */
  inner : tint_symbol_21,
}

struct tint_symbol_24 {
  /* @offset(0) */
  tint_symbol_25 : vec4f,
  /* @offset(16) */
  tint_symbol_26 : vec4f,
  /* @offset(32) */
  tint_symbol_27 : vec4f,
  /* @offset(48) */
  tint_symbol_28 : vec4f,
}

alias Arr = array<tint_symbol_24, 6u>;

struct tint_symbol_29 {
  /* @offset(0) */
  tint_symbol_14 : tint_symbol,
  /* @offset(32) */
  tint_symbol_30 : vec4f,
  /* @offset(48) */
  tint_symbol_31 : Arr,
}

struct tint_symbol_33_block {
  /* @offset(0) */
  inner : tint_symbol_29,
}

var<private> tint_symbol_52_1 : vec3u;

var<private> tint_symbol_52_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_32 : tint_symbol_32_block;

@group(0) @binding(1) var<uniform> tint_symbol_33 : tint_symbol_33_block;

@group(0) @binding(2) var tint_symbol_34 : texture_storage_2d<rgba8unorm, write>;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_symbol_3(tint_symbol_4 : vec3f, tint_symbol_5 : f32, tint_symbol_6 : f32, tint_symbol_7 : f32) -> vec3f {
  return vec3f((tint_symbol_4.x + tint_symbol_5), (tint_symbol_4.y + tint_symbol_6), (tint_symbol_4.z + tint_symbol_7));
}

fn tint_symbol_8(tint_symbol_4_1 : vec3f, tint_symbol_9 : i32, tint_symbol_10 : f32) -> vec3f {
  var tint_return_flag = false;
  var tint_return_value = vec3f();
  let x_69 = cos(tint_symbol_10);
  let x_71 = sin(tint_symbol_10);
  switch(tint_symbol_9) {
    case 2i: {
      tint_return_flag = true;
      tint_return_value = vec3f(((tint_symbol_4_1.x * x_69) - (tint_symbol_4_1.y * x_71)), ((tint_symbol_4_1.x * x_71) + (tint_symbol_4_1.y * x_69)), tint_symbol_4_1.z);
    }
    case 1i: {
      tint_return_flag = true;
      tint_return_value = vec3f(((tint_symbol_4_1.x * x_69) + (tint_symbol_4_1.z * x_71)), tint_symbol_4_1.y, ((-(tint_symbol_4_1.x) * x_71) + (tint_symbol_4_1.z * x_69)));
    }
    case 0i: {
      tint_return_flag = true;
      tint_return_value = vec3f(tint_symbol_4_1.x, ((tint_symbol_4_1.y * x_69) - (tint_symbol_4_1.z * x_71)), ((tint_symbol_4_1.y * x_71) + (tint_symbol_4_1.z * x_69)));
    }
    default: {
      tint_return_flag = true;
      tint_return_value = tint_symbol_4_1;
    }
  }
  let x_115 = tint_return_value;
  return x_115;
}

fn tint_symbol_13(tint_symbol_4_2 : vec3f, tint_symbol_14 : tint_symbol) -> vec3f {
  var tint_symbol_15 = vec3f();
  let x_121 = tint_symbol_8(tint_symbol_4_2, 0i, tint_symbol_14.tint_symbol_2.x);
  tint_symbol_15 = x_121;
  let x_126 = tint_symbol_15;
  let x_125 = tint_symbol_8(x_126, 1i, tint_symbol_14.tint_symbol_2.y);
  tint_symbol_15 = x_125;
  let x_130 = tint_symbol_15;
  let x_129 = tint_symbol_8(x_130, 2i, tint_symbol_14.tint_symbol_2.z);
  tint_symbol_15 = x_129;
  let x_134 = tint_symbol_15;
  let x_133 = tint_symbol_3(x_134, tint_symbol_14.tint_symbol_1.x, tint_symbol_14.tint_symbol_1.y, tint_symbol_14.tint_symbol_1.z);
  tint_symbol_15 = x_133;
  let x_141 = tint_symbol_15;
  return x_141;
}

fn tint_symbol_16(tint_symbol_17 : vec3f, tint_symbol_14_1 : tint_symbol) -> vec3f {
  var tint_symbol_15_1 = vec3f();
  let x_146 = tint_symbol_8(tint_symbol_17, 0i, tint_symbol_14_1.tint_symbol_2.x);
  tint_symbol_15_1 = x_146;
  let x_151 = tint_symbol_15_1;
  let x_150 = tint_symbol_8(x_151, 1i, tint_symbol_14_1.tint_symbol_2.y);
  tint_symbol_15_1 = x_150;
  let x_155 = tint_symbol_15_1;
  let x_154 = tint_symbol_8(x_155, 2i, tint_symbol_14_1.tint_symbol_2.z);
  tint_symbol_15_1 = x_154;
  let x_158 = tint_symbol_15_1;
  return x_158;
}

fn tint_symbol_18(tint_symbol_4_3 : vec3f, tint_symbol_14_2 : tint_symbol) -> vec3f {
  var tint_symbol_15_2 = vec3f();
  let x_163 = tint_symbol_3(tint_symbol_4_3, -(tint_symbol_14_2.tint_symbol_1.x), -(tint_symbol_14_2.tint_symbol_1.y), -(tint_symbol_14_2.tint_symbol_1.z));
  tint_symbol_15_2 = x_163;
  let x_175 = tint_symbol_15_2;
  let x_174 = tint_symbol_8(x_175, 2i, -(tint_symbol_14_2.tint_symbol_2.z));
  tint_symbol_15_2 = x_174;
  let x_180 = tint_symbol_15_2;
  let x_179 = tint_symbol_8(x_180, 1i, -(tint_symbol_14_2.tint_symbol_2.y));
  tint_symbol_15_2 = x_179;
  let x_185 = tint_symbol_15_2;
  let x_184 = tint_symbol_8(x_185, 0i, -(tint_symbol_14_2.tint_symbol_2.x));
  tint_symbol_15_2 = x_184;
  let x_189 = tint_symbol_15_2;
  return x_189;
}

fn tint_symbol_19(tint_symbol_17_1 : vec3f, tint_symbol_14_3 : tint_symbol) -> vec3f {
  var tint_symbol_15_3 = vec3f();
  let x_194 = tint_symbol_8(tint_symbol_17_1, 2i, -(tint_symbol_14_3.tint_symbol_2.z));
  tint_symbol_15_3 = x_194;
  let x_200 = tint_symbol_15_3;
  let x_199 = tint_symbol_8(x_200, 1i, -(tint_symbol_14_3.tint_symbol_2.y));
  tint_symbol_15_3 = x_199;
  let x_205 = tint_symbol_15_3;
  let x_204 = tint_symbol_8(x_205, 0i, -(tint_symbol_14_3.tint_symbol_2.x));
  tint_symbol_15_3 = x_204;
  let x_209 = tint_symbol_15_3;
  return x_209;
}

fn tint_symbol_35(tint_symbol_12 : vec3f, tint_symbol_36 : vec3f, tint_symbol_37 : tint_symbol_24, tint_symbol_38 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_39 = 0.0f;
  tint_symbol_39 = -1.0f;
  if ((abs((tint_symbol_37.tint_symbol_25.z - tint_symbol_37.tint_symbol_27.z)) <= 0.00000000999999993923f)) {
    var x_241 : f32;
    var x_256 : bool;
    var x_257 : bool;
    var x_263 : bool;
    var x_264 : bool;
    var x_270 : bool;
    var x_271 : bool;
    x_241 = ((tint_symbol_37.tint_symbol_25.z - tint_symbol_12.z) / tint_symbol_36.z);
    if ((x_241 > 0.0f)) {
      let x_246 = (tint_symbol_12 + (tint_symbol_36 * x_241));
      let x_250 = (tint_symbol_37.tint_symbol_25.x < x_246.x);
      x_257 = x_250;
      if (x_250) {
        x_256 = (x_246.x < tint_symbol_37.tint_symbol_27.x);
        x_257 = x_256;
      }
      x_264 = x_257;
      if (x_257) {
        x_263 = (tint_symbol_37.tint_symbol_25.y < x_246.y);
        x_264 = x_263;
      }
      x_271 = x_264;
      if (x_264) {
        x_270 = (x_246.y < tint_symbol_37.tint_symbol_27.y);
        x_271 = x_270;
      }
      if (x_271) {
        tint_symbol_39 = x_241;
      }
    }
  } else {
    if ((abs((tint_symbol_37.tint_symbol_25.y - tint_symbol_37.tint_symbol_27.y)) <= 0.00000000999999993923f)) {
      var x_289 : f32;
      var x_304 : bool;
      var x_305 : bool;
      var x_311 : bool;
      var x_312 : bool;
      var x_318 : bool;
      var x_319 : bool;
      x_289 = ((tint_symbol_37.tint_symbol_25.y - tint_symbol_12.y) / tint_symbol_36.y);
      if ((x_289 > 0.0f)) {
        let x_294 = (tint_symbol_12 + (tint_symbol_36 * x_289));
        let x_298 = (tint_symbol_37.tint_symbol_25.x < x_294.x);
        x_305 = x_298;
        if (x_298) {
          x_304 = (x_294.x < tint_symbol_37.tint_symbol_27.x);
          x_305 = x_304;
        }
        x_312 = x_305;
        if (x_305) {
          x_311 = (tint_symbol_37.tint_symbol_25.z < x_294.z);
          x_312 = x_311;
        }
        x_319 = x_312;
        if (x_312) {
          x_318 = (x_294.z < tint_symbol_37.tint_symbol_27.z);
          x_319 = x_318;
        }
        if (x_319) {
          tint_symbol_39 = x_289;
        }
      }
    } else {
      if ((abs((tint_symbol_37.tint_symbol_25.x - tint_symbol_37.tint_symbol_27.x)) <= 0.00000000999999993923f)) {
        var x_336 : f32;
        var x_351 : bool;
        var x_352 : bool;
        var x_358 : bool;
        var x_359 : bool;
        var x_365 : bool;
        var x_366 : bool;
        x_336 = ((tint_symbol_37.tint_symbol_25.x - tint_symbol_12.x) / tint_symbol_36.x);
        if ((x_336 > 0.0f)) {
          let x_341 = (tint_symbol_12 + (tint_symbol_36 * x_336));
          let x_345 = (tint_symbol_37.tint_symbol_25.y < x_341.y);
          x_352 = x_345;
          if (x_345) {
            x_351 = (x_341.y < tint_symbol_37.tint_symbol_27.y);
            x_352 = x_351;
          }
          x_359 = x_352;
          if (x_352) {
            x_358 = (tint_symbol_37.tint_symbol_25.z < x_341.z);
            x_359 = x_358;
          }
          x_366 = x_359;
          if (x_359) {
            x_365 = (x_341.z < tint_symbol_37.tint_symbol_27.z);
            x_366 = x_365;
          }
          if (x_366) {
            tint_symbol_39 = x_336;
          }
        }
      }
    }
  }
  if ((tint_symbol_39 < 0.0f)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_38, -1.0f);
  } else {
    if ((tint_symbol_38 < 0.0f)) {
      tint_return_flag_1 = true;
      tint_return_value_1 = vec2f(tint_symbol_39, 1.0f);
    } else {
      if ((tint_symbol_39 < tint_symbol_38)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_39, 1.0f);
      } else {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_38, -1.0f);
      }
    }
  }
  let x_390 = tint_return_value_1;
  return x_390;
}

fn tint_symbol_42(tint_symbol_36_1 : vec3f) -> vec3f {
  var tint_symbol_15_4 = vec3f();
  let x_399 = tint_symbol_32.inner.tint_symbol_14;
  let x_395 = tint_symbol_16(tint_symbol_36_1, x_399);
  tint_symbol_15_4 = x_395;
  let x_401 = tint_symbol_15_4;
  return x_401;
}

fn tint_symbol_43(tint_symbol_4_4 : vec3f) -> vec3f {
  var tint_symbol_15_5 = vec3f();
  let x_407 = tint_symbol_32.inner.tint_symbol_14;
  let x_405 = tint_symbol_13(tint_symbol_4_4, x_407);
  tint_symbol_15_5 = x_405;
  let x_409 = tint_symbol_15_5;
  return x_409;
}

fn tint_symbol_44(tint_symbol_12_1 : vec3f, tint_symbol_36_2 : vec3f) -> vec2f {
  var tint_symbol_40 = 0.0f;
  var tint_symbol_45 = 0.0f;
  var tint_symbol_46 = 0i;
  tint_symbol_40 = -1.0f;
  tint_symbol_45 = -1.0f;
  tint_symbol_46 = 0i;
  loop {
    if (!((tint_symbol_46 < 6i))) {
      break;
    }
    let x_434 = tint_symbol_33.inner.tint_symbol_31[tint_symbol_46];
    let x_435 = tint_symbol_40;
    let x_429 = tint_symbol_35(tint_symbol_12_1, tint_symbol_36_2, x_434, x_435);
    if ((x_429.y > 0.0f)) {
      tint_symbol_40 = x_429.x;
      tint_symbol_45 = f32(tint_symbol_46);
    }

    continuing {
      tint_symbol_46 = (tint_symbol_46 + 1i);
    }
  }
  let x_445 = tint_symbol_40;
  let x_446 = tint_symbol_45;
  return vec2f(x_445, x_446);
}

fn tint_symbol_48(tint_symbol_49 : vec2i, tint_symbol_40_1 : f32, tint_symbol_45_1 : i32) {
  var tint_symbol_50 = vec4f();
  if ((tint_symbol_40_1 > 0.0f)) {
    switch(tint_symbol_45_1) {
      case 5i: {
        tint_symbol_50 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
      }
      case 4i: {
        tint_symbol_50 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
      }
      case 3i: {
        tint_symbol_50 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
      }
      case 2i: {
        tint_symbol_50 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
      }
      case 1i: {
        tint_symbol_50 = vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
      }
      case 0i: {
        tint_symbol_50 = vec4f(0.90980392694473266602f, 0.46666666865348815918f, 0.13333334028720855713f, 1.0f);
      }
      default: {
        tint_symbol_50 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);
      }
    }
  } else {
    tint_symbol_50 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);
  }
  let x_496 = tint_symbol_50;
  textureStore(tint_symbol_34, tint_symbol_49, x_496);
  return;
}

fn tint_symbol_51_inner(tint_symbol_52 : vec3u) {
  var tint_symbol_55 = vec3f();
  var tint_symbol_56 = vec3f();
  var tint_symbol_57 = vec2f();
  var x_514 : bool;
  var x_515 : bool;
  let x_501 = bitcast<vec2i>(tint_symbol_52.xy);
  let x_504 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_34)));
  let x_509 = (x_501.x < x_504.x);
  x_515 = x_509;
  if (x_509) {
    x_514 = (x_501.y < x_504.y);
    x_515 = x_514;
  }
  if (x_515) {
    let x_524 = (vec2f(2.0f) / tint_symbol_32.inner.tint_symbol_23.xy);
    tint_symbol_55 = vec3f((((f32(x_501.x) + 0.5f) * x_524.x) - 1.0f), (((f32(x_501.y) + 0.5f) * x_524.y) - 1.0f), 0.0f);
    tint_symbol_56 = vec3f(0.0f, 0.0f, 1.0f);
    let x_543 = tint_symbol_55;
    let x_542 = tint_symbol_43(x_543);
    tint_symbol_55 = x_542;
    let x_545 = tint_symbol_56;
    let x_544 = tint_symbol_42(x_545);
    tint_symbol_56 = x_544;
    let x_547 = tint_symbol_55;
    let x_548 = tint_symbol_56;
    let x_546 = tint_symbol_44(x_547, x_548);
    tint_symbol_57 = x_546;
    let x_552 = tint_symbol_57.x;
    let x_556 = tint_symbol_57.y;
    let x_553 = tint_ftoi(x_556);
    tint_symbol_48(x_501, x_552, x_553);
  }
  return;
}

fn tint_symbol_51_1() {
  let x_561 = tint_symbol_52_1;
  tint_symbol_51_inner(x_561);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_52_1_param : vec3u) {
  tint_symbol_52_1 = tint_symbol_52_1_param;
  tint_symbol_51_1();
}

fn tint_symbol_58_inner(tint_symbol_52_3 : vec3u) {
  return;
}

fn tint_symbol_58_1() {
  let x_568 = tint_symbol_52_2;
  tint_symbol_58_inner(x_568);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_52_2_param : vec3u) {
  tint_symbol_52_2 = tint_symbol_52_2_param;
  tint_symbol_58_1();
}

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

struct tint_symbol_38_block {
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

struct tint_symbol_39_block {
  /* @offset(0) */
  inner : tint_symbol_29,
}

struct tint_symbol_32 {
  /* @offset(0) */
  tint_symbol_33 : vec4f,
  /* @offset(16) */
  tint_symbol_34 : vec4f,
  /* @offset(32) */
  tint_symbol_35 : vec4f,
  /* @offset(48) */
  tint_symbol_36 : vec4f,
  /* @offset(64) */
  tint_symbol_37 : vec4f,
}

struct tint_symbol_41_block {
  /* @offset(0) */
  inner : tint_symbol_32,
}

struct tint_symbol_62 {
  /* @offset(0) */
  tint_symbol_33 : vec4f,
  /* @offset(16) */
  tint_symbol_63 : vec3f,
}

var<private> tint_symbol_74_1 : vec3u;

var<private> tint_symbol_74_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_38 : tint_symbol_38_block;

@group(0) @binding(1) var<uniform> tint_symbol_39 : tint_symbol_39_block;

@group(0) @binding(2) var tint_symbol_40 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(3) var<uniform> tint_symbol_41 : tint_symbol_41_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_symbol_3(tint_symbol_4 : vec3f, tint_symbol_5 : f32, tint_symbol_6 : f32, tint_symbol_7 : f32) -> vec3f {
  return vec3f((tint_symbol_4.x + tint_symbol_5), (tint_symbol_4.y + tint_symbol_6), (tint_symbol_4.z + tint_symbol_7));
}

fn tint_symbol_8(tint_symbol_4_1 : vec3f, tint_symbol_9 : i32, tint_symbol_10 : f32) -> vec3f {
  var tint_return_flag = false;
  var tint_return_value = vec3f();
  let x_73 = cos(tint_symbol_10);
  let x_75 = sin(tint_symbol_10);
  switch(tint_symbol_9) {
    case 2i: {
      tint_return_flag = true;
      tint_return_value = vec3f(((tint_symbol_4_1.x * x_73) - (tint_symbol_4_1.y * x_75)), ((tint_symbol_4_1.x * x_75) + (tint_symbol_4_1.y * x_73)), tint_symbol_4_1.z);
    }
    case 1i: {
      tint_return_flag = true;
      tint_return_value = vec3f(((tint_symbol_4_1.x * x_73) + (tint_symbol_4_1.z * x_75)), tint_symbol_4_1.y, ((-(tint_symbol_4_1.x) * x_75) + (tint_symbol_4_1.z * x_73)));
    }
    case 0i: {
      tint_return_flag = true;
      tint_return_value = vec3f(tint_symbol_4_1.x, ((tint_symbol_4_1.y * x_73) - (tint_symbol_4_1.z * x_75)), ((tint_symbol_4_1.y * x_75) + (tint_symbol_4_1.z * x_73)));
    }
    default: {
      tint_return_flag = true;
      tint_return_value = tint_symbol_4_1;
    }
  }
  let x_119 = tint_return_value;
  return x_119;
}

fn tint_symbol_13(tint_symbol_4_2 : vec3f, tint_symbol_14 : tint_symbol) -> vec3f {
  var tint_symbol_15 = vec3f();
  let x_125 = tint_symbol_8(tint_symbol_4_2, 0i, tint_symbol_14.tint_symbol_2.x);
  tint_symbol_15 = x_125;
  let x_130 = tint_symbol_15;
  let x_129 = tint_symbol_8(x_130, 1i, tint_symbol_14.tint_symbol_2.y);
  tint_symbol_15 = x_129;
  let x_134 = tint_symbol_15;
  let x_133 = tint_symbol_8(x_134, 2i, tint_symbol_14.tint_symbol_2.z);
  tint_symbol_15 = x_133;
  let x_138 = tint_symbol_15;
  let x_137 = tint_symbol_3(x_138, tint_symbol_14.tint_symbol_1.x, tint_symbol_14.tint_symbol_1.y, tint_symbol_14.tint_symbol_1.z);
  tint_symbol_15 = x_137;
  let x_145 = tint_symbol_15;
  return x_145;
}

fn tint_symbol_16(tint_symbol_17 : vec3f, tint_symbol_14_1 : tint_symbol) -> vec3f {
  var tint_symbol_15_1 = vec3f();
  let x_150 = tint_symbol_8(tint_symbol_17, 0i, tint_symbol_14_1.tint_symbol_2.x);
  tint_symbol_15_1 = x_150;
  let x_155 = tint_symbol_15_1;
  let x_154 = tint_symbol_8(x_155, 1i, tint_symbol_14_1.tint_symbol_2.y);
  tint_symbol_15_1 = x_154;
  let x_159 = tint_symbol_15_1;
  let x_158 = tint_symbol_8(x_159, 2i, tint_symbol_14_1.tint_symbol_2.z);
  tint_symbol_15_1 = x_158;
  let x_162 = tint_symbol_15_1;
  return x_162;
}

fn tint_symbol_18(tint_symbol_4_3 : vec3f, tint_symbol_14_2 : tint_symbol) -> vec3f {
  var tint_symbol_15_2 = vec3f();
  let x_167 = tint_symbol_3(tint_symbol_4_3, -(tint_symbol_14_2.tint_symbol_1.x), -(tint_symbol_14_2.tint_symbol_1.y), -(tint_symbol_14_2.tint_symbol_1.z));
  tint_symbol_15_2 = x_167;
  let x_179 = tint_symbol_15_2;
  let x_178 = tint_symbol_8(x_179, 2i, -(tint_symbol_14_2.tint_symbol_2.z));
  tint_symbol_15_2 = x_178;
  let x_184 = tint_symbol_15_2;
  let x_183 = tint_symbol_8(x_184, 1i, -(tint_symbol_14_2.tint_symbol_2.y));
  tint_symbol_15_2 = x_183;
  let x_189 = tint_symbol_15_2;
  let x_188 = tint_symbol_8(x_189, 0i, -(tint_symbol_14_2.tint_symbol_2.x));
  tint_symbol_15_2 = x_188;
  let x_193 = tint_symbol_15_2;
  return x_193;
}

fn tint_symbol_19(tint_symbol_17_1 : vec3f, tint_symbol_14_3 : tint_symbol) -> vec3f {
  var tint_symbol_15_3 = vec3f();
  let x_198 = tint_symbol_8(tint_symbol_17_1, 2i, -(tint_symbol_14_3.tint_symbol_2.z));
  tint_symbol_15_3 = x_198;
  let x_204 = tint_symbol_15_3;
  let x_203 = tint_symbol_8(x_204, 1i, -(tint_symbol_14_3.tint_symbol_2.y));
  tint_symbol_15_3 = x_203;
  let x_209 = tint_symbol_15_3;
  let x_208 = tint_symbol_8(x_209, 0i, -(tint_symbol_14_3.tint_symbol_2.x));
  tint_symbol_15_3 = x_208;
  let x_213 = tint_symbol_15_3;
  return x_213;
}

fn tint_symbol_42(tint_symbol_12 : vec3f, tint_symbol_43 : vec3f, tint_symbol_44 : tint_symbol_24, tint_symbol_45 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_46 = 0.0f;
  tint_symbol_46 = -1.0f;
  if ((abs((tint_symbol_44.tint_symbol_25.z - tint_symbol_44.tint_symbol_27.z)) <= 0.00000000999999993923f)) {
    var x_245 : f32;
    var x_260 : bool;
    var x_261 : bool;
    var x_267 : bool;
    var x_268 : bool;
    var x_274 : bool;
    var x_275 : bool;
    x_245 = ((tint_symbol_44.tint_symbol_25.z - tint_symbol_12.z) / tint_symbol_43.z);
    if ((x_245 > 0.0f)) {
      let x_250 = (tint_symbol_12 + (tint_symbol_43 * x_245));
      let x_254 = (tint_symbol_44.tint_symbol_25.x < x_250.x);
      x_261 = x_254;
      if (x_254) {
        x_260 = (x_250.x < tint_symbol_44.tint_symbol_27.x);
        x_261 = x_260;
      }
      x_268 = x_261;
      if (x_261) {
        x_267 = (tint_symbol_44.tint_symbol_25.y < x_250.y);
        x_268 = x_267;
      }
      x_275 = x_268;
      if (x_268) {
        x_274 = (x_250.y < tint_symbol_44.tint_symbol_27.y);
        x_275 = x_274;
      }
      if (x_275) {
        tint_symbol_46 = x_245;
      }
    }
  } else {
    if ((abs((tint_symbol_44.tint_symbol_25.y - tint_symbol_44.tint_symbol_27.y)) <= 0.00000000999999993923f)) {
      var x_293 : f32;
      var x_308 : bool;
      var x_309 : bool;
      var x_315 : bool;
      var x_316 : bool;
      var x_322 : bool;
      var x_323 : bool;
      x_293 = ((tint_symbol_44.tint_symbol_25.y - tint_symbol_12.y) / tint_symbol_43.y);
      if ((x_293 > 0.0f)) {
        let x_298 = (tint_symbol_12 + (tint_symbol_43 * x_293));
        let x_302 = (tint_symbol_44.tint_symbol_25.x < x_298.x);
        x_309 = x_302;
        if (x_302) {
          x_308 = (x_298.x < tint_symbol_44.tint_symbol_27.x);
          x_309 = x_308;
        }
        x_316 = x_309;
        if (x_309) {
          x_315 = (tint_symbol_44.tint_symbol_25.z < x_298.z);
          x_316 = x_315;
        }
        x_323 = x_316;
        if (x_316) {
          x_322 = (x_298.z < tint_symbol_44.tint_symbol_27.z);
          x_323 = x_322;
        }
        if (x_323) {
          tint_symbol_46 = x_293;
        }
      }
    } else {
      if ((abs((tint_symbol_44.tint_symbol_25.x - tint_symbol_44.tint_symbol_27.x)) <= 0.00000000999999993923f)) {
        var x_340 : f32;
        var x_355 : bool;
        var x_356 : bool;
        var x_362 : bool;
        var x_363 : bool;
        var x_369 : bool;
        var x_370 : bool;
        x_340 = ((tint_symbol_44.tint_symbol_25.x - tint_symbol_12.x) / tint_symbol_43.x);
        if ((x_340 > 0.0f)) {
          let x_345 = (tint_symbol_12 + (tint_symbol_43 * x_340));
          let x_349 = (tint_symbol_44.tint_symbol_25.y < x_345.y);
          x_356 = x_349;
          if (x_349) {
            x_355 = (x_345.y < tint_symbol_44.tint_symbol_27.y);
            x_356 = x_355;
          }
          x_363 = x_356;
          if (x_356) {
            x_362 = (tint_symbol_44.tint_symbol_25.z < x_345.z);
            x_363 = x_362;
          }
          x_370 = x_363;
          if (x_363) {
            x_369 = (x_345.z < tint_symbol_44.tint_symbol_27.z);
            x_370 = x_369;
          }
          if (x_370) {
            tint_symbol_46 = x_340;
          }
        }
      }
    }
  }
  if ((tint_symbol_46 < 0.0f)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_45, -1.0f);
  } else {
    if ((tint_symbol_45 < 0.0f)) {
      tint_return_flag_1 = true;
      tint_return_value_1 = vec2f(tint_symbol_46, 1.0f);
    } else {
      if ((tint_symbol_46 < tint_symbol_45)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_46, 1.0f);
      } else {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_45, -1.0f);
      }
    }
  }
  let x_394 = tint_return_value_1;
  return x_394;
}

fn tint_symbol_49(tint_symbol_43_1 : vec3f) -> vec3f {
  var tint_symbol_15_4 = vec3f();
  let x_403 = tint_symbol_38.inner.tint_symbol_14;
  let x_399 = tint_symbol_16(tint_symbol_43_1, x_403);
  tint_symbol_15_4 = x_399;
  let x_405 = tint_symbol_15_4;
  return x_405;
}

fn tint_symbol_50(tint_symbol_4_4 : vec3f) -> vec3f {
  var tint_symbol_15_5 = vec3f();
  let x_411 = tint_symbol_38.inner.tint_symbol_14;
  let x_409 = tint_symbol_13(tint_symbol_4_4, x_411);
  tint_symbol_15_5 = x_409;
  let x_413 = tint_symbol_15_5;
  return x_413;
}

fn tint_symbol_51(tint_symbol_52 : vec3f) -> vec3f {
  var tint_symbol_15_6 = vec3f();
  tint_symbol_15_6 = (tint_symbol_52 * tint_symbol_39.inner.tint_symbol_30.xyz);
  let x_425 = tint_symbol_15_6;
  let x_427 = tint_symbol_39.inner.tint_symbol_14;
  let x_424 = tint_symbol_16(x_425, x_427);
  tint_symbol_15_6 = x_424;
  let x_429 = tint_symbol_15_6;
  return normalize(x_429);
}

fn tint_symbol_53(tint_symbol_4_5 : vec3f) -> vec3f {
  var tint_symbol_15_7 = vec3f();
  tint_symbol_15_7 = (tint_symbol_4_5 * tint_symbol_39.inner.tint_symbol_30.xyz);
  let x_439 = tint_symbol_15_7;
  let x_441 = tint_symbol_39.inner.tint_symbol_14;
  let x_438 = tint_symbol_13(x_439, x_441);
  tint_symbol_15_7 = x_438;
  let x_442 = tint_symbol_15_7;
  return x_442;
}

fn tint_symbol_54(tint_symbol_12_1 : vec3f, tint_symbol_43_2 : vec3f) -> vec2f {
  var tint_symbol_47 = 0.0f;
  var tint_symbol_55 = 0.0f;
  var tint_symbol_56 = 0i;
  tint_symbol_47 = -1.0f;
  tint_symbol_55 = -1.0f;
  tint_symbol_56 = 0i;
  loop {
    if (!((tint_symbol_56 < 6i))) {
      break;
    }
    let x_467 = tint_symbol_39.inner.tint_symbol_31[tint_symbol_56];
    let x_468 = tint_symbol_47;
    let x_462 = tint_symbol_42(tint_symbol_12_1, tint_symbol_43_2, x_467, x_468);
    if ((x_462.y > 0.0f)) {
      tint_symbol_47 = x_462.x;
      tint_symbol_55 = f32(tint_symbol_56);
    }

    continuing {
      tint_symbol_56 = (tint_symbol_56 + 1i);
    }
  }
  let x_478 = tint_symbol_47;
  let x_479 = tint_symbol_55;
  return vec2f(x_478, x_479);
}

const x_484 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_58() -> vec4f {
  return x_484;
}

fn tint_symbol_59(tint_symbol_55_1 : i32) -> vec4f {
  var tint_symbol_60 = vec4f();
  switch(tint_symbol_55_1) {
    case 5i: {
      tint_symbol_60 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
    }
    case 4i: {
      tint_symbol_60 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
    }
    case 3i: {
      tint_symbol_60 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
    }
    case 2i: {
      tint_symbol_60 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
    }
    case 1i: {
      tint_symbol_60 = vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
    }
    case 0i: {
      tint_symbol_60 = vec4f(0.90980392694473266602f, 0.46666666865348815918f, 0.13333334028720855713f, 1.0f);
    }
    default: {
      tint_symbol_60 = x_484;
    }
  }
  let x_519 = tint_symbol_60;
  return x_519;
}

const x_536 = vec3f(0.0f, -1.0f, 0.0f);

const x_535 = vec3f(-1.0f, 0.0f, 0.0f);

const x_534 = vec3f(0.0f, 0.0f, -1.0f);

fn tint_symbol_61(tint_symbol_55_2 : i32) -> vec3f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec3f();
  switch(tint_symbol_55_2) {
    case 5i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_536;
    }
    case 4i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_536;
    }
    case 3i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_535;
    }
    case 2i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_535;
    }
    case 1i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_534;
    }
    case 0i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_534;
    }
    default: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f();
    }
  }
  let x_537 = tint_return_value_2;
  return x_537;
}

fn tint_symbol_64(tint_symbol_65 : vec3f, tint_symbol_66 : vec3f, tint_symbol_67 : vec3f, tint_symbol_68 : vec3f) -> tint_symbol_62 {
  var tint_symbol_33 = vec4f();
  var tint_symbol_69 = 0.0f;
  var tint_symbol_15_8 = tint_symbol_62(vec4f(), vec3f());
  var x_581 = vec4f();
  var tint_symbol_71 = vec3f();
  var tint_symbol_71_1 = vec3f();
  var x_648 = vec4f();
  tint_symbol_33 = tint_symbol_41.inner.tint_symbol_33;
  tint_symbol_69 = length((tint_symbol_67 - tint_symbol_65));
  if ((tint_symbol_41.inner.tint_symbol_37.w < 1.0f)) {
    tint_symbol_33 = (tint_symbol_33 / vec4f(((tint_symbol_41.inner.tint_symbol_36[0i] + (tint_symbol_69 * tint_symbol_41.inner.tint_symbol_36.y)) + ((tint_symbol_69 * tint_symbol_69) * tint_symbol_41.inner.tint_symbol_36.z))));
    tint_symbol_71 = normalize((tint_symbol_67 - tint_symbol_65));
    tint_symbol_15_8.tint_symbol_33 = (tint_symbol_33 * max(dot(tint_symbol_71, -(tint_symbol_68)), 0.0f));
    tint_symbol_15_8.tint_symbol_63 = tint_symbol_71;
  } else {
    if ((tint_symbol_41.inner.tint_symbol_37.w < 2.0f)) {
      tint_symbol_15_8.tint_symbol_63 = normalize(tint_symbol_66);
      tint_symbol_15_8.tint_symbol_33 = (tint_symbol_33 * max(dot(tint_symbol_15_8.tint_symbol_63, -(tint_symbol_68)), 0.0f));
    } else {
      if ((tint_symbol_41.inner.tint_symbol_37.w < 3.0f)) {
        tint_symbol_71_1 = normalize((tint_symbol_67 - tint_symbol_65));
        let x_621 = abs(dot(normalize(tint_symbol_66), tint_symbol_71_1));
        if ((x_621 > cos(tint_symbol_41.inner.tint_symbol_37[0i]))) {
          tint_symbol_33 = (tint_symbol_33 / vec4f(((tint_symbol_41.inner.tint_symbol_36[0i] + (tint_symbol_69 * tint_symbol_41.inner.tint_symbol_36.y)) + ((tint_symbol_69 * tint_symbol_69) * tint_symbol_41.inner.tint_symbol_36.z))));
          tint_symbol_33 = (tint_symbol_33 * pow(x_621, tint_symbol_41.inner.tint_symbol_37.y));
        } else {
          tint_symbol_33 = (tint_symbol_33 * 0.0f);
        }
        tint_symbol_15_8.tint_symbol_33 = (tint_symbol_33 * max(dot(tint_symbol_71_1, -(tint_symbol_68)), 0.0f));
        tint_symbol_15_8.tint_symbol_63 = tint_symbol_71_1;
      }
    }
  }
  let x_666 = tint_symbol_15_8;
  return x_666;
}

fn tint_symbol_73_inner(tint_symbol_74 : vec3u) {
  var tint_symbol_78 = vec3f();
  var tint_symbol_79 = vec3f();
  var tint_symbol_80 = vec2f();
  var tint_symbol_60_1 = vec4f();
  var tint_symbol_82 = vec4f();
  var tint_symbol_83 = vec3f();
  var tint_symbol_84 = vec3f();
  var x_686 : bool;
  var x_687 : bool;
  let x_672 = bitcast<vec2i>(tint_symbol_74.xy);
  let x_676 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_40)));
  let x_681 = (x_672.x < x_676.x);
  x_687 = x_681;
  if (x_681) {
    x_686 = (x_672.y < x_676.y);
    x_687 = x_686;
  }
  if (x_687) {
    let x_695 = (vec2f(2.0f) / tint_symbol_38.inner.tint_symbol_23.xy);
    tint_symbol_78 = vec3f((((f32(x_672.x) + 0.5f) * x_695.x) - 1.0f), (((f32(x_672.y) + 0.5f) * x_695.y) - 1.0f), 0.0f);
    tint_symbol_79 = vec3f(0.0f, 0.0f, 1.0f);
    let x_714 = tint_symbol_78;
    let x_713 = tint_symbol_50(x_714);
    tint_symbol_78 = x_713;
    let x_716 = tint_symbol_79;
    let x_715 = tint_symbol_49(x_716);
    tint_symbol_79 = x_715;
    let x_718 = tint_symbol_78;
    let x_719 = tint_symbol_79;
    let x_717 = tint_symbol_54(x_718, x_719);
    tint_symbol_80 = x_717;
    tint_symbol_60_1 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);
    if ((tint_symbol_80.x > 0.0f)) {
      let x_730 = tint_symbol_58();
      let x_734 = tint_symbol_80.y;
      let x_732 = tint_ftoi(x_734);
      let x_731 = tint_symbol_59(x_732);
      tint_symbol_82 = x_731;
      let x_739 = tint_symbol_80.y;
      let x_737 = tint_ftoi(x_739);
      let x_736 = tint_symbol_61(x_737);
      tint_symbol_83 = x_736;
      let x_742 = tint_symbol_83;
      let x_741 = tint_symbol_51(x_742);
      tint_symbol_83 = x_741;
      let x_745 = tint_symbol_41.inner.tint_symbol_34;
      let x_748 = tint_symbol_38.inner.tint_symbol_14;
      let x_743 = tint_symbol_18(x_745.xyz, x_748);
      let x_751 = tint_symbol_41.inner.tint_symbol_35;
      let x_754 = tint_symbol_38.inner.tint_symbol_14;
      let x_749 = tint_symbol_19(x_751.xyz, x_754);
      tint_symbol_84 = (tint_symbol_78 + (tint_symbol_79 * tint_symbol_80.x));
      let x_763 = tint_symbol_84;
      let x_762 = tint_symbol_53(x_763);
      tint_symbol_84 = x_762;
      let x_765 = tint_symbol_84;
      let x_766 = tint_symbol_83;
      let x_764 = tint_symbol_64(x_743, x_749, x_765, x_766);
      tint_symbol_82 = (tint_symbol_82 * x_764.tint_symbol_33);
      tint_symbol_60_1 = (x_730 + tint_symbol_82);
    }
    let x_774 = tint_symbol_60_1;
    textureStore(tint_symbol_40, x_672, x_774);
  }
  return;
}

fn tint_symbol_73_1() {
  let x_779 = tint_symbol_74_1;
  tint_symbol_73_inner(x_779);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_74_1_param : vec3u) {
  tint_symbol_74_1 = tint_symbol_74_1_param;
  tint_symbol_73_1();
}

fn tint_symbol_86_inner(tint_symbol_74_3 : vec3u) {
  return;
}

fn tint_symbol_86_1() {
  let x_786 = tint_symbol_74_2;
  tint_symbol_86_inner(x_786);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_74_2_param : vec3u) {
  tint_symbol_74_2 = tint_symbol_74_2_param;
  tint_symbol_86_1();
}

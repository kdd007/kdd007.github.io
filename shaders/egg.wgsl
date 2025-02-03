@vertex fn main() -> [[location(0)]] vec4<f32> {
        return vec4<f32>(0.0, 0.0, 1.0, 1.0);  // RGB, fully opaque triangle
      }
@fragment fn main() -> [[location(0)]] vec4<f32> {
        return vec4<f32>(0.0, 1.0, 0.0, 0.5);  // RGBA, semi-transparent green
      }
async function init() {
  // Create a canvas tag
  const canvasTag = document.createElement('canvas');
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  // Modify the canvas size
  const devicePixelRatio = window.devicePixelRatio || 1;
  const width = window.innerWidth * devicePixelRatio;
  const height = window.innerHeight * devicePixelRatio;
  canvasTag.width = width;
  canvasTag.height = height; 
  // Modify the canvas using CSS
  // canvasTag.style.width = `${window.innerWidth}px`;
  // canvasTag.style.height = `${window.innerHeight}px`;
  canvasTag.style.width = `${800}px`;
  canvasTag.style.height = `${600}px`;
  document.body.style.display = 'flex';
  document.body.style.justifyContent = 'center';
  document.body.style.alignItems = 'center';
  document.body.style.height = '100vh';
  document.body.style.margin = '0'; // Remove default margin
  // Check if it supports WebGPU
  if (!navigator.gpu) {
    throw Error("WebGPU is not supported in this browser.");
  }
  // Get an GPU adapter
  const adapter = await navigator.gpu.requestAdapter();
  if (!adapter) {
    throw Error("Couldn't request WebGPU adapter.");
  }
  // Get a GPU device
  const device = await adapter.requestDevice();
  // Get canvas context using webgpu
  const context = canvasTag.getContext("webgpu");
  const canvasFormat = navigator.gpu.getPreferredCanvasFormat();
  context.configure({
    device: device,
    format: canvasFormat,
  });
  // Create a gpu command encoder
  const encoder = device.createCommandEncoder();
  // Use the encoder to begin render pass
  const pass = encoder.beginRenderPass({
    colorAttachments: [{
      view: context.getCurrentTexture().createView(),
      // clearValue: { r: 0, g: 56/255, b: 101/255, a: 1 }, // Bucknell Blue
      clearValue: { r: 200, g: 16/255, b: 46/255, a: 1 },
      loadOp: "clear",
      storeOp: "store",
    }]
  });
  // Vertex shader
  var vertCode = `
  @vertex // this compute the scene coordinate of each input vertex
  fn vertexMain(@location(0) pos: vec2f) -> @builtin(position) vec4f {
    return vec4f(pos, 0, 1); // (pos, Z, W) = (X, Y, Z, W)
  }
  `;
  // Fragment shader
  var fragCode = `
  @fragment // this compute the color of each pixel
  fn fragmentMain() -> @location(0) vec4f {
    return vec4f(255.f/255, 205.f/255, 0.f/255, 1); // (R, G, B, A)
  }
  `;
  // return vec4f(238.f/255, 118.f/255, 35.f/255, 1); // (R, G, B, A)
  // Create shader module
  var shaderModule = device.createShaderModule({
    label: "Shader",
    code: vertCode + '\n' + fragCode,
  }); 
  ///////////////////////////////// Start
  // Fragment shader
  var fragCode2 = `
  @fragment // this compute the color of each pixel
  fn fragmentMain() -> @location(0) vec4f {
    return vec4f(213.f/255, 171.f/255, 0.f/255, 1); // (R, G, B, A)
  }
  `;
  // Fragment shader
  var fragCode3 = `
  @fragment // this compute the color of each pixel
  fn fragmentMain() -> @location(0) vec4f {
    return vec4f(30.f/255, 30.f/255, 30.f/255, 1); // (R, G, B, A)
  }
  `;
  // Fragment shader
  var fragCode4 = `
  @fragment // this compute the color of each pixel
  fn fragmentMain() -> @location(0) vec4f {
    return vec4f(239.f/255, 218.f/255, 204.f/255, 1); // (R, G, B, A)
  }
  `;

  // Create shader module
  var shaderModule2 = device.createShaderModule({
    label: "Shader",
    code: vertCode + '\n' + fragCode2,
  }); 

  var shaderModule3 = device.createShaderModule({
    label: "Shader",
    code: vertCode + '\n' + fragCode3,
  });
  
  var shaderModule4 = device.createShaderModule({
    label: "Shader",
    code: vertCode + '\n' + fragCode4,
  });


  ////////////////////////////////// End
  // Create a triangle geometry in CPU
  var vertices = new Float32Array([
     // x, y
    //  0.5, 0.5,
    //  0.5, -0.5,
    //  -0.5, 0.5,

    //  -0.5, -0.5,
    //  0.5, -0.5,
    //  -0.5, 0.5,

    0,0, //Top
    0,0.5,
    0.117,0.151,

    // 0,0,
    // 0,0.5,
    // -0.117,0.151,

    0,0, //Left
    -0.4755,0.1545,
    -0.10745,0.15794,

    // 0,0,
    // -0.4755, 0.1545,
    // -0.17976, -0.06461,

    0,0, //Right
    -0.2939,-0.4045,
    -0.1834,-0.05339,

    // 0,0,
    // -0.2939,-0.4045,
    // 0.0059,-0.19093,
    
    0,0, // Left Bot
    0.2939,-0.4045,
    -0.0059,-0.19093,

    // 0,0,
    // 0.2939,-0.4045,
    // 0.1834,-0.05339,

    0,0, //Right Bot
    0.4755, 0.1545,
    0.17976, -0.06461,

    // 0,0,
    // 0.4755, 0.1545,
    // 0.10745, 0.15794,



  ]);

  //////////////////////////////
  var vertices2 = new Float32Array([
    // x, y

   0,0,
   0,0.5,
   -0.117,0.151,

   0,0,
   -0.4755, 0.1545,
   -0.17976, -0.06461,

   0,0,
   -0.2939,-0.4045,
   0.0059,-0.19093,

   0,0,
   0.2939,-0.4045,
   0.1834,-0.05339,

   0,0,
   0.4755, 0.1545,
   0.10745, 0.15794,

 ]);

 var vertices3 = new Float32Array([
//     // x, y
//   //  0.5, 0.5,
//   //  0.5, -0.5,
//   //  -0.5, 0.5,

//   //  -0.5, -0.5,
//   //  0.5, -0.5,
//   //  -0.5, 0.5,

    0.75, 0.25,
    0.70, 0.5,
    0.65, 0.25,

    0.75, 0.25,
    0.70, 0,
    0.65, 0.25,

    -0.75, 0.25,
    -0.70, 0.5,
    -0.65, 0.25,

    -0.75, 0.25,
    -0.70, 0,
    -0.65, 0.25,

  ]);

  var vertices4 = new Float32Array([
    // x, y

    1,-1,
    0.1939,-0.4045,
    0.1939, -1,

    -1,-1,
    -0.1939,-0.4045,
    -0.1939, -1,

    -0.1939,-0.4045,
    -0.1939, -1,
    0.1939, -1,

    -0.1939,-0.4045,
    -0.1939, -1,
    0.1939, -1,

    0.1939,-0.4045,
    0.1939, -1,
    -0.1939, -1,

    0.75, -0.3,
    0.75, -0.4,
    0.80, -0.3,

    0.80, -0.4,
    0.75, -0.4,
    0.80, -0.3,

    -0.75, -0.3,
    -0.75, -0.4,
    -0.80, -0.3,

    -0.80, -0.4,
    -0.75, -0.4,
    -0.80, -0.3,

  ]);

  ///////////////////////////// End
  // Create vertex buffer to store the vertices in GPU
  var vertexBuffer = device.createBuffer({
    label: "Vertices",
    size: vertices.byteLength,
    usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
  });
  // Copy from CPU to GPU
  device.queue.writeBuffer(vertexBuffer, 0, vertices);
  // Defne vertex buffer layout - how the shader should read the buffer
  var vertexBufferLayout = {
    arrayStride: 2 * Float32Array.BYTES_PER_ELEMENT,
    attributes: [{
      format: "float32x2", // 32 bits, each has two coordiantes
      offset: 0,
      shaderLocation: 0, // position in the vertex shader
    }],
  };
  // Use the module to create a render pipeline
  var renderPipeline = device.createRenderPipeline({
    label: "Render Pipeline",
    layout: "auto", // we will talk about layout later
    vertex: {
      module: shaderModule,         // the shader module
      entryPoint: "vertexMain",     // where the vertex shader starts
      buffers: [vertexBufferLayout] // the buffer layout - more about it soon
    },
    fragment: {
      module: shaderModule,         // the shader module
      entryPoint: "fragmentMain",   // where the fragment shader starts
      targets: [{
        format: canvasFormat        // the target canvas format (the output)
      }]
    }
  }); 
  // add more render pass to draw the plane
  pass.setPipeline(renderPipeline);      // which render pipeline to use
  pass.setVertexBuffer(0, vertexBuffer); // which vertex buffer is used at location 0
  pass.draw(vertices.length / 2);        // how many vertices to draw

///////////////////////Start
  // Create vertex buffer to store the vertices in GPU
  var vertexBuffer2 = device.createBuffer({
    label: "Vertices",
    size: vertices2.byteLength,
    usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
  });
  // Copy from CPU to GPU
  device.queue.writeBuffer(vertexBuffer2, 0, vertices2);
  // Defne vertex buffer layout - how the shader should read the buffer
  var vertexBufferLayout2 = {
    arrayStride: 2 * Float32Array.BYTES_PER_ELEMENT,
    attributes: [{
      format: "float32x2", // 32 bits, each has two coordiantes
      offset: 0,
      shaderLocation: 0, // position in the vertex shader
    }],
  };
  // Use the module to create a render pipeline
  var renderPipeline2 = device.createRenderPipeline({
    label: "Render Pipeline",
    layout: "auto", // we will talk about layout later
    vertex: {
      module: shaderModule2,         // the shader module
      entryPoint: "vertexMain",     // where the vertex shader starts
      buffers: [vertexBufferLayout2] // the buffer layout - more about it soon
    },
    fragment: {
      module: shaderModule2,         // the shader module
      entryPoint: "fragmentMain",   // where the fragment shader starts
      targets: [{
        format: canvasFormat        // the target canvas format (the output)
      }]
    }
  }); 
  // add more render pass to draw the plane
  pass.setPipeline(renderPipeline2);      // which render pipeline to use
  pass.setVertexBuffer(0, vertexBuffer2); // which vertex buffer is used at location 0
  pass.draw(vertices2.length / 2);        // how many vertices to draw
///////////////////////End

///////////////////////Start
  // Create vertex buffer to store the vertices in GPU
  var vertexBuffer3 = device.createBuffer({
    label: "Vertices",
    size: vertices3.byteLength,
    usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
  });
  // Copy from CPU to GPU
  device.queue.writeBuffer(vertexBuffer3, 0, vertices3);
  // Defne vertex buffer layout - how the shader should read the buffer
  var vertexBufferLayout3 = {
    arrayStride: 2 * Float32Array.BYTES_PER_ELEMENT,
    attributes: [{
      format: "float32x2", // 32 bits, each has two coordiantes
      offset: 0,
      shaderLocation: 0, // position in the vertex shader
    }],
  };
  // Use the module to create a render pipeline
  var renderPipeline3 = device.createRenderPipeline({
    label: "Render Pipeline",
    layout: "auto", // we will talk about layout later
    vertex: {
      module: shaderModule3,         // the shader module
      entryPoint: "vertexMain",     // where the vertex shader starts
      buffers: [vertexBufferLayout3] // the buffer layout - more about it soon
    },
    fragment: {
      module: shaderModule3,         // the shader module
      entryPoint: "fragmentMain",   // where the fragment shader starts
      targets: [{
        format: canvasFormat        // the target canvas format (the output)
      }]
    }
  }); 
  // add more render pass to draw the plane
  pass.setPipeline(renderPipeline3);      // which render pipeline to use
  pass.setVertexBuffer(0, vertexBuffer3); // which vertex buffer is used at location 0
  pass.draw(vertices3.length / 2);        // how many vertices to draw
///////////////////////End
///////////////////////Start
  // Create vertex buffer to store the vertices in GPU
  var vertexBuffer4 = device.createBuffer({
    label: "Vertices",
    size: vertices4.byteLength,
    usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
  });
  // Copy from CPU to GPU
  device.queue.writeBuffer(vertexBuffer4, 0, vertices4);
  // Defne vertex buffer layout - how the shader should read the buffer
  var vertexBufferLayout4 = {
    arrayStride: 2 * Float32Array.BYTES_PER_ELEMENT,
    attributes: [{
      format: "float32x2", // 32 bits, each has two coordiantes
      offset: 0,
      shaderLocation: 0, // position in the vertex shader
    }],
  };
  // Use the module to create a render pipeline
  var renderPipeline4 = device.createRenderPipeline({
    label: "Render Pipeline",
    layout: "auto", // we will talk about layout later
    vertex: {
      module: shaderModule4,         // the shader module
      entryPoint: "vertexMain",     // where the vertex shader starts
      buffers: [vertexBufferLayout4] // the buffer layout - more about it soon
    },
    fragment: {
      module: shaderModule4,         // the shader module
      entryPoint: "fragmentMain",   // where the fragment shader starts
      targets: [{
        format: canvasFormat        // the target canvas format (the output)
      }]
    }
  }); 
  // add more render pass to draw the plane
  pass.setPipeline(renderPipeline4);      // which render pipeline to use
  pass.setVertexBuffer(0, vertexBuffer4); // which vertex buffer is used at location 0
  pass.draw(vertices4.length / 2);        // how many vertices to draw
///////////////////////End


  pass.end(); // end the pass
  // Create the command buffer
  const commandBuffer = encoder.finish();
  // Submit to the device to render
  device.queue.submit([commandBuffer]);
  return context;
}

init().then( ret => {
  console.log(ret);
}).catch( error => {
  const pTag = document.createElement('p');
  pTag.innerHTML = navigator.userAgent + "</br>" + error.message;
  document.body.appendChild(pTag);
  document.getElementById("renderCanvas").remove();
});
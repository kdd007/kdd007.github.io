export default class Renderer {
  constructor(canvas) {
    this._canvas = canvas;
    this._objects = [];
    this._clearColor = { r: 0, g: 56 / 255, b: 101 / 255, a: 0 }; // Transparent background (if needed)
  }

  async init() {
    // Check if WebGPU is supported
    if (!navigator.gpu) {
      throw Error("WebGPU is not supported in this browser.");
    }
    // Get GPU adapter
    const adapter = await navigator.gpu.requestAdapter();
    if (!adapter) {
      throw Error("Couldn't request WebGPU adapter.");
    }
    // Get GPU device
    this._device = await adapter.requestDevice();
    // Get and set the context
    this._context = this._canvas.getContext("webgpu");
    this._canvasFormat = navigator.gpu.getPreferredCanvasFormat();
    this._context.configure({
      device: this._device,
      format: this._canvasFormat,
      alphamode:"premultiplied"
    });
    this.resizeCanvas();
    window.addEventListener('resize', this.resizeCanvas.bind(this));
  }

  resizeCanvas() {
    // Resize canvas to fit the window
    const devicePixelRatio = window.devicePixelRatio || 1;
    const width = window.innerWidth * devicePixelRatio;
    const height = window.innerHeight * devicePixelRatio;
    this._canvas.width = width;
    this._canvas.height = height;
    this._canvas.style.width = `${950}px`;
    this._canvas.style.height = `${950}px`;
    this.render();
  }

  async appendSceneObject(obj) {
    await obj.init();
    this._objects.push(obj);
  }

  renderToSelectedView(outputView) {
    // Update geometry of objects
    for (const obj of this._objects) {
      obj?.updateGeometry();
    }

    // Create a GPU command encoder
    let encoder = this._device.createCommandEncoder();
    
    // Set up render pass with alpha blending enabled
    const pass = encoder.beginRenderPass({
      colorAttachments: [{
        view: outputView,
        clearValue: this._clearColor, // Transparent background
        loadOp: "clear", // Clear previous content
        storeOp: "store", // Store content after rendering
      }]
    });

    // Render each object
    for (const obj of this._objects) {
      obj?.render(pass);
    }

    pass.end();

    // Compute pass (if needed, for example, for shaders that require computation)
    const computePass = encoder.beginComputePass();
    for (const obj of this._objects) {
      obj?.compute(computePass);
    }
    computePass.end();

    // Finish the command buffer and submit the work to GPU
    const commandBuffer = encoder.finish();
    this._device.queue.submit([commandBuffer]);
  }

  render() {
    // Render to the currently active texture (framebuffer)
    this.renderToSelectedView(this._context.getCurrentTexture().createView());
  }
}

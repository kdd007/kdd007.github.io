// circleMaker.js
export default function sunMaker(r, g, b, radius) {
    let numPoints = 10000;
    let angle = (2 * Math.PI) / numPoints;
    let circRadius = radius;
    let xOrigin = 0;
    let yOrigin = 0;
    let rVal = r / 255;
    let gVal = g / 255;
    let bVal = b / 255;
    let alpha = 1;
    let vertices = new Float32Array(numPoints * 3 * 6); // 3 vertices per triangle, 6 values per vertex

    for (let i = 0; i < numPoints; i++) {
        const t1 = i * angle; // Angle for the first 
        const t2 = ((i + 1) % numPoints) * angle; // Angle for the second 

        // First vertex
        vertices[i * 18] = xOrigin; // x-coordinate
        vertices[i * 18 + 1] = yOrigin; // y-coordinate
        vertices[i * 18 + 2] = rVal; // Red
        vertices[i * 18 + 3] = gVal; // Green
        vertices[i * 18 + 4] = bVal; // Blue
        vertices[i * 18 + 5] = alpha; // Alpha

        // Second vertex
        vertices[i * 18 + 6] = (circRadius * Math.cos(t2) + xOrigin); // x-coordinate
        vertices[i * 18 + 7] = (circRadius * Math.sin(t1) + yOrigin); // y-coordinate
        vertices[i * 18 + 8] = rVal; // Red
        vertices[i * 18 + 9] = gVal; // Green
        vertices[i * 18 + 10] = bVal; // Blue
        vertices[i * 18 + 11] = alpha; // Alpha

        // Third vertex
        vertices[i * 18 + 12] = (circRadius * Math.cos(t1) + xOrigin); // x-coordinate
        vertices[i * 18 + 13] = (circRadius * Math.sin(t2) + yOrigin); // y-coordinate
        vertices[i * 18 + 14] = rVal; // Red
        vertices[i * 18 + 15] = gVal; // Green
        vertices[i * 18 + 16] = bVal; // Blue
        vertices[i * 18 + 17] = alpha; // Alpha
    }
    return vertices;
}

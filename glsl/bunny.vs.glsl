#version 300 es

precision highp float;
precision highp int;

// The uniform variable is set up in the javascript code and the same for all vertices
uniform vec3 bunnyPosition;
uniform vec3 jumpPosition;

// HINT: YOU WILL NEED AN ADDITIONAL UNIFORM VARIABLE TO MAKE THE BUNNY HOP

// Create shared variable for the vertex and fragment shaders
out vec3 interpolatedNormal;

void main() {
    // Set shared variable to vertex normal
    interpolatedNormal = normal;

    // Multiply each vertex by the model matrix to get the world position of each vertex, then the view matrix to get the position in the camera coordinate system, and finally the projection matrix to get final vertex position
    gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4(bunnyPosition.x, jumpPosition.y, bunnyPosition.z, 0));
//    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}
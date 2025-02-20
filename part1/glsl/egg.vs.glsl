#version 300 es

// HINT: YOU WILL NEED TO PASS IN THE CORRECT UNIFORM AND CREATE THE CORRECT SHARED VARIABLE
uniform vec3 bunnyPosition;
out vec4 ePos;
out vec3 interpolatedNormal;

void main() {
  	// HINT: BE MINDFUL OF WHICH COORDINATE SYSTEM THE BUNNY'S POSITION IS IN
    ePos = modelMatrix * vec4(position, 1.0);
    interpolatedNormal = normal;

    // Multiply each vertex by the model matrix to get the world position of each vertex, then the view matrix to get the position in the camera coordinate system, and finally the projection matrix to get final vertex position
    gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}
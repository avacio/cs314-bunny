#version 300 es

precision highp float;
precision highp int;
out vec4 out_FragColor; 

//uniform vec3 bunnyPosition; // TODO
// HINT: YOU WILL NEED TO PASS IN THE CORRECT VARYING (SHARED) VARIABLE)
//in vec3 interpolatedNormal; // TODO

void main() {

  // HINT: YOU WILL NEED TO SET YOUR OWN DISTANCE THRESHOLD

  // Set constant color red
  out_FragColor = vec4(1.0, 0.0, 0.0, 1.0); // REPLACE ME
//  out_FragColor = vec4(interpolatedNormal.x, interpolatedNormal.y, interpolatedNormal.z, 1.0); // REPLACE ME
}
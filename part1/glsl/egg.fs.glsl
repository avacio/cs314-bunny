#version 300 es

precision highp float;
precision highp int;

// HINT: YOU WILL NEED TO PASS IN THE CORRECT VARYING (SHARED) VARIABLE)
uniform vec3 bunnyPosition;
in vec4 ePos;
in vec3 interpolatedNormal;
out vec4 out_FragColor; 

void main() {
    float threshold = distance(ePos, vec4(bunnyPosition,0));

    if (threshold > 3.0) {
      out_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
      } else {
        out_FragColor = vec4(1.0-interpolatedNormal.x, 1.0-interpolatedNormal.y, 1.0-interpolatedNormal.z, 1.0);
    }
}
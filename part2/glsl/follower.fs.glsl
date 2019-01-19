#version 300 es

precision highp float;
precision highp int;
uniform float timeElapsed;
uniform vec4 bunnyPosition;

out vec4 out_FragColor;

// Create shared variable. The value is given as the interpolation between normals computed in the vertex shader
in vec3 interpolatedNormal;

//vec4 colorShift(vec4 in_color) {
//    vec4 c = vec4(sin(timeElapsed), cos(in_color.y), sin(timeElapsed), 1.0);
//    return c;
//}

void main() {
//  out_FragColor = vec4(interpolatedNormal.x, interpolatedNormal.y, interpolatedNormal.z, 1.0);
//  out_FragColor = vec4(sin(timeElapsed), interpolatedNormal.y, sin(timeElapsed), 1.0);
out_FragColor = vec4(sin(bunnyPosition.x), cos(bunnyPosition.y), sin(bunnyPosition.z), 0.5);
//    out_FragColor = vec4(sin(timeElapsed), cos(in_color.y), sin(timeElapsed), 1.0);
//    out_FragColor = vec4(1.0, 1.0, 1.0, 1.0);

//    out_FragColor =  colorShift()
}
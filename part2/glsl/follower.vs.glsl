#version 300 es

precision highp float;
precision highp int;

uniform float timeElapsed;
uniform vec4 bunnyPosition;

out vec3 interpolatedNormal;
//
//float distort(vec3 p) {
//    float w = 100.0;
//    float d = -0/5;
//
//    for (float f =1.0; f <=10.0; f++) {
//        float power = pow (2.0, f);
//        d += abs();
//    }
//    return d;
//}

void main() {
    // Set shared variable to vertex normal
    interpolatedNormal = normal;

    // Multiply each vertex by the model matrix to get the world position of each vertex, then the view matrix to get the position in the camera coordinate system, and finally the projection matrix to get final vertex position
//    gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4(position.x, sin(timeElapsed), position.z, 0));
    if (position.x > bunnyPosition.x && position.z > bunnyPosition.z)
        gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4(bunnyPosition.x + 5.0, position.y, position.z, 1.0));
    else if (position.x > bunnyPosition.x && position.z < bunnyPosition.z)
            gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4((bunnyPosition.x -3.0)/2.0, position.y, bunnyPosition.z - 3.0, 1.0));
    else if (position.x < bunnyPosition.x && position.z > bunnyPosition.z)
            gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4(bunnyPosition.x + 5.0, position.y, (bunnyPosition.z + 3.0)/4.0, 0));
    else if (position.x < bunnyPosition.x && position.z < bunnyPosition.z)
            gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4(bunnyPosition.x -10.0, position.y, position.z, 0));
    else   gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);

    ///////

}
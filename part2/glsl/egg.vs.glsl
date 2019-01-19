#version 300 es

// HINT: YOU WILL NEED TO PASS IN THE CORRECT UNIFORM AND CREATE THE CORRECT SHARED VARIABLE
uniform vec3 bunnyPosition;
out vec4 ePos;
out vec3 interpolatedNormal;

void main() {
  	// HINT: BE MINDFUL OF WHICH COORDINATE SYSTEM THE BUNNY'S POSITION IS IN
    ePos = modelMatrix * vec4(position, 1.0);
    interpolatedNormal = normal;
    float threshold = distance(ePos, vec4(bunnyPosition,0));
    float maxEggLift = 10.0f;
    float newPos = position.y + 5.0;
    if (newPos > maxEggLift) { newPos = maxEggLift;}

    if (threshold > 6.0) {gl_Position = projectionMatrix * modelViewMatrix * vec4( position.x, 2.0*newPos, position.z, 1.0 );}
    else if (threshold > 3.0) {
    // Multiply each vertex by the model matrix to get the world position of each vertex, then the view matrix to get the position in the camera coordinate system, and finally the projection matrix to get final vertex position
//            gl_Position = projectionMatrix * viewMatrix * (modelMatrix * vec4(position, 1.0) + vec4(0.0, newPos, 0.0, 1.0));
        gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x, newPos, position.z, 1.0 );
//    position = vec4(position.x, newPos+10.0, position.z, 1.0);
    } else {    gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}
}
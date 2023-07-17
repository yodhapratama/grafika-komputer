void setup(){
size (500, 500, P3D);
}

void draw(){
noFill();
float fov = PI/3.0;
float cameraZ = (height/2.0) / tan(fov/2.0);
perspective(fov, float(width) / float(height), cameraZ/15.0, cameraZ*15.0);
translate(255,255,0);
rotateX(-PI/6);
rotateY(PI/3);
box(250);
}

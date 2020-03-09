

void setup() {
  size(1280,720,P3D);
  background(0);
}
void draw() {
  background(0);
  fill(255);
  //noFill();
  strokeWeight(1);
  stroke(255);
  //noStroke();
  //blendMode(SCREEN);
  camera(width/2, height/2+mouseY*10, 0, // eyeX, eyeY, eyeZ
    0.0, 0.0, 0.0, // centerX, centerY, centerZ
    0.0, 1.0, 0.0); // upX, upY, upZ
    //pointLight(200, 255, 200, width/2, height/2, -200);
  pyk(100);
}

void pyk(int top) {
  for (int i=0; i<top; i++) {
    translate(16, 5.3, -8);
    rotateX(radians(-8));
    rotateY(radians(24));
    rotateZ(radians(15));
    scale(float(mouseX)/640);
    pushMatrix();
    rotateX(PI/2);
    for (int j=0; j<top; j++) {
      translate(16, 5.3, -10);
      rotateX(radians(-8));
      rotateY(radians(24));
      rotateZ(radians(15));
      scale(0.98);
      pushMatrix();
      rotateX(PI/2);
      point(0,0);
//      circle(0,0,10);
      //cylinder(16, 0, 16, 4);
      popMatrix();
    }
    popMatrix();
  }
}
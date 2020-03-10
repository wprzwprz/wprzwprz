//noprotect
function setup() {
  createCanvas(windowWidth, windowHeight,WEBGL);
  background(0);
}

function draw() {
  background(0);
  fill(255);
  noFill();
  strokeWeight(0);
  stroke(255);
  //noStroke();
  //blendMode(SCREEN);

  camera(0, mouseY*10, width*3/4, // eyeX, eyeY, eyeZ
    0.0, 0.0, 0.0, // centerX, centerY, centerZ
    0.0, 1.0, 0.0); // upX, upY, upZ
    //pointLight(200, 255, 200, width/2, height/2, -200);



scale(width/75);
  pyk(200*mouseX/width);

}

function pyk(top) {
  for (i=0; i<top; i++) {
    translate(16, 5.3, -8);
    rotateX(radians(-8));
    rotateY(radians(24));
    rotateZ(radians(15));
    scale(0.98);
    push();
    rotateX(PI/2);
    for (j=0; j<top; j++) {
      translate(16, 5.3, -1);
      rotateX(radians(-8));
      rotateY(radians(24));
      rotateZ(radians(15));
      scale(0.98);
      push();
      rotateX(PI/2);
     point(0,0);
//     cylinder(16, 0, 16, 4);
      pop();
    }
    pop();
  }
}

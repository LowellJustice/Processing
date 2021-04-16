void setup() {
  size(640, 320);
  background(#FAD338);
  noLoop();
}

void draw() {
  //noFill();
  fill(0);
  strokeWeight(10);
  for (int i = 0; i< 5; i++) {
    triangle(random(640), random(320), random(640), random(320), random(640), random(320));
  }
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

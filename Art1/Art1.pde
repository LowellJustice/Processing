

void setup() {
  size(640, 320);
  noLoop();
}

void draw() {
  for (int i = 0; i < 16; i++) {
    for (int n = 0; n < 8; n++) {
      fill(random(256), random(256), random(256));
      rect(i*40, n*40, 40, 40);
    }
  } 
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

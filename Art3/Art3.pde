void setup() {
  size(640, 320);
  fill(0);
  noStroke();
}

void draw() {
  background(26, 96, 240);
  fill(50, 230, 60);
  for (int i = 0; i < 64; i++) {
    rect(i*5, i*5, 20, 20);
    rect(620-i*5, i*5, 20, 20);
    rect(310, i*5, 20, 20);
    rect(150, i*5, 20, 20);
    rect(470, i*5, 20, 20);
    rect(i*5, 300-i*5, 20, 20);
    rect(620-i*5, 300-i*5, 20, 20);
  }
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

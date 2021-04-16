color green = #47FF00;
color yellow = #FFF700;
color red = #FF0000;
color blue = #000AFF;

void setup() {
  size(640, 320);
  ellipseMode(RADIUS);
  noLoop();
}

void draw() {
  background(255);
  fill(green);
  for (int i = 0; i < 32; i++) {
    circle(i*20, random(80), 10);
  }
  fill(yellow);
  for (int i = 0; i < 32; i++) {
    circle(i*20, random(80, 160), 10);
  }
  fill(red);
  for (int i = 0; i < 32; i++) {
    circle(i*20, random(160, 240), 10);
  }
  fill(blue);
  for (int i = 0; i < 32; i++) {
    circle(i*20, random(240, 320), 10);
  }
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

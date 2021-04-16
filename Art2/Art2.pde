int y = 160;
void setup() {
  size(640, 320);
  ellipseMode(RADIUS);
  noStroke();
  background(140);
  noLoop();
}
 
void draw() {
  for (int i = 0; i < 33; i++) {
    fill(random(27), random(14), random(203));
    if (random(50) > 24.5) {
      if (y < 320) {
        y+=20;
      } else {
        y-=20;
      }
      circle(i*20, y, 20);
    } else {
      if (y > 0) {
        y-=20;
      } else {
        y+=20;
      }
      circle(i*20, y, 20);
    }
  }
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

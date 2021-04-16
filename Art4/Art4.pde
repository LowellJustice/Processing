Bubble[] bubble = new Bubble[50];
void setup() {
  size (640, 320);
  background(255);
  fill(0, 0, 255, 100);
  stroke(0, 40, 255, 50);
  ellipseMode(RADIUS);
  for (int i = 0; i < 50; i++) {
    bubble[i] = new Bubble(round(random(640)), round(random(320)), round(random(60)));
    bubble[i].drawBubble();
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 50; i++) {
    bubble[i].drawBubble();
  }
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

class Bubble {
  int x, y, s;
  Bubble(int x, int y, int s) {
    this.x = x;
    this.y = y;
    this.s = s;
  }
  
  void drawBubble() {
    circle(x, y, s);
  }
}

PShape star;

void setup() {
  size (640, 320);
  fill(#F4F73E);
  strokeWeight(0.75);
  star = createShape();
  star.beginShape();
  star.vertex(5, 0);
  star.vertex(7, 3);
  star.vertex(10, 5);
  star.vertex(7, 7);
  star.vertex(5, 10);
  star.vertex(3, 7);
  star.vertex(0, 5);
  star.vertex(3, 3);
  star.endShape(CLOSE);
  star.scale(2);
  noLoop();
}

void draw() {
  background(#121171);
  for (int i = 0; i < 50; i++) {
    shape(star, random(width), random(height));
  }
}

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("currentCapture.jpg");
  }
}

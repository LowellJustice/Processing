float r = 10;
PShape hexagon;
float LENS = 2;
float RATE = 8;
float k = RATE / LENS;
color seaweed = #18B43D;
color white = #FFFFFF;
color darkBlue = #2C7893;
color black  = #000000;
color lightBlue = #029DD3;

void setup () {
  size(700, 700);
  background(#FFFFFF);
  noStroke(); 
  strokeWeight(4.9);
}

void draw () {
  pushMatrix();
  for (int i = 0; i < 2; i++) {
    for (int m = 0+i; m < 52; m+=2) {
      pushMatrix();
      for (int n = 0; n < 16; n++) {
        drawHex(-10, 18*m, 18);
        translate(60, 0);
      }
      popMatrix();
    }
    translate(30, 0);
  }
  popMatrix();
  pushMatrix();
  for (int i = 0; i < 2; i++) {
    for (int m = 0+i; m < 52; m+=2) {
      pushMatrix();
      for (int n = 0; n < 16; n++) {
        drawHex2(-9.5, 18*m, 9);
        translate(60, 0);
      }
      popMatrix();
    }
    translate(30, 0);
  }
  popMatrix();  
  pushMatrix();
  translate(0.5, 0);
  for (int i = 0; i < 52; i+=2) {
    for (int n = 0; n < 13; n++) {
      translate(-10, 0);
      drawFlower();
      translate(70, 0);
    }
    translate(-780, 36);
  }
  popMatrix();
  pushMatrix();
  translate(0.5, 0);
  for (int i = 0; i < 52; i+=2) {
    translate(0, 18);
    for (int n = 0; n < 13; n++) {
      translate(20, 0);
      drawFlower();
      translate(40, 0);
    }
    translate(-780, 18);
  }
  popMatrix();
  noLoop();
}

void drawHex(float x, float y, float gs) {
  beginShape();
  fill(lightBlue);
  stroke(black);
  for (int i=0; i<6; i++) {
    float angle = i * 2 * PI / 6;
    vertex(x + gs*cos(angle), y + gs*sin(angle));
  }
  endShape(CLOSE);
}

void drawHex2(float x, float y, float gs) {
  beginShape();
  fill(darkBlue);
  stroke(white);
  noStroke();
  for (int i=0; i<6; i++) {
    float angle = i * 2 * PI / 6;
    vertex(x + gs*cos(angle), y + gs*sin(angle));
  }
  endShape(CLOSE);
}

void drawFlower() {
  beginShape();
  fill(seaweed);
  noStroke();
  for (float t = 0; t < TWO_PI * LENS; t += 0.02) {
    float r = 5 * cos(k * t);
    float x = r * cos(t);
    float y = r * sin(t);
    vertex(x, y);
  }
  endShape(CLOSE);
}

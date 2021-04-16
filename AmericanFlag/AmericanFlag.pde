float xPos = 0;
float yPos = 0;
float starX = 33.333;
float starY = 26.923;
boolean isRed = true;
PShape star;

void setup() {
  size (1000, 500);
  noStroke();
  star = createShape();
  star.beginShape();
  star.fill(#FFFFFF);
  star.vertex(0, -12.5);
  star.vertex(3.5, -5);
  star.vertex(11.75, -3.75);
  star.vertex(5.75, 1.75);
  star.vertex(7.25, 10);
  star.vertex(0, 6.25);
  star.vertex(-7.25, 10);
  star.vertex(-5.75, 1.75);
  star.vertex(-11.75, -3.75);
  star.vertex(-3.5, -5);
  star.endShape(CLOSE);
}

void draw() {
  fill (#E22B25);
  for (int i = 0; i < 13; i++) {
    rect (xPos, yPos, 1000, 38.4615384615);
    yPos += 38.4615384615;
    if (isRed == true) {
      fill (#FFFFFF);
      isRed = false;
    } else {
      fill (#E22B25);
      isRed = true;
    }
  }
  fill (#153C81);
  rect (0, 0, 400, 269.23);
    
  for (int i = 0; i < 6; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 66.666;
  starY = 53.846;
  
  for (int i = 0; i < 5; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 33.333;
  starY = 80.769;
  
  for (int i = 0; i < 6; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 66.666;
  starY = 107.692;
  
  for (int i = 0; i < 5; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 33.333;
  starY = 134.615;
  
  for (int i = 0; i < 6; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 66.666;
  starY += 26.923;
  
  for (int i = 0; i < 5; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 33.333;
  starY += 26.923;
  
  for (int i = 0; i < 6; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 66.666;
  starY += 26.923;
  
  for (int i = 0; i < 5; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  starX = 33.333;
  starY += 26.923;
  
  for (int i = 0; i < 6; i++) {
    shape(star, starX, starY);
    starX += 66.666;
  }
  
  noLoop();
}

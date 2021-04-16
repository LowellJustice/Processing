PShape mainPattern;

void setup () {
  size (800, 800);
  /*//PShape is 400x400
  //Y: 75+75+100+75+75
  //X: 62.5+75+125+75+62.5
  //Right now, the PShape is 400x400. TODO: Reduce size to an amount so that 16 can fit (4x4)
  mainPattern = createShape();
  mainPattern.beginShape();
  mainPattern.vertex(-62.5, -200);
  mainPattern.vertex(-62.5, -125);
  mainPattern.vertex(-137.5, -125);
  mainPattern.vertex(-137.5, -50);
  mainPattern.vertex(-200, -50);
  mainPattern.vertex(-200, 50);
  mainPattern.vertex(-137.5, 50);
  mainPattern.vertex(-137.5, 125);
  mainPattern.vertex(-62.5, 125);
  mainPattern.vertex(-62.5, 200);
  mainPattern.vertex(62.5, 200);
  mainPattern.vertex(62.5, 125);
  mainPattern.vertex(137.5, 125);
  mainPattern.vertex(137.5, 50);
  mainPattern.vertex(200, 50);
  mainPattern.vertex(200, -50);
  mainPattern.vertex(137.5, -50);
  mainPattern.vertex(137.5, -125);
  mainPattern.vertex(62.5, -125);
  mainPattern.vertex(62.5, -200);
  mainPattern.vertex(-62.5, -200);
  mainPattern.endShape();
  //TODO: Contine work on PShape*/
  //Oops, think I did that whole shape wrong :(. I will try it again below:
  //X:100+100+100+40+100+100+100 = 640
  //Y:+95+100+100+50+100+100+95 = 640
  mainPattern = createShape();
  mainPattern.beginShape();
  mainPattern.vertex(-20, -320);
  mainPattern.vertex(-20, -225);
  mainPattern.vertex(-120, -225);
  mainPattern.vertex(-120, -125);
  mainPattern.vertex(-220, -125);
  mainPattern.vertex(-220, -25);
  mainPattern.vertex(-320, -25);
  mainPattern.vertex(-320, 25);
  mainPattern.vertex(-220, 25);
  mainPattern.vertex(-220, 125);
  mainPattern.vertex(-120, 125);
  mainPattern.vertex(-120, 225);
  mainPattern.vertex(-20, 225);
  mainPattern.vertex(-20, 320);
  mainPattern.vertex(20, 320);
  mainPattern.vertex(20, 225);
  mainPattern.vertex(120, 225);
  mainPattern.vertex(120, 125);
  mainPattern.vertex(220, 125);
  mainPattern.vertex(220, 25);
  mainPattern.vertex(320, 25);
  mainPattern.vertex(320, -25);
  mainPattern.vertex(220, -25);
  mainPattern.vertex(220, -125);
  mainPattern.vertex(120, -125);
  mainPattern.vertex(120, -225);
  mainPattern.vertex(20, -225);
  mainPattern.vertex(20, -320);
  mainPattern.vertex(-20, -320);
  mainPattern.endShape();
}

void draw () {
  shape (mainPattern, 400, 400);
  noLoop();
}

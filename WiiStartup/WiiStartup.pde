PFont helveticaBold;
PFont helvetica;
PImage warning;
PImage leftClick;

boolean onTitleScreen = true;
boolean increase = true;
int currentAlpha = 0;
import processing.sound.*;

void setup() {
  size(1280, 720);
  background(0);
  helvetica = createFont("Helvetica.ttf", 30);
  helveticaBold = createFont("Helvetica-Bold.ttf", 38);
  warning = loadImage("warning2.png");
  leftClick = loadImage("leftclick2.png");
  smooth();
  textAlign(CENTER);
  imageMode(CENTER);
}

void draw() {
  if (onTitleScreen) {
    drawTitle();
  } else {
    drawMain();
  }
}

void drawAlert(int alpha) {
  fill(255, 255, 255, alpha);
  text("Press         to  continue.", width/2, 640);
  noTint();
  tint(255, alpha);
  image(leftClick, 590, 640, 90, 90);
}

void drawTitle() {
  background(0);
    fill(255);
    textFont(helveticaBold);
    noTint();
    image(warning, 330, 125, 84, 70);
    text("WARNING-HEALTH AND SAFETY", width/2+40, 140);
    textFont(helvetica);
    text("BEFORE PLAYING, READ YOUR OPERATIONS", width/2, 260);
    text("MANUAL FOR IMPORTANT INFORMATION", width/2, 310);
    text("ABOUT YOUR HEALTH AND SAFETY.", width/2, 360);
    textSize(27);
    text("Also online at", width/2, 450);
    fill(#40B7FF);
    textSize(35);
    text("www.nintendo.com/healthsafety/", width/2, 505);
    textSize(36);
    drawAlert(currentAlpha);
    if (currentAlpha >= 255) {
      increase = false;
      delay(500);
    }
    if (currentAlpha <= 0) {
      increase = true;
      delay(500);
    }
    if (increase) {
      currentAlpha+=2;
    } else {
      currentAlpha-=2;
    }
    if (mousePressed && (mouseButton == LEFT)) {
      onTitleScreen = false;
    }
}

void drawMain() {
  background(255);
}

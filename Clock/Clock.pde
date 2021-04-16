PFont font;
int s;
int m;
int trueH;
int h;
String milToStd;
String operate;
Button standard;
Button military;
Button menu;
boolean inMenu = true;
boolean doStandard = false;
boolean doMilitary = false;
void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  fill(0);
  font = createFont("DialogInput", 48);
  textFont(font, 48);
  smooth();
  standard = new Button(100, 350, 250, 100, "Standard", #346EAA);
  military = new Button(450, 350, 250, 100, "Military", #21953B);
  menu = new Button(width/2-125, height-100, 250, 100, "Menu", #76298E);
}

void draw() {
  if (inMenu) {
    background(255);
    standard.displayButton();
    military.displayButton();
    if (standard.clicked()) {
      doStandard = true;
      doMilitary = false;
      inMenu = false;
    }
    if (military.clicked()) {
      doMilitary = true;
      doStandard = false;
      inMenu = false;
    }
  } else {
    doTime();
    menu.displayButton();
    if (menu.clicked()) {
      inMenu = true;
    }
  }
}

void doTime() {
  background(255);
  s = second();  // Values from 0 - 59
  m = minute();  // Values from 0 - 59
  trueH = hour();    // Values from 0 - 23

  if (trueH > 12) {
    operate = "p.m.";
    h = trueH - 12;
  } else {
    operate = "a.m.";
    h = hour();
  }
  if (doStandard) {
    text(h+":"+m+":"+s+" "+operate, width/2, height/2);
  }
  if (doMilitary) {
    text(trueH+":"+m+":"+s, width/2, height/2);
  }
}

class Button {
  int x, y, w, h;
  String text;
  color fill;
  boolean clicked() {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h && mousePressed) {
      return true;
    } else {
      return false;
    }
  }
  Button(int x, int y, int w, int h, String text, color fill) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.fill = fill;
  }
  void displayButton() {
    fill(fill);
    rect(x, y, w, h);
    fill(0);
    text(text, x+w/2, y+h/2);
  }
}

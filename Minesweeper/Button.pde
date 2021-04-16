class Button {
  String text;
  int x, y, w, h, r;
  boolean buttonPressed = false;
  Button(String text, int x, int y, int w, int h, int r) {
    this.text = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
  }
  void display() {
    noStroke();
    rect(x, y, w, h, r);
    textAlign(CENTER, CENTER);
    textFont(buttonFont);
    textSize(42);
    fill(0);
    text(text, x+w/2, y+h/2);
  }
  void rangeCheck() {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h && !mouseClicked) {
      fill(110);
    } else if (!(mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h)) {
      fill(140);
    }
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h && mouseClicked) {
      fill(100);
      buttonPressed = true;
      mouseClicked = false;
    } else {
      buttonPressed = false;
    }
  }
}

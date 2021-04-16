class Tile {
  int x, y, w, h;
  int ID;
  int nearbyMines = 0;
  boolean isClicked = false;
  Tile(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  void update() {
    isClicked();
    if (isClicked) {
      display();
      if (getIsMine()) {
        gameOver = true;
      }
    }
  }
  void display() {
    fill(150);
    stroke(40);
    rect(x, y, w, h);
    textFont(buttonFont, 12);
    if (ID == 1) {
      fill(255, 0, 0);
      textAlign(CENTER, CENTER);
      bomb.resize(w-4, h);
      image(bomb, x+4, y);
    } else {
      fill(0, 0, 255);
      textAlign(CENTER, CENTER);
      if (nearbyMines != 0) {
        switch(nearbyMines) {
        case 1:
          fill(0, 0, 200);
          break;
        case 2:
          fill(0, 200, 0);
          break;
        case 3:
          fill(255, 0, 0);
          break;
        case 4:
          fill(0, 0, 100);
          break;
        case 5:
          fill(100, 0, 0);
          break;
        case 6:
          fill(0, 200, 255);
          break;
        case 7:
          fill(0);
          break;
        case 8:
          fill(100);
          break;
        }
        text(Integer.toString(nearbyMines), x+w/2+1.5, y+h/2+1.5);
      }
    }
  }
  boolean getIsMine() {
    if (ID == 0) {
      return false;
    } else {
      return true;
    }
  }
  void setAdjacentMines(int mines) {
    nearbyMines = mines;
  }
  void isClicked() {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h && mouseClicked) {
      mouseClicked = false;
      isClicked = true;
    }
  }
}

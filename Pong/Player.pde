class Player {
  int playerNum;
  int x;
  int y;

  boolean keyActive;
  Player(int playerNum, int x, int y) {
    this.playerNum = playerNum;
    this.x = x;
    this.y = y;
  }
  void updateMovement() {
    if (playerNum == 1) {
      if (keyCode == 87) {
        y-=1;
      }
      if (keyCode == 83) {
        y+=1;
      }
    }
    if (playerNum == 2) {
      if (keyActive) {
        if (keyCode == 38) {
        }
        if (keyCode == 40) {
        }
      }
    }
  }
  void drawPlayer() {
    fill(0);
    noStroke();
    rect(x, y, 40, 120);
  }
}

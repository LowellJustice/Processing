class Coin {  
  int x;
  int y;
  int w;
  int h;
  Coin(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    fill(coinColor);
    stroke(black);
    strokeWeight(8);
    ellipse(x, y, w, h);
    fill(black);
    textFont(coinFont);
    textAlign(CENTER, CENTER);
    text("$", x, y-(y/12));
  }
  void coinRedraw() {
    fill(coinColor);
    stroke(black);
    strokeWeight(8);
    ellipse(x, y, w, h);
    fill(black);
    textFont(coinFont);
    textAlign(CENTER, CENTER);
    text("$", x, y-(y/12));
  }
  void coinRangeCheck() {
    float centerDist = dist(x, y, mouseX, mouseY);
    if (centerDist <= w/2) {
      inCoinRange = true;
    } else {
      inCoinRange = false;
    }
  }
  void scoreDraw() {
    textFont(scoreFont);
    textAlign(CENTER, CENTER);
    text("Coin: $" + amtCoin, width/2, 50);
  }
}

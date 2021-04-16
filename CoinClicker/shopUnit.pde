class ShopUnit {
  String name;

  boolean inUnitRange = false;

  int upgradePrice;
  int startingPrice;

  int currentLevel;
  int x, y;

  ShopUnit(String name, int startingPrice, int x, int y, int currentLevel) {
    this.name = name;
    upgradePrice = round((pow(currentLevel+1, 2)/2)*startingPrice);
    this.startingPrice = startingPrice;
    this.currentLevel = currentLevel;
    this.x = x;
    this.y = y;
  }
  void drawUnit() {
    upgradePrice = round((pow(currentLevel+1, 2)/2)*startingPrice);
    fill(unitColor);
    stroke(black);
    strokeWeight(1);
    rect(x, y, 200, 200);
    textFont(unitFont);
    textAlign(CENTER, CENTER);
    fill(black);
    text("Price: " + int(upgradePrice), x+100, y+170);
    text("Level: " + currentLevel, x+100, y+20);
    text(name, x+100, y+100);
  }
  void unitRangeCheck() {
    if (mouseX >= x && mouseX <= x+200) {
      if (mouseY >= y && mouseY <= y+200) {
        inUnitRange = true;
      } else {
        inUnitRange = false;
      }
    } else {
      inUnitRange = false;
    }
  }
  void checkCurrency() {
    if (amtCoin >= upgradePrice) {
      amtCoin -= upgradePrice;
      currentLevel++;
      upgradePrice = round((pow(currentLevel+1, 2)/2)*startingPrice);
    } else {
      println("Not enough coin for this upgrade!");
      upgradePrice = round((pow(currentLevel+1, 2)/2)*startingPrice);
    }
  }
}

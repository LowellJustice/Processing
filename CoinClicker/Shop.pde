class Shop {
  Shop() {
  }
  void iconDraw() {
    noStroke();
    fill(shopColor);
    rect(width/4, height-100, width/2, height/2);
    textAlign(CENTER, CENTER);
    textFont(scoreFont);
    fill(black);
    text("SHOP", width/2, height-60);
  }
  void backButtonDraw() {
    noStroke();
    fill(shopColor);
    rect(width/4, height-100, width/2, height/2);
    textAlign(CENTER, CENTER);
    textFont(scoreFont);
    fill(black);
    text("BACK", width/2, height-60);
  }
  void shopRangeCheck() {
    if (mouseX >= width/4 && mouseX <= width/4+width/2) {
      if (mouseY >= height-100 && mouseY <= height) {
        inShopRange = true;
      } else {
        inShopRange = false;
      }
    } else { 
      inShopRange = false;
    }
  }
  void currencyDisplay() {
    textFont(scoreFont);
    textAlign(LEFT, CENTER);
    fill(black);
    text("$" + amtCoin, 5, 35);
  }
}

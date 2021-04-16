class Events {
  Events() {
  }
  void startScreen() {
    background(backgroundColor);
    textFont(startFont);
    text("Coin Clicker\n\nClick Anywhere to Begin", width/2, width/2);
  }
  void clickingScreen() {
    welcomeCounter++;
    background(backgroundColor);
    clickPL.coinRedraw();
    clickPL.scoreDraw();
    shop.iconDraw();
    if (!welcomeClicked && noSave == false) {
      welcome.displayText();
    }
  }
  void shopScreen() {
    background(backgroundColor);
    shop.backButtonDraw();
    shop.currencyDisplay();
    clickPwr.drawUnit();
    tier1CPS.drawUnit();
    tier2CPS.drawUnit();
    tier3CPS.drawUnit();
    tier4CPS.drawUnit();
    tier5CPS.drawUnit();
  }
}

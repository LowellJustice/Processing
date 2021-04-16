class WelcomeBack {
  WelcomeBack() {
  
  }
  void displayText() {
    fill(unitColor);
    rect(width/2-200, height/2-200, 400, 400, 20);
    textFont(unitFont);
    textAlign(CENTER, CENTER);
    fill(black);
    text("Welcome Back!", width/2, height/2-100);
    textFont(unitFont);
    text("While you were gone,\nYour generators earned you\n" + coinsSinceLastLogin +" coins!\n\n\nClick to continue", width/2, height/2+50); 
  }
  void giveCoin(int seconds) {
    coinsSinceLastLogin = (tier1CPS.currentLevel + tier2CPS.currentLevel * 10 + tier3CPS.currentLevel * 100 + tier4CPS.currentLevel * 1000 + tier5CPS.currentLevel) * seconds;
    amtCoin += coinsSinceLastLogin;
  }
}

class Events {
  Events() {
  }
  void startScreen() {
  }
  void playGame() {
    background(255);
    P1.updateMovement();
    P2.updateMovement();
    P1.drawPlayer();
    P2.drawPlayer();
  }
  void endGame() {
  }
}

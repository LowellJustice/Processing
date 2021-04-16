Player P1 = new Player(1, 400, 400);
Player P2 = new Player(2, 200, 200);
Ball B1 = new Ball();
Events eventHandler = new Events();

boolean gameActive = false;
boolean gameOver = false;

void setup() {
  size(1000, 800);
}

void draw() {
  if (!gameActive && !gameOver) {
    //eventHandler.startScreen();
    eventHandler.playGame();
  }
  if (gameActive && !gameOver) {
    eventHandler.playGame();
  }
}

void keyPressed() {
}

void keyReleased() {
}

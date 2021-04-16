char[] tetrominoes = {'I', 'O', 'T', 'S', 'Z', 'J', 'L'};
int level = 1;
int updateTimer = 60*(3-(level/10));
boolean blockActive = false;
char myTetromino;
float currentY = -200;
float currentX = 300;
double gravMult = 1;
Tetromino currentTetromino;

void setup() {
  size (600, 800);
  background(#000000);
  fill(#FFFFFF);
  noStroke();
  rect(100, 0, 400, 800);
  createShapes();
}

void draw() {
  background(#000000);
  rect(100, 0, 400, 800);
  updateTimer--;
  if (updateTimer <= 0 && blockActive == false) {
    updateTimer = 60*(3-(level/10));
    currentTetromino = new Tetromino(tetrominoes[int(random(tetrominoes.length))]);
    currentTetromino.spawnTetromino();
    currentTetromino.Rotate(true);
  }
  if (blockActive == true) {
    currentTetromino.checkCollision();
    currentTetromino.tetrominoGravity(myTetromino);
  }
}

void keyPressed() {
  if (keyCode == 40) {
    gravMult = 1.5;
  }
  if (keyCode == 38 && blockActive) {
    currentTetromino.Rotate(false);
  }
}

void keyReleased() {
  if (gravMult == 1.5 && keyCode == 40) {
    gravMult = 1;
  }
}

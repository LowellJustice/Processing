EventHandler eventHandler = new EventHandler();
Button beginnerSelect = new Button("Beginner", 50, 500, 200, 100, 0); // 8x8 grid, 10 mines
Button intermediateSelect = new Button("Intermediate", 300, 500, 200, 100, 0); // 16x16, 40 mines
Button expertSelect = new Button("Expert", 550, 500, 200, 100, 0); // 24x24, 99 mines

Tile[][] gridTiles;

int gridSize;
int selectedDifficulty;
int totalMines = 0;
int tilesLong;

boolean playingGame = false;
boolean mouseClicked = false;
boolean gameOver = false;

PFont buttonFont;
PFont titleFont;

PImage bomb;

void setup() {
  size(800, 800);
  bomb = loadImage("bomb.png");
  buttonFont = loadFont("AgencyFB-Bold-48.vlw");
  titleFont = loadFont("CopperplateGothic-Bold-48.vlw");
  surface.setResizable(true);
}

void draw() {
  if (playingGame == false) {
    eventHandler.titleScreen();
  }
  if (playingGame == true) {
    eventHandler.playGame();
  }
}

void mousePressed() {
  mouseClicked = true;
}

void createMines() {
  for (int i = 0; i < gridTiles.length; i++) {
    for (int n = 0; n < gridTiles.length; n++) {
      gridTiles[i][n].ID = 0;
    }
  }
  int currentMines = 0;
  while (currentMines < totalMines) {
    int rand1 = round(random(0, tilesLong-1));
    int rand2 = round(random(0, tilesLong-1));
    if (gridTiles[rand1][rand2].ID != 1) {
      gridTiles[rand1][rand2].ID = 1;
      currentMines++;
    }
  }
}

void keyPressed() {
  if (keyCode == 82) {
    createMines();
    countAdjacentMines();
  }
}

void countAdjacentMines()
{        
  for (int i = 0; i < gridTiles.length; i++)
  {
    for (int j = 0; j < gridTiles.length; j++)
    {
      if (!(gridTiles[i][j].getIsMine()))
      {
        int count = 0;
        for (int p = i - 1; p <= i + 1; p++)
        {
          for (int q = j - 1; q <= j + 1; q++)
          {
            if (0 <= p && p < gridTiles.length && 0 <= q && q < gridTiles.length)
            {
              if (gridTiles[p][q].getIsMine()) ++count;
            }
          }
        }
        gridTiles[i][j].setAdjacentMines(count);
      }
    } // end for loop rows
  } // end for loop columns
}

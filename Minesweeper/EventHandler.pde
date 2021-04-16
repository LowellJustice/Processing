class EventHandler {
  EventHandler() {
  }
  void titleScreen() {
    background(128);
    textAlign(CENTER, CENTER);
    fill(0);
    textFont(titleFont);
    textSize(68);
    text("MINESWEEPER", 400, 200);

    beginnerSelect.rangeCheck();
    beginnerSelect.display();

    if (beginnerSelect.buttonPressed) {
      surface.setSize(200, 250);
      playingGame = true;
      selectedDifficulty = 0;
      totalMines = 10;
      tilesLong = 8;
      gridTiles = new Tile[tilesLong][tilesLong];
      for (int i = 0; i < gridTiles.length; i++) {
        for (int n = 0; n < gridTiles.length; n++) {
          gridTiles[i][n] = new Tile(i*25, n*25+50, 25, 25);
        }
      }
      createMines();
      countAdjacentMines();
    }

    intermediateSelect.rangeCheck();
    intermediateSelect.display();

    if (intermediateSelect.buttonPressed) {
      surface.setSize(400, 500);
      playingGame = true;
      selectedDifficulty = 1;
      totalMines = 40;
      tilesLong = 16;
      gridTiles = new Tile[tilesLong][tilesLong];
      for (int i = 0; i < gridTiles.length; i++) {
        for (int n = 0; n < gridTiles.length; n++) {
          gridTiles[i][n] = new Tile(i*25, n*25+100, 25, 25);
        }
      }
      createMines();
      countAdjacentMines();
    }

    expertSelect.rangeCheck();
    expertSelect.display();

    if (expertSelect.buttonPressed) {
      surface.setSize(600, 700);
      playingGame = true;
      selectedDifficulty = 2;
      totalMines = 99;
      tilesLong = 24;
      gridTiles = new Tile[tilesLong][tilesLong];
      for (int i = 0; i < gridTiles.length; i++) {
        for (int n = 0; n < gridTiles.length; n++) {
          gridTiles[i][n] = new Tile(i*25, n*25+100, 25, 25);
        }
      }
      createMines();
      countAdjacentMines();
    }
  }
  void playGame() {
    background(255);
    for (int i = 0; i < gridTiles.length; i++) {
      for (int n = 0; n < gridTiles.length; n++) {
        gridTiles[i][n].update();
      }
    }
  }
}

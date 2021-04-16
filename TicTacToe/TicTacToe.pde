boolean xTurn;
int currentGrid;
boolean gridValid;
boolean grid1Clicked;
boolean grid2Clicked;
boolean grid3Clicked;
boolean grid4Clicked;
boolean grid5Clicked;
boolean grid6Clicked;
boolean grid7Clicked;
boolean grid8Clicked;
boolean grid9Clicked;
int[] clickPos;
color white;
color black;

void drawX () {
  //TODO: draw the X in the grid that was clicked in
  //First, make sure the grid requested has not been used yet by figuring out the grid and then calculating it
  //TODO: CALCULATE CURRENT GRID
  if (clickPos[1] < 400/3 && clickPos[1] >= 0) {
    //GRID 1, 2, OR 3 WAS CLICKED
    if (clickPos[0] < 400/3 && clickPos[0] >= 0) {
      //1
      currentGrid = 1;
    } else if (clickPos[0] < 400/3*2 && clickPos[0] > 400/3) {
      //2
      currentGrid = 2;
    } else if (clickPos[0] <= 400 && clickPos[0] > 400/3*2) {
      //3
      currentGrid = 3;
    }
  } else if (clickPos[1] < 400/3*2 && clickPos[1] > 400/3) {
    //GRID 4, 5, OR 6 WAS CLICKED
    if (clickPos[0] < 400/3 && clickPos[0] >= 0) {
      //4
      currentGrid = 4;
    } else if (clickPos[0] < 400/3*2 && clickPos[0] > 400/3) {
      //5
      currentGrid = 5;
    } else if (clickPos[0] <= 400 && clickPos[0] > 400/3*2) {
      //6
      currentGrid = 6;
    }
  } else if (clickPos[1] <= 400 && clickPos[1] > 400/3*2) {
    //GRID 7, 8, OR 9 WAS CLICKED
    if (clickPos[0] < 400/3 && clickPos[0] >= 0) {
      //7
      currentGrid = 7;
    } else if (clickPos[0] < 400/3*2 && clickPos[0] > 400/3) {
      //8
      currentGrid = 8;
    } else if (clickPos[0] <= 400 && clickPos[0] > 400/3*2) {
      //9
      currentGrid = 9;
    }
  } else {
    println("Could not register where mouse was clicked, try again.");
    currentGrid = 0;
  }

  gridCheck(currentGrid);
  //If the grid hasn't been used, draw the X and set it to O's turn
  if (gridValid && currentGrid != 0) {
    if (currentGrid == 1) {
      text("X", 400/3/2, 400/3/2+100/3);
    } else if (currentGrid == 2) {
      text("X", 400/3*2 - 400/3/2, 400/3/2+100/3);
    } else if (currentGrid == 3) {
      text("X", 400 - 400/3/2, 400/3/2+100/3);
    } else if (currentGrid == 4) {
      text("X", 400/3/2, 400/2+100/3);
    } else if (currentGrid == 5) {
      text("X", 400/3*2 - 400/3/2, 400/2+100/3);
    } else if (currentGrid == 6) {
      text("X", 400 - 400/3/2, 400/2+100/3);
    } else if (currentGrid == 7) {
      text("X", 400/3/2, 400/3*2+100);
    } else if (currentGrid == 8) {
      text("X", 400/3*2 - 400/3/2, 400/3*2+100);
    } else if (currentGrid == 9) {
      text("X", 400 - 400/3/2, 400/3*2+100);
    }
    xTurn = false;
  }
}

void drawO () {
  //TODO: draw the O in the grid that was clicked in
  //First, make sure the grid requested has not been used yet by figuring out the grid and then calculating it
  //TODO: CALCULATE CURRENT GRID
  if (clickPos[1] < 400/3 && clickPos[1] >= 0) {
    //GRID 1, 2, OR 3 WAS CLICKED
    if (clickPos[0] < 400/3 && clickPos[0] >= 0) {
      //1
      currentGrid = 1;
    } else if (clickPos[0] < 400/3*2 && clickPos[0] > 400/3) {
      //2
      currentGrid = 2;
    } else if (clickPos[0] <= 400 && clickPos[0] > 400/3*2) {
      //3
      currentGrid = 3;
    }
  } else if (clickPos[1] < 400/3*2 && clickPos[1] > 400/3) {
    //GRID 4, 5, OR 6 WAS CLICKED
    if (clickPos[0] < 400/3 && clickPos[0] >= 0) {
      //4
      currentGrid = 4;
    } else if (clickPos[0] < 400/3*2 && clickPos[0] > 400/3) {
      //5
      currentGrid = 5;
    } else if (clickPos[0] <= 400 && clickPos[0] > 400/3*2) {
      //6
      currentGrid = 6;
    }
  } else if (clickPos[1] <= 400 && clickPos[1] > 400/3*2) {
    //GRID 7, 8, OR 9 WAS CLICKED
    if (clickPos[0] < 400/3 && clickPos[0] >= 0) {
      //7
      currentGrid = 7;
    } else if (clickPos[0] < 400/3*2 && clickPos[0] > 400/3) {
      //8
      currentGrid = 8;
    } else if (clickPos[0] <= 400 && clickPos[0] > 400/3*2) {
      //9
      currentGrid = 9;
    }
  } else {
    println("Could not register where mouse was clicked, try again.");
    currentGrid = 0;
  }

  gridCheck(currentGrid);
  //If the grid hasn't been used, draw the O and set it to X's turn
  if (gridValid) {
    if (gridValid && currentGrid != 0) {
      if (currentGrid == 1) {
        text("O", 400/3/2, 400/3/2+100/3);
      } else if (currentGrid == 2) {
        text("O", 400/3*2 - 400/3/2, 400/3/2+100/3);
      } else if (currentGrid == 3) {
        text("O", 400 - 400/3/2, 400/3/2+100/3);
      } else if (currentGrid == 4) {
        text("O", 400/3/2, 400/2+100/3);
      } else if (currentGrid == 5) {
        text("O", 400/3*2 - 400/3/2, 400/2+100/3);
      } else if (currentGrid == 6) {
        text("O", 400 - 400/3/2, 400/2+100/3);
      } else if (currentGrid == 7) {
        text("O", 400/3/2, 400/3*2+100);
      } else if (currentGrid == 8) {
        text("O", 400/3*2 - 400/3/2, 400/3*2+100);
      } else if (currentGrid == 9) {
        text("O", 400 - 400/3/2, 400/3*2+100);
      }
      xTurn = true;
    }
  }
}

void gridCheck (int gridClicked) {
  if (gridClicked == 1) {
    if (!grid1Clicked) {
      gridValid = true;
      grid1Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 2) {
    if (!grid2Clicked) {
      gridValid = true;
      grid2Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 3) {
    if (!grid3Clicked) {
      gridValid = true;
      grid3Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 4) {
    if (!grid4Clicked) {
      gridValid = true;
      grid4Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 5) {
    if (!grid5Clicked) {
      gridValid = true;
      grid5Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 6) {
    if (!grid6Clicked) {
      gridValid = true;
      grid6Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 7) {
    if (!grid7Clicked) {
      gridValid = true;
      grid7Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 8) {
    if (!grid8Clicked) {
      gridValid = true;
      grid8Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  }
  if (gridClicked == 9) {
    if (!grid9Clicked) {
      gridValid = true;
      grid9Clicked = true;
    } else {
      println("Grid has already been used. Please Try Again.");
      gridValid = false;
    }
  } else if (gridClicked == 0) {
    gridValid = false;
  }
}

void setup() {
  size (400, 400);
  reset();
}

void reset () {
  xTurn = true;
  currentGrid = 0;
  gridValid = true;
  grid1Clicked = false;
  grid2Clicked = false;
  grid3Clicked = false;
  grid4Clicked = false;
  grid5Clicked = false;
  grid6Clicked = false;
  grid7Clicked = false;
  grid8Clicked = false;
  grid9Clicked = false;
  clickPos = new int[2];
  white = #FFFFFF;
  black = #000000;

  noFill();
  strokeWeight(5);
  textAlign(CENTER);
  textSize(100);
  
  background(white);
  stroke(black);

  line(400/3, 0, 400/3, 400);
  line(400/3*2, 0, 400/3*2, 400);
  line(0, 400/3, 400, 400/3);
  line(0, 400/3*2, 400, 400/3*2);
  rect(0, 0, 399, 399);
  fill(black);
}

void draw() {
}

void keyPressed () {
  if (keyCode == 82) {
    reset();
  }
}

void mouseClicked() {
  clickPos[0] = mouseX;
  clickPos[1] = mouseY;

  if (xTurn == true) {
    drawX();
  } else {
    drawO();
  }
}

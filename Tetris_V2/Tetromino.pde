class Tetromino {
  boolean isGrounded = false;
  char instanceTetromino;
  int r = (int) random(1, 4);
  Tetromino(char chosenTetromino) {
    instanceTetromino = chosenTetromino;
    println(instanceTetromino);
  }
  void spawnTetromino() {
    switch(instanceTetromino) {
    case 'I':
      shape(I_BLOCK, currentX, currentY);
      break;
    case 'O':
      shape(O_BLOCK, currentX, currentY);
      break;
    case 'T':
      shape(T_BLOCK, currentX, currentY);
      break;
    case 'S':
      shape(S_BLOCK, currentX, currentY);
      break;
    case 'Z':
      shape(Z_BLOCK, currentX, currentY);
      break;
    case 'J':
      shape(J_BLOCK, currentX, currentY);
      break;
    case 'L':
      shape(L_BLOCK, currentX, currentY);
      break;
    default:
      println("No block yet");
    }
    blockActive = true;
    myTetromino = instanceTetromino;
  }
  void tetrominoGravity(char current) {
    currentY += 2*gravMult;

    switch(current) {
    case 'I':
      shape(I_BLOCK, currentX, currentY);
      break;
    case 'O':
      shape(O_BLOCK, currentX, currentY);
      break;
    case 'T':
      shape(T_BLOCK, currentX, currentY);
      break;
    case 'S':
      shape(S_BLOCK, currentX, currentY);
      break;
    case 'Z':
      shape(Z_BLOCK, currentX, currentY);
      break;
    case 'J':
      shape(J_BLOCK, currentX, currentY);
      break;
    case 'L':
      shape(L_BLOCK, currentX, currentY);
      break;
    default:
      println("No block yet");
    }
    if (currentY >= 800) {
      blockActive = false;
      currentX = 300;
      currentY = -200;
    }
  }
  void Rotate(boolean isReset) {
    if (isReset) {
      switch(instanceTetromino) {
      case 'I':
        I_BLOCK.rotate(radians(90*r));
        break;
      case 'O':
        O_BLOCK.rotate(radians(90*r));
        break;
      case 'T':
        T_BLOCK.rotate(radians(90*r));
        break;
      case 'S':
        S_BLOCK.rotate(radians(90*r));
        break;
      case 'Z':
        Z_BLOCK.rotate(radians(90*r));
        break;
      case 'J':
        J_BLOCK.rotate(radians(90*r));
        break;
      case 'L':
        L_BLOCK.rotate(radians(90*r));
        break;
      default:
        println("Nothing to rotate");
      }
    }
    switch(instanceTetromino) {
    case 'I':
      I_BLOCK.rotate(radians(90));
      break;
    case 'O':
      O_BLOCK.rotate(radians(90));
      break;
    case 'T':
      T_BLOCK.rotate(radians(90));
      break;
    case 'S':
      S_BLOCK.rotate(radians(90));
      break;
    case 'Z':
      Z_BLOCK.rotate(radians(90));
      break;
    case 'J':
      J_BLOCK.rotate(radians(90));
      break;
    case 'L':
      L_BLOCK.rotate(radians(90));
      break;
    default:
      println("Nothing to rotate");
    }
  }
  void checkCollision() {
  
  }
}

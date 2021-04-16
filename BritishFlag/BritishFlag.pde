size (1000, 500);
int xPos = 0;
int yPos = 0;
int xPos2 = 950;
int yPos2 = 0;
int _xPos = 0;
int _yPos = 0;
int _xPos_ = 0;
int _yPos_ = 500;
int _xPos2 = 975;
int _yPos2 = 0;
int _xPos_2 = 975;
int _yPos_2 = 500;
background (0, 35, 125); //backround is now navy blue
noStroke();
for (int i = 0; i < 500; i++) {
  fill(255, 255, 255); //filling white
  
  rect (xPos, yPos, 50, 50);
  xPos += 2;
  yPos += 1;
}
for (int i = 0; i < 500; i++) {
  fill(255, 255, 255); //filling white again, just trying to stay consistent
  
  rect (xPos2, yPos2, 50, 50);
  xPos2 -= 2;
  yPos2 += 1;
}
rect (450, 0, 100, 500);
rect (0, 215, 1000, 100);

fill(208, 20, 44); //filling red

rect (475, 0, 50, 500);
rect (0, 237.5, 1000, 50);

for (int i = 0; i < 250; i++) {
  fill(208, 20, 44); //filling red
  
  rect (_xPos, _yPos, 25, 25);
  _xPos += 2;
  _yPos += 1;
}

for (int i = 0; i < 250; i++) {
  fill(208, 20, 44); //filling red
  
  rect (_xPos_, _yPos_, 25, 25);
  _xPos_ += 2;
  _yPos_ -= 1;
}

for (int i = 0; i < 250; i++) {
  fill(208, 20, 44); //filling red
  
  rect (_xPos2, _yPos2, 25, 25);
  _xPos2 -= 2;
  _yPos2 += 1;
}

for (int i = 0; i < 250; i++) {
  fill(208, 20, 44); //filling red
  
  rect (_xPos_2, _yPos_2, 25, 25);
  _xPos_2 -= 2;
  _yPos_2 -= 1;
}

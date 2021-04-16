PShape I_BLOCK;
PShape O_BLOCK;
PShape T_BLOCK;
PShape S_BLOCK;
PShape Z_BLOCK;
PShape J_BLOCK;
PShape L_BLOCK;
color[] typeSpecificColor = { #03F4FF, #D3CE29, #C303FF, #0308FF, #FFBC03, #5CF52F, #FA240D };

//EVERY SQUARE (SEGMENT OF THE BLOCKS) IS 40X40, AND THE WHOLE MAIN GAME IS GOING TO BE A 400-WIDE AREA THEN

void createShapes() {
  I_BLOCK = createShape();
  O_BLOCK = createShape();
  T_BLOCK = createShape();
  S_BLOCK = createShape();
  Z_BLOCK = createShape();
  J_BLOCK = createShape();
  L_BLOCK = createShape();
  
  I_BLOCK.beginShape();
  I_BLOCK.noStroke();
  I_BLOCK.fill(typeSpecificColor[0]);
  I_BLOCK.vertex(-20, 80);
  I_BLOCK.vertex(20, 80);
  I_BLOCK.vertex(20, -80);
  I_BLOCK.vertex(-20, -80);
  I_BLOCK.endShape(CLOSE);
  
  O_BLOCK.beginShape();
  O_BLOCK.noStroke();
  O_BLOCK.fill(typeSpecificColor[1]);
  O_BLOCK.vertex(-40, -40);
  O_BLOCK.vertex(-40, 40);
  O_BLOCK.vertex(40, 40);
  O_BLOCK.vertex(40, -40);
  O_BLOCK.endShape(CLOSE);
  
  T_BLOCK.beginShape();
  T_BLOCK.noStroke();
  T_BLOCK.fill(typeSpecificColor[2]);
  T_BLOCK.vertex(-60, 0);
  T_BLOCK.vertex(-20, 0);
  T_BLOCK.vertex(-20, 40);
  T_BLOCK.vertex(20, 40);
  T_BLOCK.vertex(20, 0);
  T_BLOCK.vertex(60, 0);
  T_BLOCK.vertex(60, -40);
  T_BLOCK.vertex(-60, -40);
  T_BLOCK.endShape(CLOSE);
  
  S_BLOCK.beginShape();
  S_BLOCK.noStroke();
  S_BLOCK.fill(typeSpecificColor[5]);
  S_BLOCK.vertex(-20, 0);
  S_BLOCK.vertex(-20, -40);
  S_BLOCK.vertex(60, -40);
  S_BLOCK.vertex(60, 0);
  S_BLOCK.vertex(20, 0);
  S_BLOCK.vertex(20, 40);
  S_BLOCK.vertex(-60, 40);
  S_BLOCK.vertex(-60, 0);
  S_BLOCK.endShape(CLOSE);
  
  Z_BLOCK.beginShape();
  Z_BLOCK.noStroke();
  Z_BLOCK.fill(typeSpecificColor[6]);
  Z_BLOCK.vertex(20, 0);
  Z_BLOCK.vertex(20, -40);
  Z_BLOCK.vertex(-60, -40);
  Z_BLOCK.vertex(-60, 0);
  Z_BLOCK.vertex(-20, 0);
  Z_BLOCK.vertex(-20, 40);
  Z_BLOCK.vertex(60, 40);
  Z_BLOCK.vertex(60, 0);
  Z_BLOCK.endShape(CLOSE);
  
  J_BLOCK.beginShape();
  J_BLOCK.noStroke();
  J_BLOCK.fill(typeSpecificColor[3]);
  J_BLOCK.vertex(0, 20);
  J_BLOCK.vertex(-40, 20);
  J_BLOCK.vertex(-40, 60);
  J_BLOCK.vertex(40, 60);
  J_BLOCK.vertex(40, -60);
  J_BLOCK.vertex(0, -60);
  J_BLOCK.endShape(CLOSE);
  
  L_BLOCK.beginShape();
  L_BLOCK.noStroke();
  L_BLOCK.fill(typeSpecificColor[4]);
  L_BLOCK.vertex(0, 20);
  L_BLOCK.vertex(40, 20);
  L_BLOCK.vertex(40, 60);
  L_BLOCK.vertex(-40, 60);
  L_BLOCK.vertex(-40, -60);
  L_BLOCK.vertex(0, -60);
  L_BLOCK.endShape(CLOSE);
}

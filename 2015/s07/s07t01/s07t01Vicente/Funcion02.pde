
void nicotron(float x, float y) {

  //cuadrados
  fill(blt);
  noStroke();
  beginShape(); //centro
  vertex(255, 240);
  vertex(355, 240);
  vertex(355, 343);
  vertex(255, 343);
  endShape(CLOSE);

  fill(blt);
  stroke(net);
  strokeWeight(5);
  beginShape(); //cuadrado der
  vertex(474, 258);
  vertex(506, 292);
  vertex(474, 325);
  vertex(441, 292);
  endShape(CLOSE);

  beginShape(); //cuadrado izq
  vertex(133, 258);
  vertex(165, 292);
  vertex(133, 325);
  vertex(100, 292);
  endShape(CLOSE);

  fill(az);
  stroke(blt);
  strokeWeight(5);
  beginShape(); //cuadrado arriba
  vertex(306, 88);
  vertex(336, 121);
  vertex(306, 153);
  vertex(275, 121);
  endShape(CLOSE);
  
  beginShape(); //cuadrado abajo
  vertex(306, 429);
  vertex(336, 462);
  vertex(306, 494);
  vertex(275, 462);
  endShape(CLOSE);

  //triangulos

  fill(azt);
  noStroke();
  triangle(282, 240, 327, 240, 305, 202); //arriba
  triangle(282, 343, 327, 343, 305, 381); //abajo
  triangle(255, 269, 255, 314, 215, 292); //izq
  triangle(355, 269, 355, 314, 395, 292); //der

  //circulo de cuadrado
  fill(azt);
  stroke(amt);
  strokeWeight(4);
  ellipse(305, 292, 50, 50);

  //circulo grande
  noFill();
  stroke(net);
  strokeWeight(4);
  ellipse(305, 292, 500, 500);

  //Hexagonos
  fill(bl); 
  stroke(az);
  strokeWeight(5);

  beginShape(); //der arriba
  vertex(388, 120);
  vertex(455, 140);
  vertex(474, 208);
  vertex(424, 258);
  vertex(355, 241);
  vertex(337, 171);
  endShape(CLOSE);

  beginShape(); //izq arriba 
  vertex(255, 240);
  vertex(185, 258);
  vertex(135, 208);
  vertex(152, 138);
  vertex(221, 120);
  vertex(270, 171);
  endShape(CLOSE);

  beginShape(); //der abajo
  vertex(425, 325);
  vertex(475, 375);
  vertex(457, 442);
  vertex(390, 461);
  vertex(337, 410);
  vertex(355, 343);
  endShape(CLOSE);

  beginShape(); //izq abajo
  vertex(254, 343);
  vertex(270, 410);
  vertex(221, 461);
  vertex(152, 442);
  vertex(134, 375);
  vertex(183, 325);
  endShape(CLOSE);

  //circulos

  noFill();
  stroke(net);
  strokeWeight(3);
  ellipse(407, 190, 45, 45);//arriba der
  ellipse(203, 190, 45, 45);//arriba izq
  ellipse(407, 393, 45, 45);//abajo der
  ellipse(203, 393, 45, 45);//abajo izq
}


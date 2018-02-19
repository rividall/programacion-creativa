
void triforce(float x, float y) {

  //Hexagono
  fill(bl); 
  stroke(az);
  strokeWeight(5);
  beginShape();
  vertex(132, 73);
  vertex(369, 73);
  vertex(488, 278);
  vertex(368, 484);
  vertex(132, 484);
  vertex(13, 278);
  endShape(CLOSE);

  //triangulos
  fill(azt);
  noStroke();
  triangle(250, 90, 170, 230, 333, 230); //arriba
  triangle(333, 230, 410, 370, 250, 370); //der
  triangle(170, 230, 90, 370, 250, 370); //izq

  fill(amt);
  stroke(ne);
  strokeWeight(3);
  triangle(170, 230, 333, 230, 250, 370);//centro


  //rombos
  fill(az);
  stroke(am);
  strokeWeight(3);
  beginShape();
  vertex(377, 167);
  vertex(444, 167);
  vertex(410, 225);
  vertex(342, 225);
  endShape(CLOSE);
  beginShape();
  vertex(250, 383);
  vertex(218, 440);
  vertex(250, 500);
  vertex(285, 440);
  endShape(CLOSE);

  beginShape();
  vertex(160, 225);
  vertex(90, 225);
  vertex(58, 167);
  vertex(126, 167);
  endShape(CLOSE);

  //circulos
  fill(blt);
  stroke(net);
  strokeWeight(5);
  ellipse(170, 319, 30, 30);//izq
  ellipse(333, 319, 30, 30);//der
  ellipse(250, 175, 30, 30);//arriba
  
}


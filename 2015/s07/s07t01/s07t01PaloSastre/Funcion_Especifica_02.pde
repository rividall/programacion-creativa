//Función específica 02
void octagono(color oct) {
  //elipses arriba y abajo rectangulos
  noStroke();
  fill(co);
  ellipse(200, 92, 15, 15); //circulo de arriba
  ellipse(200, 308, 15, 15); //circulo de abajo

  //elipse de afuera
  strokeWeight(7);
  stroke(n);
  noFill();
  ellipse(200, 200, 250, 250);

  //octagono
  noStroke();
  fill(oct);
  beginShape();
  vertex(238, 292); //abajo - der
  vertex(162, 292); //abajo - izq
  vertex(108, 238); //mas a la izq - abajo
  vertex(108, 162); //mas a la izq - arriba
  vertex(162, 108); //arriba - izq
  vertex(238, 108); //arriba - der
  vertex(292, 162); //mas a la der - arriba
  vertex(292, 238); //mas a la der - abajo
  endShape(CLOSE);

  //lineas afuera octagono
  strokeWeight(5);
  stroke(b);
  line(98, 248, 152, 302); //linea suroeste
  line(98, 152, 152, 98); //linea noroeste
  line(248, 98, 302, 152); //linea noreste
  line(302, 248, 248, 302); //linea sureste

  //lineas dentro octagono
  strokeWeight(5);
  stroke(n);
  line(150, 148, 150, 252); //izq
  line(250, 148, 250, 252); //der
  line(150, 148, 250, 252); //diagonal de izq arriba a abajo der
  line(250, 148, 150, 252); //diagonal de izq abajo a arriba der

  //rectangulos
  strokeWeight(7);
  stroke(t);
  fill(bt);
  rectMode(CORNERS);
  rect(162, 108, 192, 292); //rect izq
  rect(208, 108, 238, 292); //rect der
}


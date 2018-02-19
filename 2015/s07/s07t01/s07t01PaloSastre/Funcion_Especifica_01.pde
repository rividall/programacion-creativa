//Función específica 01
void hexagono(color hex) {
  noStroke();
  fill(hex);
  beginShape();
  vertex(50, 87);
  vertex(-50, 87);
  vertex(-100, 0);
  vertex(-50, -87);
  vertex(50, -87);
  vertex(100, 0);
  endShape(CLOSE);

  //lineas negras
  strokeWeight(5);
  stroke(n);
  line(-100, 0, -50, -87);
  line(50, -87, 100, 0);
  line(-50, -87, 50, 87);
  line(50, -87, -50, 87);

  //triangulo
  strokeWeight(7);
  stroke(t);
  fill(bt);
  triangle(0, -88, 75, 40, -75, 40);

  //elipses en las esquinas del triangulo
  noStroke();
  fill(b);
  ellipse(0, -108, 15, 15); //circulo de arriba
  ellipse(90, 50, 15, 15); //circulo derecha
  ellipse(-90, 50, 15, 15); //circulo izquierda

  //elipse de afuera
  strokeWeight(7);
  stroke(n);
  noFill();
  ellipse(0, 0, 250, 250);
}


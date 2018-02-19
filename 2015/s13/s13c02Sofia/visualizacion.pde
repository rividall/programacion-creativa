void visualizacion(float x1, float y1, float temmax, float temmed, float temmin, float rocio, float hummax, float hummed, float hummin, float vismin, float viento, float nube) {

  float rotar = viento * (TWO_PI/360);

  //TEMPERATURA MAXIMA CUADRADO MORADO
  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(s9, 40);
  noStroke();
  rectMode(CENTER);
  rect(x1, y1, temmax*3/2, temmax*3/2);
  popMatrix();

  //TEMPERATURA MEDIA CUADRADO TURQUESA
  fill(s7, 40);
  noStroke();
  rectMode(CENTER);
  rect(x1, y1, temmed, temmed);

  //TEMPERATURA MINIMA CUADRADO CELESTE
  fill(s14, 80);
  stroke(s11);
  strokeWeight(nube/2);
  rectMode(CENTER);
  rect(x1, y1, temmin, temmin);

  //ROCIO CUADRADO NARANJO
  fill(s12, 80);
  noStroke();
  ellipse(x1, y1, rocio*2, rocio*2);

  //HUMEDAD MAXIMA CIRCULO BLANCO
  fill(s1, 255 - hummed*3);
  noStroke();
  ellipse(x1, y1, hummax/2, hummax/2);

  //HUMEDAD MINIMA CUADRADO AMARILLO CLARO
  fill(s13, 255 - hummed*3);
  noStroke();
  rectMode(CENTER);
  rect(x1, y1, hummin/3, hummin/3);

  //NUBE CIRCULO AZUL
  fill(s10,90);
  noStroke();
  ellipse(x1, y1, nube*8, nube*8);
}
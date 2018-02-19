void visualizacion(float x1, float y1, float temmax, float temmed, float temmin, float rocio, float hummax, float hummin, float vismax, float vismin, float velviento, float precip, float cloud, float dirviento) {

  float rotviento = dirviento * (TWO_PI/360);

  //TEMPERATURA MAXIMA - CÍRCULO MAGENTA
  noStroke();
  fill(mag, 25);
  ellipse(x1, y1, temmax*4, temmax*4);

  //TEMPERATURA MEDIA - CIRCULO VERDE
  noStroke();
  fill(amar, 40);
  ellipse(x1, y1, temmed*3, temmed*3);

  //TEMPERATURA MINIMA - CIRCULO CIAN
  noStroke();
  fill(cian, 60);
  ellipse(x1, y1, temmin*2, temmin*2);

  //ROCIO - CUADRADO NARANJO
  noStroke();
  fill(nar, 120);
  rectMode(CENTER);
  rect(x1, y1, rocio*3/2, rocio*3/2);

  //HUMEDAD MAXIMA Y HUMEDAD MINIMA - CIRCULO CELESTE Y STROKE AMARILLO
  fill(cel, 60);
  stroke(amarcl, 255 - hummin*4);
  ellipse(x1, y1, hummax/4, hummax/4);

  //PRECIPITACIONES - CIRCULO NEGRO
  fill(neg, 60);
  noStroke();
  ellipse(x1, y1, precip, precip);

  //CLOUD - CIRCULO BLANCO
  fill(bla, 100);
  ellipse(x1, y1, cloud*2, cloud*2);

  //DIRECCION VIENTO Y VELOCIDAD VIENTO - DIRECCION LINEA Y GROSOR
  pushMatrix();
  translate(x1, y1);
  rotate(rotviento);
  stroke(tur, vismin*6);
  strokeWeight(velviento/8);
  line(x1, y1, dirviento, dirviento);
  popMatrix();
}
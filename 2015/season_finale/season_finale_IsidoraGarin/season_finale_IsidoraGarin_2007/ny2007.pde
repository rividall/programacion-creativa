void ny2007(float x1, float y1, float temmax, float temmin, float rocio, float hummax, float hummin, float precip, float cloud, float dirviento) {

  float rotviento = dirviento * (TWO_PI/360);

  //TEMPERATURA MÍNIMA CÍRCULO MAGENTA - TEMPERATURA MÁXIMA OPACIDAD CÍRCULO
  noStroke();
  fill(mag, temmax*3);
  ellipse(x1, y1, temmin*2, temmin*2);

  //HUMEDAD MÁXIMA CÍRCULO CIAN - HUMEDAD MÍNIMA OPACIDAD CÍRCULO
  noStroke();
  fill(cian, hummin);
  ellipse(x1, y1, hummax/3.2, hummax/3.2);

  //PRECIPITACIONES CIRCULO NEGRO - CLOUD COVER OPACIDAD CÍRCULO
  fill(neg, cloud*12);
  noStroke();
  ellipse(x1, y1, precip*2.2, precip*2.2);

  //ROCIO CÍRCULO NARANJO
  fill(nar, 120);
  ellipse(x1, y1, rocio, rocio);

  //DIRECCION VIENTO Y VELOCIDAD VIENTO - DIRECCION LINEA Y GROSOR
  pushMatrix();
  translate(x1, y1);
  rotate(rotviento);
  stroke(amarcl, 80);
  strokeWeight(4);
  line(0, 0, dirviento/3.2, 0);
  popMatrix();
}
//
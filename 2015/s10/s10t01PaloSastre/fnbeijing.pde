//fnbeijing(fecha, temperatura media, punto de rocio medio, humedad media, visibilidad media, 
//velocidad del viento media, precipitacion, eventos

void fnbeijing(String fecha, float tempmax, float tempmin, float humedad, float visib, float viento, float precip, String eventos) {
  /*
  fecha = titulo color amarillo
   tempmax = posicion punta triangulo rosado
   tempmin = posicion punta triangulo turquesa
   humedad = altura lineas blancas
   visib = transparencia elipse central
   viento = tamaño en 'y' de elipse central
   precipitacion = height del cuadrado de fondo color turquesa
   eventos = marco del canvas color amarillo
   */

  //VISIBILIDAD Y VIENTO
  noStroke();
  fill(255, 255, 255, 100+visib*2);
  ellipse(width/2, height/2, 200, 200+viento*3);

  //EVENTOS
  if (eventos.equals("Nieve")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Niebla")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Lluvia")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Niebla-Nieve")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Niebla-Lluvia")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Lluvia-Tormenta")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Tormenta")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  }
  if (eventos.equals("Niebla-Lluvia-Tormenta")) {
    stroke(a);
    strokeWeight(50);
    noFill();
    rectMode(CORNERS);
    rect(0, 0, width, height);
  } 
  
  //PRECIPITACION
  float mapprecip = map(precip, 0, 30, 500, 250);
  noStroke();
  fill(t);
  rectMode(CORNERS);
  rect(0, mapprecip, width, height);

  //TEMPERATURA MAXIMA
  float maptempmax = map(tempmax, 0, 50, 0, 300);
  noStroke();
  fill(r);
  triangle(375, maptempmax, 300, 0, 450, 0);

  //TEMPERATURA MINIMA
  float maptempmin = map(tempmin, -15, 28, 250, 0);
  noStroke();
  fill(t);
  triangle(125, maptempmin, 50, 0, 200, 0);

  //HUMEDAD
  stroke(b);
  strokeWeight(30);
  line(125, height, 125, height-humedad);
  line(375, height, 375, height-humedad);

  //FECHA
  fill(a);
  textSize(20);
  textAlign(BOTTOM);
  text(fecha, width/3+35, height-50);
}


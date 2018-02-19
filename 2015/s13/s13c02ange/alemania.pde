void alw(float x1, float y1, String micumpleanos, String fecha, float tmax, String tmaxima, float tmin, String tminima, float hmax, float hmin, float visimed, String vimed, float visimin, String vimin, float vienmax, float vienmed) {

  float angulo, conversion;
  color cel, azul, rojo, crema;

  cel = color(113, 156, 177);
  azul = color(49, 72, 91);
  rojo = color(200, 84, 67);
  crema = color(236, 220, 210);

  angulo = 0;
  conversion = angulo * (TWO_PI/360);

  //VIENTO MEDIO rotacion color azul
  pushMatrix();
  conversion = vienmed * 2 * (TWO_PI/360);
  translate(x1, y1);
  rotate(- conversion);
  noFill();
  strokeWeight(1);
  stroke(azul);
  rect(0, 0, vienmax * 4, vienmax * 4); //VIENTO MAXIMO 
  popMatrix();

  //TEMPERATURA MAXIMA color crema
  pushMatrix();
  angulo = 0;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);  
  fill(crema, 200);
  stroke(crema);
  strokeWeight(1);
  rectMode(CENTER);
  triangle(15, 0, - 15, 0, 0, - tmax);
  popMatrix();

  //VISIBILIDAD MEDIA color celeste
  angulo = 90;
  conversion = angulo * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);  
  fill(cel, 200);
  stroke(crema);
  strokeWeight(1);
  triangle(15, 0, - 15, 0, 0, visimed);
  popMatrix();

  //VISIBILIDAD MINIMA color azul
  pushMatrix();
  angulo = - 90;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);  
  fill(azul, 200);
  stroke(crema);
  strokeWeight(1);
  triangle(15, 0, -15, 0, 0, visimin);
  popMatrix();

  //TEMPERATURA MINIMA color rojo
  pushMatrix();
  angulo = 0;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);  
  fill(rojo, 200);
  strokeWeight(1);
  stroke(crema);
  triangle(15, 0, - 15, 0, 0, tmin);
  popMatrix();

  //HUMEDAD MINIMA rotacion color crema
  pushMatrix();
  conversion = hmin * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);
  noFill();
  strokeWeight(1);
  stroke(cel);
  rect(0, 0, hmax/2, hmax/2); //HUMEDAD MAXIMA
  popMatrix();

  //MI CUMPLEAÑOS
  pushMatrix();
  translate(350, 327);
  fill(255);
  textSize(10);
  text(micumpleanos, 0, 0);
  popMatrix();
}
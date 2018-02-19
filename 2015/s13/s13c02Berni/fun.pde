void fun(String fecha, float x1, float y1, float tmax, String velmini, float tmed, float tmin, float humin, String humini, float humax, float velmax, float velmin, float maxvisib, float mevisib, float mivisib) {
  float angulo, angulo2, angulo3, angulo4, conversion, conversion2;

  conversion = 45 * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  fill(0);
  noStroke();
  rectMode(CENTER);
  rect(0, 0, velmax, velmax);
  popMatrix();

  conversion = humax * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);

  fill(color (255, 136, 6));
  noStroke();
  ellipse(0, 0, tmax, tmax); // temperatura maxima naranja

  fill(color (6, 252, 252, 98));
  noStroke();
  ellipse(0, 0, humin, humin); //humedad minima celeste



  popMatrix();

  conversion2 = velmin * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(-conversion2);
  noFill();
  stroke(color(255));
  strokeWeight(velmin);
  line(0, 0, 30, 5);
  popMatrix();

  angulo = 80;
  conversion2 = humax * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion2);
  noFill();
  stroke(color(255, 0, 98, 80));
  strokeWeight(mivisib);
  line(0, 0, 50, 5);
  popMatrix();

  angulo2 = 90;
  conversion2 = angulo2 * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion2);
  noFill();
  stroke(color(6, 252, 252, 98));
  strokeWeight(mivisib);
  line(0, 0, 50, 5);
  popMatrix();

  angulo3 = 45;
  conversion2 = angulo3 * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion2);
  noFill();
  stroke(color(255, 0, 98, 80));
  strokeWeight(maxvisib);
  line(0, 0, 50, 5);
  popMatrix();
}
void funcion(float x1, float y1, String TempMax, float TempMax1, 
  String TempMin, float TempMin1, String MedVis, float MedVis1, 
  String vientoDir, float vientoDir1, String vientoMax, float vientoMax1) {

  float ap = vientoDir1 * (TWO_PI/360);
  float Tm = TempMin1 * (TWO_PI/360);


  pushMatrix();
  translate(x1, y1);
  rotate(ap);
  ellipseMode(CENTER);

  //temperatura maxima y visibilidad en alpha
  fill(211, 0, 0, MedVis1 * 25.5);
  stroke(2, 111, 212);
  strokeWeight(10);
  ellipse(0, 0, TempMax1 * 3, TempMax1 * 3);

  //temperatura minima
  strokeCap(SQUARE); 
  strokeWeight(10);
  stroke(211, 0, 0);
  noFill();
  arc(0, 0, TempMax1 * 3, TempMax1 * 3, 0, Tm * 10);

  /*direccion viento, el grosor del marcador esta determinado
   por la velocidad maxima del viento*/
  stroke(255);
  strokeWeight(ap);
  line(0, 0, vientoMax1, ap);
  popMatrix();
}
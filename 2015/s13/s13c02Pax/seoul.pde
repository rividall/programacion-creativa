void seoul(float x1, float y1, String fecha, float hummed, float tempmed, float hummax, float hummin, float tempmin, float tempmax, float maxvis, float minvis, float lluvias, float maxviento, float minviento, float maxpresion, float minpresion) {
  float ap = tempmed * (TWO_PI *360); // es dividido
  float apm = maxvis * (TWO_PI *360); // es dividido

 pushMatrix();
  translate(x1, y1);
  fill(ctt);
  triangle(x1, y1, maxviento/al, maxvis/al, minviento/al, minvis/al); 
  stroke(crr);
  
  fill(cg);
  ellipse(x1,y1, maxpresion/al, minpresion/al);
  popMatrix();
  
  pushMatrix();
  translate(x1, y1);
  rotate(apm);

  fill(ncolor);
  stroke(croo);
  ellipse(minviento, maxviento, 5*tempmed*0.1, 5*hummed*0.1);
  popMatrix();
  
  pushMatrix();
  translate(x1, y1);
  rotate(ap);
  stroke(crr);
  line (0, 0, tempmin, tempmax); 

  popMatrix();

  pushMatrix();
  translate(x1, y1);
  rotate(apm);

  stroke(con);
  strokeWeight(3*hummax*0.1);
  line (0, 0, minvis, 0);
  popMatrix();
}
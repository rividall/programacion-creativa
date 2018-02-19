void fn (float x1, float y1, float vislp, float velmaxlp, float velminlp) {


 float rotar  = 180 * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  stroke(255);
  line(0, 0, velmaxlp*2, velmaxlp*2);
  popMatrix();
  
  float  rotar2  = 90* (TWO_PI/360);

  pushMatrix();
  translate(x1, y1);
  rotate(rotar2);
  stroke(255);
  line(0, 0, velminlp*2, velminlp*2);
  popMatrix();
  
  fill(s4, vislp*10);
  noStroke();
  rectMode(CENTER);
  rect(x1, y1 , 15, 20);
  
}
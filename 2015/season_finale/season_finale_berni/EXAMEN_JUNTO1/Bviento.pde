void viento (float x1, float y1, float velmaxAU, float velminAU, float velmaxBE, float velminBE, float velmaxCA, float velminCA, float velmaxES, float velminES, float velmaxHA, float velminHA, float velmaxPA, float velminPA, float velmaxRO, float velminRO, float velmaxSP, float velminSP, float velmaxSN, float velminSN, float velmaxSY, float velminSY) {
  float conversion;
  
  
  conversion = 50 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxAU, velmaxAU);
  popMatrix();
  
  conversion = 80 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxBE, velmaxBE);
  popMatrix();
  
  conversion = 100 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(2);
  rectMode(CENTER);
  line(0, 0, velmaxCA, velmaxCA);
  popMatrix();
    
  conversion = 120 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(2);
  rectMode(CENTER);
  line(0, 0, velmaxES, velmaxES);
  popMatrix();
  
    conversion = 140 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxHA, velmaxHA);
  popMatrix();
  
  conversion = 160 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxPA, velmaxPA);
  popMatrix();
  
   conversion = 180 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxRO, velmaxRO);
  popMatrix();
  
   conversion = 200 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxSP, velmaxSP);
  popMatrix();
  
   conversion = 220 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxSN, velmaxSN);
  popMatrix();
  
   conversion = 240 * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  line(0, 0, velmaxSY, velmaxSY);
  popMatrix();
  
  noStroke();
  fill(123);
  ellipse(x1, y1, 15, 15);
  
}
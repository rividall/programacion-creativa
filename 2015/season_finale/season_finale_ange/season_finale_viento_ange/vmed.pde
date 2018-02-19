void vmed(float x1, float y1, float vmedlisb, float vmedmad, float vmedpari, float vmedrom, float vmedberl, float vmedbern, float vmedvien, float vmedamst, float vmedbrus, float vmedlond) {

  float angulo, conversion;
  color cel;
  cel = color(120, 164, 187);

  pushMatrix();
  angulo = vmedlisb *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 - 65);
  rotate(conversion);  
  noFill();
  strokeWeight(0.5);
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedmad *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 5);
  rotate(conversion);  
  noFill();
  stroke(cel);
  ;
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedpari *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 75);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedrom *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 145);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedberl *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 215);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedbern *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 285);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedvien *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 355);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedamst *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 425);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedbrus *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 495);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedlond *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 565);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();
}
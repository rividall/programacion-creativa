void vmax(float x1, float y1, float vmaxlisb, float vmaxmad, float vmaxpari, float vmaxrom, float vmaxberl, float vmaxbern, float vmaxvien, float vmaxamst, float vmaxbrus, float vmaxlond) {


  float angulo, conversion;

  angulo = 0;
  conversion = angulo * (TWO_PI/360);

  pushMatrix();
  angulo = vmaxlisb *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 - 65);
  rotate(conversion);  
  fill(250, vmaxlisb*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxmad *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 5);
  rotate(conversion);  
  fill(250, vmaxmad*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxpari *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 75);
  rotate(conversion);  
  fill(250, vmaxpari*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxrom *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 145);
  rotate(conversion);  
  fill(250, vmaxrom*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxberl *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 215);
  rotate(conversion);  
  fill(250, vmaxberl*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxbern *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 285);
  rotate(conversion);  
  fill(250, vmaxbern*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxvien *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 355);
  rotate(conversion);  
  fill(250, vmaxvien*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxamst *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 425);
  rotate(conversion);  
  fill(250, vmaxamst*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxbrus *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 495);
  rotate(conversion);  
  fill(250, vmaxbrus*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxlond *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 565);
  rotate(conversion);  
  fill(250, vmaxlond*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();
}
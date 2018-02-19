void tmax(float x1, float y1, float tmaxlisb, float tmaxmad, float tmaxpari, float tmaxrom, float tmaxberl, float tmaxbern, float tmaxvien, float tmaxamst, float tmaxbrus, float tmaxlond) {
color rojo;
rojo = color(228, 69, 59);

  noStroke();
  fill(rojo, tmaxlisb*5);
  ellipse(x1, y1 - 70, tmaxlisb/2, tmaxlisb/2);

  fill(rojo, tmaxmad*5);
  ellipse(x1, y1, tmaxmad/2, tmaxmad/2);
  
  fill(rojo, tmaxmad*5);
  ellipse(x1, y1  + 70, tmaxpari/2, tmaxpari/2);

  fill(rojo, tmaxrom*5);
  ellipse(x1, y1  + 140, tmaxrom/2, tmaxrom/2);

  fill(rojo, tmaxberl*5); 
  ellipse(x1, y1  + 210, tmaxberl/2, tmaxberl/2);

  fill(rojo, tmaxbern*5);
  ellipse(x1, y1  + 280, tmaxbern/2, tmaxbern/2);

  fill(rojo, tmaxvien*5); 
  ellipse(x1, y1  + 350, tmaxvien/2, tmaxvien/2);

  fill(rojo, tmaxamst*5); 
  ellipse(x1, y1  + 420, tmaxamst/2, tmaxamst/2);

  fill(rojo, tmaxbrus*5);
  ellipse(x1, y1  + 490, tmaxbrus/2, tmaxbrus/2);

  fill(rojo, tmaxlond*5); 
  ellipse(x1, y1  + 560, tmaxlond/2, tmaxlond/2);
}
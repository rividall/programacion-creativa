void tmin(float x1, float y1, float tminlisb, float tminmad, float tminpari, float tminrom, float tminberl, float tminbern, float tminvien, float tminamst, float tminbrus, float tminlond) {
color cel;
cel = color(0, 157, 155);

  noStroke();
  fill(cel, tminlisb*5);
  ellipse(x1, y1 - 70, tminlisb/2, tminlisb/2);

  fill(cel, tminmad*5);
  ellipse(x1, y1, tminmad/2, tminmad/2);
  
  fill(cel, tminmad*5);
  ellipse(x1, y1  + 70, tminpari/2, tminpari/2);

  fill(cel, tminrom*5);
  ellipse(x1, y1  + 140, tminrom/2, tminrom/2);

  fill(cel, tminberl*5); 
  ellipse(x1, y1  + 210, tminberl/2, tminberl/2);

  fill(cel, tminbern*5);
  ellipse(x1, y1  + 280, tminbern/2, tminbern/2);

  fill(cel, tminvien*5); 
  ellipse(x1, y1  + 350, tminvien/2, tminvien/2);

  fill(cel, tminamst*5); 
  ellipse(x1, y1  + 420, tminamst/2, tminamst/2);

  fill(cel, tminbrus*5);
  ellipse(x1, y1  + 490, tminbrus/2, tminbrus/2);

  fill(cel, tminlond*5); 
  ellipse(x1, y1  + 560, tminlond/2, tminlond/2);
}
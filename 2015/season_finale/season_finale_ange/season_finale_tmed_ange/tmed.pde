void tmed(float x1, float y1, float tmedlisb, float tmedmad, float tmedpari, float tmedrom, float tmedberl, float tmedbern, float tmedvien, float tmedamst, float tmedbrus, float tmedlond) {
color ver;
ver = color(171, 201, 77);

  noStroke();
  fill(ver, tmedlisb*5);
  ellipse(x1, y1 - 70, tmedlisb/2, tmedlisb/2);

  fill(ver, tmedmad*5);
  ellipse(x1, y1, tmedmad/2, tmedmad/2);
  
  fill(ver, tmedmad*5);
  ellipse(x1, y1  + 70, tmedpari/2, tmedpari/2);

  fill(ver, tmedrom*5);
  ellipse(x1, y1  + 140, tmedrom/2, tmedrom/2);

  fill(ver, tmedberl*5); 
  ellipse(x1, y1  + 210, tmedberl/2, tmedberl/2);

  fill(ver, tmedbern*5);
  ellipse(x1, y1  + 280, tmedbern/2, tmedbern/2);

  fill(ver, tmedvien*5); 
  ellipse(x1, y1  + 350, tmedvien/2, tmedvien/2);

  fill(ver, tmedamst*5); 
  ellipse(x1, y1  + 420, tmedamst/2, tmedamst/2);

  fill(ver, tmedbrus*5);
  ellipse(x1, y1  + 490, tmedbrus/2, tmedbrus/2);

  fill(ver, tmedlond*5); 
  ellipse(x1, y1  + 560, tmedlond/2, tmedlond/2);
}
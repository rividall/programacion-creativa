void visimin(float x1, float y1, float visiminlisb, float visiminmad, float visiminpari, float visiminrom, float visiminberl, float visiminbern, float visiminvien, float visiminamst, float visiminbrus, float visimilond) {

  color ama;
  ama = color(255, 219, 101); 
  
  strokeWeight(1);
  stroke(ama, visiminlisb*8);
  line(x1, y1 -120, x1, y1 + 15 -120);

  strokeWeight(1);
  stroke(ama, visiminmad*8);
  line(x1, y1 -45, x1, y1 + 15 - 45);

  strokeWeight(1);
  stroke(ama, visiminpari*8);
  line(x1, y1 + 30, x1, y1 + 15 +30);

  strokeWeight(1);
  stroke(ama, visiminrom*8);
  line(x1, y1 + 105, x1, y1 + 15 +105);

  strokeWeight(1);
  stroke(ama, visiminberl*8);
  line(x1, y1 +180, x1, y1 + 15 +180);

  strokeWeight(1);
  stroke(ama, visiminbern*8);
  line(x1, y1+255, x1, y1 + 15 + 255);

  strokeWeight(1);
  stroke(ama, visiminvien*8);
  line(x1, y1+330, x1, y1 + 15 +330);

  strokeWeight(1);
  stroke(ama, visiminamst*8);
  line(x1, y1+405, x1, y1 + 15 +405);

  strokeWeight(1);
  stroke(ama, visiminbrus*8);
  line(x1, y1+480, x1, y1 + 15+480);

  strokeWeight(1);
  stroke(ama, visiminlond*8);
  line(x1, y1+555, x1, y1 + 15+555);
}
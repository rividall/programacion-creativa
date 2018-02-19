void hmin(float x1, float y1, float hminlisb, float hminmad, float hminpari, float hminrom, float hminberl, float hminbern, float hminvien, float hminamst, float hminbrus, float hminlond) {

  color cel;
  cel = color(0, 157, 155);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 - 115);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 - 115, x1, y1 - hminlisb/7 - 115);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 - 40);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 - 40, x1, y1 - hminmad/7 - 40);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 35);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 35, x1, y1 - hminpari/7 + 35);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 110);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 110, x1, y1 - hminrom/7 + 110);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 185);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 185, x1, y1 - hminberl/7 + 185);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 260);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 260, x1, y1 - hminbern/7 + 260);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 335);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 335, x1, y1 - hminvien/7 + 335);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 410);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 410, x1, y1 - hminamst/7 + 410);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 485);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 485, x1, y1 - hminbrus/7 + 485);

  strokeWeight(3);
  stroke(cel);
  fill(cel);
  point(x1, y1 + 560);
  stroke(250);
  strokeWeight(1);
  line(x1, y1 + 560, x1, y1 - hminlond/7  + 560);
}
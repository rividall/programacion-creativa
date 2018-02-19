void hmax(float x1, float y1, float hmaxlisb, float hmaxmad, float hmaxpari, float hmaxrom, float hmaxberl, float hmaxbern, float hmaxvien, float hmaxamst, float hmaxbrus, float hmaxlond) {

  color cel;
  cel = color(0, 157, 155);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 - 115);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 - 115, x1, y1 - hmaxlisb/7 - 115);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 - 40);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 - 40, x1, y1 - hmaxmad/7 - 40);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 35);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 35, x1, y1 - hmaxpari/7 + 35);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 110);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 110, x1, y1 - hmaxrom/7 + 110);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 185);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 185, x1, y1 - hmaxberl/7 + 185);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 260);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 260, x1, y1 - hmaxbern/7 + 260);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 335);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 335, x1, y1 - hmaxvien/7 + 335);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 410);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 410, x1, y1 - hmaxamst/7 + 410);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 485);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 485, x1, y1 - hmaxbrus/7 + 485);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 560);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 560, x1, y1 - hmaxlond/7  + 560);
}
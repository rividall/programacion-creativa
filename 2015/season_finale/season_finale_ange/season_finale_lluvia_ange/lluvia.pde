void lluv(float x1, float y1, float lluvlisb, float lluvmad, float lluvpari, float lluvrom, float lluvberl, float lluvbern, float lluvvien, float lluvamst, float lluvbrus, float lluvlond) {

  color cel;
  cel = color(0, 157, 155);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 -180 + lluvlisb);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 - 180, x1, y1 + lluvlisb - 180);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 - 106 +lluvmad);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 - 106, x1, y1 + lluvmad - 106);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 - 32 +lluvpari);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 - 32, x1, y1 + lluvpari - 32);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 42 +lluvrom);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 42, x1, y1 + lluvrom + 42);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 116 + lluvberl);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 116, x1, y1 + lluvberl + 116);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 190 + lluvbern);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 190, x1, y1 + lluvbern + 190);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 264 + lluvvien);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 264, x1, y1 + lluvvien + 264);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 338 + lluvamst);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 338, x1, y1 + lluvamst + 338);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 412 + lluvbrus);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 412, x1, y1 + lluvbrus + 412);

  strokeWeight(3);
  stroke(250);
  fill(250);
  point(x1, y1 + 486 + lluvlond);
  stroke(cel);
  strokeWeight(1);
  line(x1, y1 + 486, x1, y1 + lluvlond  + 486);
}
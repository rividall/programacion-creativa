class Objeto {

  float x, y;
  float angle;
  float b;
  float v0, v1;
  float u, d, l, r;

  Objeto(int o) {
    a = 0.005;
    b=185;
    m=1.5;
    v0=0;
    v1+= a * m;
    background (0);
  }

  void lines (int var1) {
    background (0);

    for (int i = 0; i < 10; i++) {

      pushMatrix ();
      translate (width/2, height/2);

      v1 += a * m;
      float velocidad = map (i, 0, 9, v0, v1);
      angle = velocidad;
      x = b * cos (angle);
      y = b * sin (angle);


      strokeWeight (3);
      stroke(208, 194, 150);
      line (x, y, 0, 250);

      strokeWeight (3);
      stroke(208, 194, 150);
      line (x, y, -250, 0);

      strokeWeight (3);
      stroke(208, 194, 150);
      line (x, y, 0, -250);

      strokeWeight (3);
      stroke(208, 194, 150);
      line (x, y, 250, 0);

      popMatrix ();
    }
  }

  void elipses1 (int var2) {
    background (0);
    noStroke ();
    fill (208, 194, 150);
    ellipse (300, 300, 50, 50);

    translate(width/2, height/2);
    q++;
    fill(208, 194, 150);
    rotate(radians(q));

    translate(width/4, height/4);
    p+=8;
    rotate(radians(p));
    fill(208, 194, 150);
    ellipse(50, 0, 10, 10);

    translate(width/4, height/4);
    p+=4;
    rotate(radians(p));
    fill(208, 194, 150);
    ellipse(0, 0, 10, 10);
  }

  void elipses2 (int var3) {
    noStroke ();
    fill (208, 194, 150);
    ellipse (300, 300, 50, 50);

    translate(width/2, height/2);
    q++;
    fill(208, 194, 150);
    rotate(radians(q));

    translate(width/4, height/4);
    p+=8;
    rotate(radians(p));
    fill(208, 194, 150);
    ellipse(50, 0, 10, 10);

    translate(width/4, height/4);
    p+=4;
    rotate(radians(p));
    fill(208, 194, 150);
    ellipse(0, 0, 10, 10);
  }

}

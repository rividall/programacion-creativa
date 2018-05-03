float x, y;
float angle, r;
float a;

void setup () {
  size(700, 700);
  background (0);
}

void draw () {

  background (0);
  translate (width/2, height/2);

  for (int i = 0; i < 30; i++) {
    a+=0.0005;
    float velocidad = map (i, 0, 29, 0, a);
    angle = velocidad;
    r = i * 15;
    x = r * cos (angle);
    y = r * sin (angle);

    noStroke();
    fill(208, 194, 150);
    ellipse (x, y, 15, 15);
  }



  angle += .01;
}
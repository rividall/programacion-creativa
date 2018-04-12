class Circulos {

  float x;
  float y;
  float velx;
  float vely;
  float size;

  Circulos() {
    x=random(0, 600);
    y=random(0, 600);

    velx=random(-2, 2);
    vely=random(-2, 2);

    x += velx;
    y += vely;

    size = random (10, 30);
  }


  void show() {
    fill (0);
    ellipse (x, y, size, size);
  }

  void move () {
    x += velx;
    y += vely;
  }

  void again () {
    if (x>width || x<0 || y>height || y<0) {
      x = width/2;
      y = height/2;
      size = random(10, 30);
      fill(0);
    }
  }
}
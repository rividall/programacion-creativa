//UDD-Expresión Digital II
//s07e01Vicente
//keyPressed funcion

float s1, s2, s3;
color cy, cb, cn, cc;

void setup() {
  size(500, 500);

  //valores de tamaño
  s1 = 5;
  s2 = 15;

  //valores color
  cy = color(69, 119, 232);
  cb = color(232, 182, 71);
  cn = color(0);

  //variables especificas
  cc = cb;
  s3 = s1;
}

void draw() {
  background(cn);
  //elementos a dibujar
  strokeWeight(s3);
  stroke(cc);
  noFill();
  ellipse(width/2, height/2, 100, 100);

  strokeWeight(s3);
  stroke(cc);
  line(0, 0, width, height);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      s3 = s2;
      cc = cy;
    }
    if (keyCode == RIGHT) {
      s3 = s1;
      cc = cb;
    }
  }
}



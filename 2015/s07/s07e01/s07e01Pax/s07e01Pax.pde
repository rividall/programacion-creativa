//udd - Expresión digital
//s07e01PaxSylleros
//crear una tercera variable y cambiar el color de la ellipse con las flechas

color d1, d2, d3;

void setup() {
  size (500, 500);

  d1 = color (232, 1, 20);
  d2 = color (6, 255, 192);

  d3 = d1;
}

void draw() {
  background (255);
  ellipse(width/2, height/2, 100, 100);
  stroke (0);
  fill (d3);
}

void keyPressed () {
  if (key == CODED) {
    if (keyCode == LEFT) {
      d3 = d2;
    }
    if (keyCode == RIGHT) {
      d3 = d1;
    }
  }
}


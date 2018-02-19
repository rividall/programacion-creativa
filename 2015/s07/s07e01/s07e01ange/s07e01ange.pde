//UDD - Expresión Digital II
//s07e01ange
//keyPressed dos ellipses, cambio de color ellipce de adentro con las teclas a y s

//variable stroke
float s1, s2;

//varaible color
color c1, c2;

//variables fill y stroke
float gStroke;
color cFill;

void setup() {
  size(400, 400);

  //valores de stroke
  s1 = 10;
  s2 = 20;

  //valores de colores
  c1 = color(234, 89, 32);
  c2 = color(32, 198, 234);

  //asignacion de valores a varibles especifica
  gStroke = s1;
  cFill = c1;
}

void draw() {
  background(255);

  //elemento a dibujar son dos ellipse
  strokeWeight(gStroke);
  stroke(cFill);
  noFill();
  ellipse(width/2, height/2, 200, 200);

  strokeWeight(5);
  stroke(c2);
  noFill();
  ellipse(width/2, height/2, 300, 300);
}

void keyPressed() {
  if (key == 'a') {
    gStroke = s1;
    cFill = c1;
  }
  if (key == 's') {
    gStroke = s2;
    cFill = c2;
  }
}


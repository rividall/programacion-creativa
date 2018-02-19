//UDD - Expresión Digital II
//s07e02ange
//Mickeymouse, Funciones especificas 

color m, c, y;

void setup() {
  size(400, 400);
  smooth();

  //inicializacion de colores
  m = color(234, 89, 32);
  c = color(32, 198, 234);
  y = color(0);
}

void draw() {
  background(m);

  mickeymouse(mouseX, mouseY, mouseX * .3);
}

void mickeymouse(float posx, float posy, float altura) {
  strokeWeight(3);
  stroke(y);
  fill(255);
  ellipse(posx - altura, posy - altura, altura, altura);
  ellipse(posx + altura, posy - altura, altura, altura);
  ellipse(posx, posy, altura * 2, altura * 2);

  noStroke();
  fill(y);
  ellipse(posx - altura/3, posy - altura/3, altura/2, altura/2);
  ellipse(posx + altura/3, posy - altura/3, altura/2, altura/2);
  
}


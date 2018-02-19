//UDD - Representacion Digital 2
//s04t01cordero Estamos usando el primer nombre como notación s04t01Max
//Rebote Pelotita
int posX = 0;
int posY = 0;
int speedY= 7;
int speedX = 3;
int c1;
int c2;
float cx;

void setup() {
  size(500, 500);

  cx = width;
  c1 = color(41, 128, 185);
  c2 = color(46, 204, 113);
}

void draw() {
  background(c1);
  noStroke(); //problema de indentación 
  //ellipse color blanco
  // ¿cuál elipse?

  posX = posX + speedX;
  posY = posY + speedY;
  //direccion posicion mas velocidad
  if (posX > width) {
    speedX = speedX* -1;
    fill(c2);
    background(c1);
  }
  //ellipse color 1
  if (posX < 0) { //problema de indentación 
    speedX = speedX* -1;
  }
  
  //comentar qué hará esta condicional
  if (posY > height) {
    speedY= speedY* -1;
  }

  //comentar qué hará esta condicional
  if (posY < 0) {
    speedY= speedY*-1;
  }
  ellipse(posX, posY, 50, 50); //¿ésta?
}


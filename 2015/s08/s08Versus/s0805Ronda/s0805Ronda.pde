// UDD - Diseño Digital - Expresión Digital II
// versus 1.0
/*
rondas de ejercicios con aumento de complejidad:
 1ra ronda pasan 6
 2da ronda pasan 2 de los restantes
 3ra ronda pasan 4 de los 8
 4ta ronda pasan 2 de los 4
 5ta ronda pasa 1 de los 2
 */

/* 5ta ronda: 
 ellipse que inicia en el centro 
 ellipse que elige 1 entre 4 direcciones desde el centro del canvas
 al llegar a uno de los extremos vuvle al centro y elige otra dirección
 deja estela y cambia fondo
 
 pista: 
 frameCount
 int r = (int) random(n); devuelve un int
 */

float x, y, choice;
float velx, vely, speedx, speedy;

void setup() {
  size(800, 800);
  smooth();
  noStroke();
  velx = 0;
  vely = 0;
  speedx = 0;
  speedy = 0;



  x = width/2;
  y = height/2;
  choice = 10;
}

void draw() {
  velx += speedx;
  x += velx;
  vely += speedy;
  y += vely;  
  
  fill(255 - frameCount * 2.5, 0 + frameCount * 2.5, 255, 1);
  rect(0, 0, width, height);
  
  fill(255, 255, 0);
  ellipse(x, y, 50, 50);

  if (choice == 1) {
    speedx += 0.005;
  }
  if (choice == 2) {
    speedx -= 0.005;
  }
  if (choice == 3) {
    speedy += 0.005;
  }
  if (choice == 0) {
    speedy -= 0.005;
  }

  if (x > width) {
    x = width/2;
    y = height/2;
    velx = 0;
    vely = 0;
    speedx = 0;
    speedy = 0;
    choice = (int)random(4);
    frameCount = 0;
  }
  if (x < 0) {
    x = width/2;
    y = height/2;
    velx = 0;
    vely = 0;
    speedx = 0;
    speedy = 0;
    choice = (int)random(4);
    frameCount = 0;
  }
  if (y > height) {
    x = width/2;
    y = height/2;
    velx = 0;
    vely = 0;
    speedx = 0;
    speedy = 0;
    choice = (int)random(4);
    frameCount = 0;
  }
  if (y < 0) {
    x = width/2;
    y = height/2;
    velx = 0;
    vely = 0;
    speedx = 0;
    speedy = 0;
    choice = (int)random(4);
    frameCount = 0;
  }
  println(frameCount);
}

void keyPressed() {
  if (key == ' ') {
    choice = (int)random(4);
    frameCount = 0;
  }
}


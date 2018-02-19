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

// 1ra ronda: lineas diagonales

void setup() {
  size(800, 800);
  smooth();
  strokeWeight(5);
}

void draw() {  
  background(255);
  for (int i = 20; i < width-20; i += 20) {
    stroke(0, 255, 255 - i*.1, 150);
    line(i, 20, i+20, height-20);
  }
  for (int i = 20; i < width-20; i += 20) {
    stroke(255, 0, 255 - i*.1, 150);
    line(i, height-20, i+20, 20);
  }
}


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

// 2ra ronda: 2 x 3 array

void setup() {
  size(800, 800);
  smooth();
  strokeWeight(10);
}

void draw() {  
  background(255);
  for (float i = width * .2; i <= width * .8; i += width * 0.1) {
    for (float j = height * .4; j <= height * .6; j += height * 0.1) {
      stroke(255, 0, 255);
      point(i, j);
    }
  }
}

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

// 3ra ronda: array in to out
// pista: colorMode + ciculos cada 20 + doble for loop cada 80
void setup() {
  size(800, 800);
  smooth();
  strokeWeight(10);
  colorMode(RGB, 800);
}

void draw() {  
  background(0);
  for (int i = 0; i <= width; i += 20){
      stroke(800);
      strokeWeight(1);
      fill(0, 800, 800, 800 - i);
      ellipse(width/2, height/2, i, i);
  }


  for (float i = width * .2; i <= width * .8; i += width * 0.1) {
    for (float j = height * .2; j <= height * .8; j += height * 0.1) {
      strokeWeight(10);
      stroke(800, 0, 800);
      point(i, j);
    }
  }
}


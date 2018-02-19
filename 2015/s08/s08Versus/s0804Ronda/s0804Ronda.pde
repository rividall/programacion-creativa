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

// 4ta ronda: lineas hortogonales que se separan con mouseY
// pista: strokeWeight igual al update del for loop

float x, y;
void setup() {
  size(800, 800);
  smooth();
  strokeWeight(10);
  
}

void draw() {  
  x = mouseX * -0.5;
  background(255);
  
  for (int i = 0; i <= width; i += 10) {
    stroke(0, 255, 255, 255 - i *.6);
    line(width/2 + x + i, 0, width/2 + i + x, height);
  }
  for (int i = 0; i <= width; i += 10) {
    stroke(0, 255, 255, 255 - i *.6);
    line(width/2 - x - i, 0, width/2 - i - x, height);
  }
 
  for (int i = 0; i <= height; i += 10) {
    stroke(255, 0, 255, 255 - i *.6);
    line(0, height/2 + x + i, width, height/2 + x + i); 
  }
  for (int i = 0; i <= height; i += 10) {
    stroke(255, 0, 255, 255 - i *.6);
    line(0, height/2 - x - i, width, height/2 - x - i);
  }
}


//UDD - Expresión Digital II
//s08t01Vicente
/*Creación de funciones especificas, graficamente distintas, que dibujen dos elementos
 diferentes que interactuen entre si, ambas funciones siguen al mouse, y el segundo elemento
 está repetido y giran entorno a sus ejes. 
 Al apretar las teclas "espacio" y "a" cambian los colores de relleno de las figuras y del canvas.
 En esta tarea se debía incluir uno de los ejercicios del versus, por lo que le incluí el ejercicio
 de las lineas diagonales, el cual fue al cual pude entenderle bien la lógica de funcionamiento
 */

color bl, ne, az, am, blt, amt, azt, net;
float r;

void setup() {
  size(800, 800);
  smooth();

  //inicialización de colores
  bl = color(255); //blanco
  blt = color(255, 255, 255, 230); //blanco con transparencia
  ne = color(0); //negro
  net = color(0, 0, 0, 100); //negro con transparencia
  az = color(69, 119, 232); //azul
  azt = color(69, 119, 232, 100); //azul con transparencia
  am = color(232, 182, 71); //amarillo
  amt = color(232, 182, 71, 150); //amarillo con transparencia

  //rotación
  r = 0;
}

void draw() {

  for (int i = 10; i < width-10; i += 10) {
    strokeWeight(5);
    stroke(69, 119, 232 - i*.1, 100);
    line(i, 10, i+10, height-10);
  }
  for (int i = 10; i < width-10; i += 10) {
    strokeWeight(5);
    stroke(232, 182, 71 - i*.1, 80);
    line(i, height-10, i+10, 10);
  }
  //fondo con transparencia para dejar estela
  fill(amt);
  noStroke();
  rect(0, 0, width, height);

  /*elemento propio con escala del 75% y traslación del mouse para que quede al centro
   de este*/
  scale(0.75);
  translate(mouseX-100, mouseY-100);
  triforce(mouseX, mouseY); 

  /*segundo elemento propio con escala del 50% y rotación a un lado del primer elemento*/
  rotate(r);
  r += 0.05;
  scale(0.5);
  translate(-275, -275);
  nicotron(mouseY, mouseX);

  /*tercer elemento mas pequeño que gira al rededor del segundo elemento con una escala de 50%*/
  rotate(r);
  r += 0.05;
  scale(0.5);
  translate(270, 270);
  nicotron(mouseY, mouseX);
}


void keyPressed() {
  /*al apretar espacio cambian los colores bases de las figuras
   los que no tienen transparencias*/

  if (key == ' ') {
    bl = ne;
    ne = az;
    az = am;
    am = bl;
  }
  /*al apretar la tecla "a" cambian los colores de las transparencias
   de los objetos y del fondo*/
  if (key == 'a') {
    blt = net;
    net = azt;
    azt = amt;
    amt = blt;
  }
}



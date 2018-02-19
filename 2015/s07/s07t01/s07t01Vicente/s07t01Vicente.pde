//UDD - Expresión Digital II
//s07t01Vicente
/*Creación de funciones especificas, graficamente distintas, que dibujen dos elementos
 diferentes que interactuen entre si, ambas funciones siguen al mouse, y el segundo elemento
 está repetido y giran entorno a sus ejes. 
 Al apretar las teclas "espacio" y "a" cambian los colores de relleno de las figuras y del canvas*/

color bl, ne, az, am, blt, amt, azt, net;
float r;

void setup() {
  size(1000, 1000);
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

/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea.
Si pudieras explicarme la lógica de rotación del elemento más pequeño, sería súper bueno
para nuevas entregas con movimientos más complejos. 
Así como también la lógica de keyPressed ya que tiene un loop de tres estados, ¿entiendes lo que escribiste?
*/

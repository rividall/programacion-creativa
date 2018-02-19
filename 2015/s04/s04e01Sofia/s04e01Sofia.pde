//UDDD - Expresión Digital II
//S04e01Sofia
//pelota que al avanzar hacia la derecha cambia de tamaño, color y dirección con el fondo

int ax;
int a1;
int a2;


void setup() {
  size(350, 350);
  
  ax = 0; //comentario para el uso de la variable "movimiento en x"
  a1 = color(171, 205, 118);//comentario para el uso de la variable VERDE
  a2 = color(181, 237, 236);//comentario para el uso de la variable CYAN
}

void draw() {
  background(a1);
  noStroke();
  //el comentario acá debe describir que testea el if "si ax es menor a la mitad"
  if (ax <= width/2){ //falto espacio entre ) {
    //ellipse cyan
    fill(a2);
    ellipse(ax, height/2, 15, 15);
    //el comentario acá debe describir que testea el if "si ax es mayor a la mitad"
  }else if (ax > width/2) { //falto espacio entre } esle if
  //comentario de lo que hace si el if es verdadero
    fill(a1);
    background(a2);
    ellipse(ax, ax, 30, 30 );
  }
  ax += 2;
   //comentario de lo que hace si el if es verdadero
  if (ax == width){
  ax = 0; //faltó sangrado comanto T
  }
}

/*
errores
0 run
0 programa
0 sintaxis: 
0 código:
7 comentario: falta de comentario del uso de variables y bloques de texto
0 variables:
3 ortografía: espacios
0 notación:
0 github:
*/


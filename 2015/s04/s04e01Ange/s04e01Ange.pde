//UDD - Expresión Digital II
//S04e01Ange 
//Loop de una pelota que cambia tamaño y color y se mueve

int ax;
int c1;
int c2;

void setup() {
  size(500, 500);

  ax = 0; //comentar para qué es esta variable
  c1 = color(234, 89, 32); //color celeste Este es naranjo
  c2 = color(32, 198, 234); //color naranjo Este es celeste
}

void draw() {
  background(c1);
  noStroke(); 
  //el comentario acá debe describir que testea el if "si ax es mayor a la mitad"
  if (ax <= width/2) {
    //ellipse naranja
    //dice ellipse NARANJA pero dibuja una ellipse CELESTE
    fill(c2);
    ellipse(ax, ax, 60, 60);
    //el comentario acá debe describir que testea el if "si ax es mayor a la mitad"
  } else if (ax > width/2) {
    //comentario de lo que hace si el if es verdadero
    fill(c1);
    background(c2);
    ellipse(ax, height/2, 25, 25);
  }
  ax += 4;
  //comentario de lo que hace si el if es verdadero
  if (ax == width) {
    ax = 0;
  }
}

/*
errores
0 run
0 programa
2 sintaxis: diferencia entre el comentario y lo escrito, dos veces
0 código:
6 comentarios: falta de comentario del uso de variables y bloques de texto
0 variables
0 ortografía: 
0 notación 
0 github
*/

/*
Al comentar erroneamente las lineas de código de color y bloques de texto de los IF
hay una confusión entre lo que quieres que haga el código y lo que realmente hace
*/

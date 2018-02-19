// UDD - Expresión Digital II
// S04E01_IsidoraGarín
// Hacer un loop de un objeto moviéndose

float cx;
int c1;
int c2;

void setup () {
  size (500, 500); //acá te sobro un espacio

  cx = 0; //comentar para qué es esta variable
  c1 = color (27, 204, 167); //color turquesa
  c2 = color (128, 255, 130); //color verde
}

void draw () {
  background (c1); //color turquesa fondo
  noStroke ();
  fill (c2);
  ellipse (cx, height/2, 25, 25);

  //el comentario acá debe describir que testea el if "si cx es mayor a la mitad"
  if (cx >= width/2) {
    //ellipse color verde, fondo turquesa
    fill (c2);
    ellipse (cx, height/2, 25, 25); // 1/4 del ancho 25 no es 1/4 del ancho es 125
    //el comentario acá debe describir que testea el if "si cx es menor a la mitad"
  } else if (cx < width/2) {
    //comentario de lo que hace si el if es verdadero
    background (c2); //
    fill (c1);
    ellipse (cx, height/2, 50, 50); // 2/4 del ancho 50 no es 2/4 ancho es 250
  }// solo el else if va sin enter, cada if parte en una nueva linea
 //comentario de lo que hace si el if es verdadero 
  if (cx > width) { 
    cx = 0;
  }
  cx += 3;
}

/*
errores
0 run
0 programa
0 sintaxis: 
1 código: if parte solo en un linea
8 comentarios: falto comentar que testean los if, que dibujan si es verdadero y hay errores de comentarios en las lineas 27 y 33 - falta de comentario del uso de variables y bloques de texto
0 variables
1 ortografía: espacio entre variables size(500,500);
1 notación: nombre de archivo bien: s04e01IsidoraGarin mal: S04E01_IsidoraGarín 
0 github: 
*/

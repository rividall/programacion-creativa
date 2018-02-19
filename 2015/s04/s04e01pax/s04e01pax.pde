//Udd -  expresion digital 2
//s04e01 nadie hizo este trabajo
// Que una pelota recorra el canvas

//variable de tamano y de color
int cx;
int c1;
int c2;

void setup () { //un espacio setup()
  size(500, 500); //tamaño del canvas


  cx = 1; //inicializar la variable  //comentario para el uso de la variable "movimiento en x"
  c1 = color (232, 1, 20); //colo 1 y la r? //comentario para el uso de la variable ROJO
  c2 = color (6, 255, 192); //color 2 una //comentario para el uso de la variable VERDE
}

void draw () {//un espacio draw()

  // pimera condicion
  //el comentario acá debe describir que testea el if "si cx es mayor a la mitad"
  if (cx >= width/2) {
    background(255); //primer color de fondo
    strokeWeight(10); //primer ancho borde
    stroke(0); //color borde
    fill(c2); //color pelota
    ellipse(width/2, cx, 100, 100); //tamaño de la pelota y posicion
  } else if (cx < width/2) { //segunda condicion que despues de la mitad de width cambia el colro
    background(0); //segundo color de fondo 
    strokeWeight(20); //cambio de ancho de borde de pelota
    stroke(255); //segundo color de borde
    fill(c1); //segundo color de pelota
    ellipse(width/2, cx, 50, 50); // tamaño de pelota
  }
  cx += 1; // variable que dice qe avance un pixel por loop
  //para sumar de 1 en 1 el argumento es ++
  //cy++;
  if (cx == height) { // condicion que dice que despues de llegar a el total de height vuelva al punto 0 de altura.
    cx = 0;
  }
}

/*
errores
 0 run
 0 programa
 1 sintaxis: bloques de código escrito de abajo a arriba, pero programa visualmente de arriba a abajo
 1 código: argumento válido, pero de notación incorrecta linea 36
 4 comentario: falta de comentario del uso de variables y bloques de texto
 0 variables:
 4 ortografía: colo y colro en vez de color en los comentarios y dos espacios en setup() draw()
 1 notación: linea 2 s04e01 y es s04e01pax 
 0 github:
 */
 
 /*
 Un error grande  es que el primer if es el que corre segundo
 y el segundo es el que corre primero, aunque no influye en el resultado, la lectura del 
 programa no es secuencial.
 Tienes dos opciones:
 1 que la pelota se mueva de abajo hacia arriba y así los bloques de código estarían bien
 2 que la pelota se mueva de arriba a abajo y cambiar el orden de los bloques de código 
 */

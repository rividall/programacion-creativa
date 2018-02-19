//UDD - Representacion Digital 2
//s04e01cordero 
//Loop Pelotita

float cx;
int c1;
int c2;

void setup() {
  size(500, 150);

  cx = 0; //comentario para el uso de la variable
  c1 = color(41, 128, 185); //cometario para nombrar al color azul
  c2 = color(46, 204, 113); //cometario para nombrar al color verde
}

void draw() {
  background(c1);
  noStroke();
  //ellipse color 1 //qué es esto?

  //el comentario acá debe describir que testea el if si cx es mayor o igual a 
  if (cx >= width/2) {
    //pelotita grande
    fill(c2);
    ellipse(cx, height/2, 150, 150); //si el tamaño de la ellipse es igual al alto, debe ser height
  }
  //pelotita chica
  fill(c2);
  ellipse(cx, height/2, 50, 50);
  cx += 2;
  //Loop cuando pelota llega a width maximo
  if (cx > 500) {
    cx = 0;
  }
} // la última llave va al inicio


/*
errores
 0 run
 0 programa
 1 sintaxis: codigo escrito de abajo a arriba, pero programa visualmente de derecha a izqueirda
 0 código:
 6 comentario: linea 20, comentarios de variables y colores - falta de comentario del uso de variables y bloques de texto
 2 variables: 150, 150 vs height. height
 1 ortografía: }
 1 notación:s04e01cordero es s04e01Max
 1 github:s04e01cordero es s04e01Max
 */
 
 /*
 Un error muy grande que cometiste es que el primer if es el que corre segundo
 y el segundo es el que corre primero, aunque no influye en el resultado, la lectura del 
 programa no es secuencial
 */

//UDD- Expresión Digital II
//s05t02IsidoraV 
/*
Reescribir el ejercicio de la clase pasada con una sintaxis mas 
 limpia, descrita en la guia enviada por el profesor
 */
//Posicion y diametro
float x, y, d;

//Suma de las posiciones
float sy, sx;

//colores
color v, a, n, b;

//Variables de fill
color fe, fb;

void setup() {
  size(500, 500);

  //Posicion y diametro
  x = 10;
  y = 30;
  d = 20;

  //Sumatoria
  sy = 1;
  sx = 3;

  //Colores
  v = color(103, 155, 53); //verde
  a = color(0, 72, 156); //azul
  n = color(0); //negro
  b = color(250); //blanco

  //Fills
  fe = v; //ellipse
  fb = a; //background
}

void draw() {
  background(fb);

  //doble for en el que se integran pequeñas pelotitas negras sobre el fondo y tras la elipse girando
  for (int i = 0; i <= height; i += 10) {
    for (int e = 0; e <= width; e += 10) {
      fill(n);
      ellipse(i, e, 4, 4);
    }
  }

  //Circulo verde de 20x20px
  noStroke();
  fill(fe);
  ellipse(x, y, d, d);

  //Suma de variables para generar movimiento al circulo
  y -= sy;
  x += sx;

  //Ellipse tiene direccion hacia la izquierda, cambio de tamaño y color
  if (sx <= -1) {
    fb = n;
    fe = b;
    d = 40;
  }

  //Ellipse tiene direccion hacia la derecha, colores establecidos
  if (sx >= -1) {
    fb = a;
    fe = v;
    d = 20;
  }

  //Cuando el circulo llegue a lo alto del canvas, cambia su direccion de Y hacia abajo
  if (y <= 0) {
    sy *= -1;
  }

  //Cuando el circulo llegue a el extremo derecho del canvas, cambia su direccion X hacia la izquierda
  if (x >= width) {
    sx  *= -1;
  }

  //Cuando el circulo llegue a la izquierda del canvas, cambia su direccion a la derecha
  else if (x <= 0) {
    sx *= -1;
  }

  //Cuando la ellipse sale de la parte baja del canvas, se genera loop
  else if (y >= height + d) {
    x = 10;
    y = 30;
    sx = 3;
    sy = 1;
  }
}

/*
errores
 0 run
 0 programa
 0 sintaxis
 0 código:
 1 comentario: descripción en bloque de comentario
 0 variables:
 14 ortografía: for loop sin espacios y último else if sin espacios 
 0 notación: 
 0 github:
*/

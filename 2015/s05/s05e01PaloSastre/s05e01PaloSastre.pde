//UDD - Expresion Digital II
//s05e01PaloSastre
//pelota que rebota en las paredes del canvas, haciendo que con for, los puntos dibujados en el fondo vayan separandose.

//variables para los colores
int cn;
int cb;
int cr;
int cv;

//variables para la posicion inicial del elipse
float circleX;
float circleY;

//variables para mover el elipse en cada frame
float moveX;
float moveY;

int x;

void setup() {
  size(500, 500); //el tamaño del canvas es 500 px por 500 px

  cn = color(0); //color negro
  cb = color(255); //color blanco
  cr = color(255, 151, 161); //color rosado
  cv = color(61, 177, 171); //color verde

  x = 2;

  circleX = 0; //variable para la posicion del elipse en el eje x
  circleY = height; //variable para la posicion del elipse en el eje y
  moveX = 3; //variable para definir el movimiento del elipse; se movera de a 3 pixeles en el eje x en cada frame
  moveY = 5; //variable para definir el movimiento del elipse; se movera de a 5 pixeles en el eje y en cada frame
}

void draw() {
  background(cb); //el color de fondo es blanco
  ellipse(circleX, circleY, 50, 50); //elipse empieza su trayecto en la esquina inferior izquiera, y tiene un tamaño de 50 px por 50 px

  circleX = circleX + moveX; //se le va sumando 3 pixeles en cada frame, a la posicion en la que este el elipse en el eje x
  circleY = circleY + moveY; //se le va sumando 5 pixeles en cada frame, a la posicion en la que este el elipse en el eje y

  if (circleX > width) { //si la posicion de la elipse en el eje x es mayor al ancho del canvas
    moveX = -moveX; //cambia a la direccion contraria en el eje x
    fill(cb); //elipse tiene relleno blanco
    stroke(cv); //el borde del elipse es verde
    strokeWeight(10); //el borde del elipse tiene grosor de 10 px
    x += 4;
  }

  if (circleY > height) { //si la posicion de la elipse en el eje y es mayor al alto del canvas
    moveY = -moveY; //cambia a la direccion contraria en el eje y
    fill(cn); //elipse tiene relleno negro
    stroke(cr); //el borde del elipse es rosado
    strokeWeight(20); //el borde del elipse tiene grosor de 20 px
    x += 5;
  }

  if (circleX < 0) { //si la posicion de la elipse en el eje x es menor a 0
    moveX = -moveX; //cambia a la direccion contraria en el eje x
    fill(cb); //elipse tiene relleno blanco
    stroke(cr); //el borde del elipse es rosado
    strokeWeight(30); //el borde del elipse tiene grosor de 30 px
    x += 6;
  }

  if (circleY < 0) { //si la posicion de la elipse en el eje y es menor a 0
    moveY = -moveY; //cambia a la direccion contraria en el eje y
    fill(cn); //elipse tiene relleno negro
    stroke(cv); //el borde del elipse es verde
    strokeWeight(40); //el borde del elipse tiene grosor de 40 px
    x += 7;
  }

  for (int i = 0; i <= height; i += x) {
    for (int j = 0; j <= height; j += x) {
      ellipse(i, j, 20, 20);
      fill (cr);
      noStroke();
    }
  }
}

/*
errores
 0
 1 integración for: el for loop está adelante del elemento que rebota, debía estar atrás 
 0 notación:  
 0 github:
 */

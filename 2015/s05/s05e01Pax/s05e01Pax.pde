//UDD - Expresion Digital II
//s05t01PascualaSylleros
//hacer que la pelota rebote a traves del canvas y hacer uso de for para separar los puntos del fondo

//variables de colores
int cn;//color negro
int cb;//color blanco
int cr;//color rojo
int ct;//color turqueza
int z;
//variables de posicion inicial del elipse
float circleX;
float circleY;

//variables movimiento de la elipse en cada frame
float moveX;
float moveY;

void setup() {
  size(500, 500); //el tamaño del canvas es 500x500 px

  cn = color(0); //color negro
  cb = color(255); //color blanco
  cr = color(232, 1, 20); //color rojo
  ct = color(6, 255, 192); //color turqueza
  z = 1;
  circleX = width; //variable para la posicion del elipse en el eje x
  circleY = height/2; //variable para la posicion del elipse en el eje y, es la mitad de la altura
  moveX = 4; //variable para definir el movimiento del elipse; se movera de a 4 pixeles en el eje x en cada frame
  moveY = 5; //variable para definir el movimiento del elipse; se movera de a 5 pixeles en el eje y en cada frame
}

void draw() {
  background(cb); //el fondo es blanco
  ellipse(circleX, circleY, 65, 65); //elipse empieza su trayecto en la mitad del margen derecho de Y, y tiene un tamaño de 65x65 px

  circleX = circleX + moveX; //se le va sumando 4 pixeles en cada frame, a la posicion en la que este el elipse en el eje x
  circleY = circleY + moveY; //se le va sumando 5 pixeles en cada frame, a la posicion en la que este el elipse en el eje y





  if (circleX > width) { //si la posicion de la elipse en el eje x es mayor al ancho del canvas
    moveX = -moveX; //cambia a la direccion contraria en el eje x
    fill(cr); //elipse tiene relleno rojo
    stroke(ct); //el borde del elipse es turqueza
    strokeWeight(5); //el borde del elipse tiene grosor de 5 px
    z += 5;
  }

  if (circleY > height) { //si la posicion de la elipse en el eje y es mayor al alto del canvas
    moveY = -moveY; //cambia a la direccion contraria en el eje y
    fill(cn); //elipse tiene relleno negro
    stroke(ct); //el borde del elipse es turqueza
    strokeWeight(40); //el borde del elipse tiene grosor de 40 px
    z += 8;
  }

  if (circleX < 0) { //si la posicion de la elipse en el eje x es menor a 0
    moveX = -moveX; //cambia a la direccion contraria en el eje x
    fill(cr); //elipse tiene relleno rojo
    stroke(cn); //el borde del elipse es negro
    strokeWeight(15); //el borde del elipse tiene grosor de 15 px
    z += 3;
  }

  if (circleY < 0) { //si la posicion de la elipse en el eje y es menor a 0
    moveY = -moveY; //cambia a la direccion contraria en el eje y
    fill(cb); //elipse tiene relleno blanco
    stroke(ct); //el borde del elipse es turqueza
    strokeWeight(60); //el borde del elipse tiene grosor de 80 px
    z += 1;
  }
  for ( int i = 0; i <= width; i+= z) {
    for ( int j = 0; j <= height; j += z) {
      ellipse (i, j, 20, 20);
      fill(cr);
      noStroke ();
    }
  }
}

/*
errores
 0 integración for: 
 0 notación:  
 0 github:
 */

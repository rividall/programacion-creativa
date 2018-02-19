//UDD - Expresión Digital II
//s05t01Ange
//Pelota que rebota en los bordes del canvas y cambiando de posición, color y tamaño.
//Ahora el fondo tiene pelotitas color naranjas que se van distanciando por cada rebote

int c1b; //variable color blanco
int c2n; //variable color negro
int c3c; //variable color celeste
int c4o; //variable color naranjo

float px; //variable de posición en el eje x
float py; //varible de posición en el eje y

float dx; //variable de direccion en x
float dy; //varaible de direccion en y
int z; // varaible para la distancia de las pelotias del fondo 

void setup () {
  size(500, 500); //tamaño del canvas de 500 px por 500 px

  c1b = color(255, 255, 255); //color blanco
  c2n = color(0, 0, 0); //color negro
  c3c = color(32, 198, 234); //color celeste
  c4o = color(234, 89, 32); //color naranjo

  px = width; //variable de posición de la elipse en x
  py = 0; //variable de posición de la elipse en y

  dx = 8; //variable de velocidad por el eje x, 8 px por frame
  dy = 5; //variable de velocidad por el eje y, 5 px por frame

  z = 1; //variable de distanciamiento de las pelotitas del fondo
}

void draw() {
  background (c3c); //color celeste de fondo del canvas 
  fill(c1b); //relleno elipse color blanco
  ellipse (px, py, 60, 60); //ubicación inicial de la elipse y su tamaño es de 60px x 60px sin stroke

  px = px + dx; //la posición de la elipse en el eje x es igual a la posición en x más 8 px por cada frame
  py = py + dy; //la posición de la elipse en el eje y es igual a la posición en y más 5 px por cada frame

  if (px > height) { //si la posición de la elipse en el eje x es mayor que el alto total del canvas
    dx = - dx; //la dirección de x es igual a la direccion de x por menos uno (Asi la elipse se mueve en sentido contrario) 
    fill (c3c); //relleno elipse color celeste (Cambia asi cuando toca el borde del lado derecho)
    stroke(c3c); //borde del elipse color celeste (Cambia asi cuando toca el borde del lado derecho)
    strokeWeight(60); //borde de la elipse es de grosor de 60 px (Cambia asi cuando toca el borde del borde derecho)
    z += 3;
  }

  if (px < 0) { //si la posición de x es menor a cero 
    dx = - dx; //la dirección de x es igual a la dirección x por menos uno (Asi la elipse se mueve en sentido  contrario)
    fill (c4o); //relleno elipse color naranjo (Cambia asi cuando toca el borde del lado izquierdo)
    stroke (c4o); //borde del elipse color naranjo (Cambia asi cuando toca el borde del lado izquierdo)
    strokeWeight (40); //borde de la elipse es de grosor de 40 px (Cambia asi cuando toca el borde del lado izquierdo)
    z += 2;
  }

  if (py > width) { //si la posición de la elipse en el eje y es mayor que el ancho total del canvas
    dy = - dy; //la dirección de y es igual a la direccion de y por menos uno (Asi la elipse se mueve en sentido contrario) 
    fill (c2n); //relleno elipse color negro (Cambia asi cuando toca el borde de abajo)
    stroke (c2n); //el borde del elipse color negro (Cambia asi cuando toca el borde de abajo)
    strokeWeight (0); //borde de la elipse es de grosor de 0 px (Cambia asi cuando toca el borde de abajo)
    z += 2;
  }

  if (py < 0) { //si la posición de la elipse en el eje y es menor que cero
    dy = - dy; //la dirección de y es igual a la dirección de y por menos uno (Asi la elipse se mueve en sentido contrario)
    fill (c3c); //relleno elipse color celeste (Cambia asi cuando toca el borde de arriba)
    stroke (c4o); //borde del elipse color naranjo (Cambia asi cuando toca el borde de arriba)
    strokeWeight (20); //borde de la elipse es de grosor de 20 px (Cambia asi cuando toca el borde de arriba)
    z += 2;
  }

  for (int i = 0; i <= width; i += z) { //for loop que las condiciones se van repitiendo y agregando a la vez en este caso si i es igual a 0 i es menor o igual al ancho i es += z
    for (int j = 0; j <= height; j += z) { //for loop que las condiciones se van repitiendo y agregando a la vez en este caso si j es igual a 0 j es menor  igual a la altura j es += z
      noStroke(); //no tiene borde
      fill(c4o); //relleno pelotitas del fondo color naranjo
      //fill (c4o, i*j/300);
      //fill (c4o * (i*j));
      ellipse(i, j, 5, 5); //elipses del fondo color naranjas
    }
  }
}


/*
errores
 0
 1 integración for: el for loop está adelante del elemento que rebota, debía estar atrás 
 0 notación:  
 1 github: el mensaje del commit dice que el for loop va en el fondo y está dibujado adelante
 */

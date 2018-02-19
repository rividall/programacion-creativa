//UDD - Expresión Digital II
//s04t01 laura 
//Pelota que rebota en los bordes del canvas y cada ves que rebota , las pelotitas del fondo se separan.
int a;

int c1; //variable color blanco
int c2; //variable color negro
int c3; //variable color celeste
int c4; //variable color naranjo

float px; //varaiable de posición en el eje x
float py; //varaible de posición en el eje y

float dx; //variable de direccion en x
float dy; //varaible de direccion en y

void setup () {
  size(500, 500); //tamaño del canvas de 500 px por 500 px

  c1 = color(255, 255, 255); //color blanco
  c2 = color(0, 0, 0); //color negro
  c3 = color(255, 140, 239); //color rosado
  c4 = color(251, 255, 158); //color amarillo

  px = width; //variable de posición de la elipse en x
  py = 0; //variable de posición de la elipse en y

  dx = 4; //variable de velocidad por el eje x, 4 px por frame
  dy = 6; //variable de velocidad por el eje y, 6 px por frame
  
  a = 40;// es el valor asignado a i y j
}

void draw() {
  background (c1); //color blanco de fondo del canvas 
  ellipse (px, py, 60, 60); //ubicación inicial de la elipse y su tamaño es de 60px x 60px sin stroke

  px = px + dx; //la posición de la elipse en el eje x es igual a la posición en x más 8 px por cada frame
  py = py + dy; //la posición de la elipse en el eje y es igual a la posición en y más 5 px por cada frame

  if (px > height) { //si la posición de la elipse en el eje x es mayor que el alto total del canvas
    dx = - dx; //la dirección de x es igual a la direccion de x por menos uno (Asi la elipse se mueve en sentido contrario) 
    fill (c3); //relleno elipse color celeste (Cambia asi cuando toca el borde del lado derecho)
    stroke(c3); //borde del elipse color celeste (Cambia asi cuando toca el borde del lado derecho)
    strokeWeight(60); //borde de la elipse es de grosor de 60 px (Cambia asi cuando toca el borde del borde derecho)
    a += 2;// valor que se le suma a i o a j
  }

  if (px < 0) { //si la posición de x es menor a cero 
    dx = - dx; //la dirección de x es igual a la dirección x por menos uno (Asi la elipse se mueve en sentido  contrario)
    fill (c4); //relleno elipse color naranjo (Cambia asi cuando toca el borde del lado izquierdo)
    stroke (c4); //borde del elipse color naranjo (Cambia asi cuando toca el borde del lado izquierdo)
    strokeWeight (40); //borde de la elipse es de grosor de 40 px (Cambia asi cuando toca el borde del lado izquierdo)
    a += 2; //valor que se le sumara
  }

  if (py > width) { //si la posición de la elipse en el eje y es mayor que el ancho total del canvas
    dy = - dy; //la dirección de y es igual a la direccion de y por menos uno (Asi la elipse se mueve en sentido contrario)  
    fill (c2); //relleno elipse color negro (Cambia asi cuando toca el borde de abajo)
    stroke (c2); //el borde del elipse color negro (Cambia asi cuando toca el borde de abajo)
    strokeWeight (0); //borde de la elipse es de grosor de 0 px (Cambia asi cuando toca el borde de abajo)
    a += 4;
  }

  if (py < 0) { //si la posición de la elipse en el eje y es menor que cero
    dy = - dy; //la dirección de y es igual a la dirección de y por menos uno (Asi la elipse se mueve en sentido contrario)
    fill (c3); //relleno elipse color celeste (Cambia asi cuando toca el borde de arriba)
    stroke (c4); //borde del elipse color naranjo (Cambia asi cuando toca el borde de arriba)
    strokeWeight (20); //borde de la elipse es de grosor de 20 px (Cambia asi cuando toca el borde de arriba)
    a += 2;
  }
  for ( int i = 0; i < width; i += a) {
    for ( int j = 0; j < height; j += a) {
      noStroke();
      fill(c4);
      ellipse(i, j, 20, 20);  
    }
  }
}


/*
errores
 1 integración for: el for loop está adelante del elemento ellipse, debía estár atrás 
 1 notación: carpeta dentro de carpeta 
 0 github:
 */

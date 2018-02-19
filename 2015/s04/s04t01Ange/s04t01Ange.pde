//UDD - Expresión Digital II
//s04t01Ange
//Pelota que rebota en los bordes del canvas y cambiando de posición, color y tamaño.

int c1b; //variable color blanco
int c2n; //variable color negro
int c3c; //variable color celeste
int c4o; //variable color naranjo

float px; //varaiable de posición en el eje x
float py; //varaible de posición en el eje y

float dx; //variable de direccion en x
float dy; //varaible de direccion en y

void setup() {
  size(500, 500); //tamaño del canvas de 500 px por 500 px

  c1b = color(255, 255, 255); //color blanco
  c2n = color(0, 0, 0); //color negro
  c3c = color(32, 198, 234); //color celeste
  c4o = color(234, 89, 32); //color naranjo
  
  
  px = width; //variable de posición de la elipse en x
  py = 0; //variable de posición de la elipse en y

  dx = 8; //variable de velocidad por el eje x, 8 px por frame
  dy = 5; //variable de velocidad por el eje y, 5 px por frame
}

void draw() {
  background(c1b); //color blanco de fondo del canvas 
  ellipse(px, py, 60, 60); //ubicación inicial de la elipse y su tamaño es de 60px x 60px sin stroke
  //el comentario dice no stroke, pero no está declarada esa función

  px = px + dx; //la posición de la elipse en el eje x es igual a la posición en x más 8 px por cada frame
  py = py + dy; //la posición de la elipse en el eje y es igual a la posición en y más 5 px por cada frame

  //si px está asignado para el eje x, usar el parametro height hace crea una relación con el eje y, 
  //si fuera un canvas rectangular, habrían errores de comportamiento
  if (px > height) { //si la posición de la elipse en el eje x es mayor que el alto total del canvas
    dx = - dx; //la dirección de x es igual a la direccion de x por menos uno (Asi la elipse se mueve en sentido contrario) 
    fill(c3c); //relleno elipse color celeste (Cambia asi cuando toca el borde del lado derecho)
    stroke(c3c); //borde del elipse color celeste (Cambia asi cuando toca el borde del lado derecho)
    strokeWeight(60); //borde de la elipse es de grosor de 60 px (Cambia asi cuando toca el borde del borde derecho)
  }

  if (px < 0) { //si la posición de x es menor a cero 
    dx = - dx; //la dirección de x es igual a la dirección x por menos uno (Asi la elipse se mueve en sentido  contrario)
    fill(c4o); //relleno elipse color naranjo (Cambia asi cuando toca el borde del lado izquierdo)
    stroke(c4o); //borde del elipse color naranjo (Cambia asi cuando toca el borde del lado izquierdo)
    strokeWeight(40); //borde de la elipse es de grosor de 40 px (Cambia asi cuando toca el borde del lado izquierdo)
  }
  
  //si py está asignado para el eje y, usar el parametro width hace crea una relación con el eje x, 
  //si fuera un canvas rectangular, habrían errores de comportamiento
  if (py > width) { //si la posición de la elipse en el eje y es mayor que el ancho total del canvas
    dy = - dy; //la dirección de y es igual a la direccion de y por menos uno (Asi la elipse se mueve en sentido contrario) 
    fill(c2n); //relleno elipse color negro (Cambia asi cuando toca el borde de abajo)
    stroke(c2n); //el borde del elipse color negro (Cambia asi cuando toca el borde de abajo)
    strokeWeight(0); //borde de la elipse es de grosor de 0 px (Cambia asi cuando toca el borde de abajo)
  }

  if (py < 0) { //si la posición de la elipse en el eje y es menor que cero
    dy = - dy; //la dirección de y es igual a la dirección de y por menos uno (Asi la elipse se mueve en sentido contrario)
    fill(c3c); //relleno elipse color celeste (Cambia asi cuando toca el borde de arriba)
    stroke(c4o); //borde del elipse color naranjo (Cambia asi cuando toca el borde de arriba)
    strokeWeight(20); //borde de la elipse es de grosor de 20 px (Cambia asi cuando toca el borde de arriba)
  }
}

/*
errores
  DEJA QUE SOFIA COPIE LOS BLOQUES DE TEXTO COMPLETOS HACIENDO QUE SEA CADA VEZ MÁS DIFÍCIL PARA SOFIA REALIZAR FUTUROS TRABAJOS ORIGINALES CUANDO LA COMPLEJIDAD SEA MAYOR.
 0 run
 0 programa
 2 sintaxis: relación equivocada entre variables para coordenadas de posición y parametros de condicionales de posición 
 0 código:
 1 comentario: comenta comportamientos que no están incluidos como funciones
 2 variables: no declara noStroke(); ni fill(); inicialmente
 13 ortografía: espacios
 0 notación:
 0 github: El error de Laura hizo imposible seguir el camino de los commits :/
 */
 

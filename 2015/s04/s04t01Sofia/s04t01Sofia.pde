//UDD - Expresión Digital II
//s04t01Sofia
//Pelota que cambia de tamaño, color y posición al rebotar en los bordes del canvas

int cb; //variable color blanco
int cn; //variable color negro
int cv; //variable color verde
int cc; //variable color celeste agua

float dirx; //variable de la dirección en x
float diry; //varaible de la dirección en y

float pox; //varaiable de la posición en x
float poy; //varaible de la posición en y

void setup () {
  size(500, 500); //tamaño del canvas de 500 px por 500 px

  cb = color(255, 255, 255); //color blanco
  cn = color(0, 0, 0); //color negro
  cv = color(171, 205, 118); //color verde
  cc = color(181, 237, 236); //color celeste agua

  dirx = 10; //variable de velocidad por el eje x, 10 px por frame
  diry = 2; //variable de velocidad por el eje y, 2 px por frame

  pox = height; //la variable del elipse en la posición x
  poy = 0; //la variable del elipse en la posición y
}

void draw() {
  background(cb); //color blanco de fondo del canvas 
  ellipse(pox, poy, 50, 50); //La ubicación de la elipse al inicio y su tamaño de 60px x 60px sin stroke
  //si la ellipse es de 50 ¿por qué el comentario dice 60px igual que el comentario de la Ange?
  //el comentario dice sin stroke, pero no hay una funcion declarada para eso
  //noStroke();

  pox = pox + dirx; //la posición de la elipse en x es igual a la posición en x más la dirección x
  poy = poy + diry; //la posición de la elipse en y es igual a la posición en y más la dirección y

  if (pox > width) { //si la posición es mayor del ancho del canvas
    dirx = - dirx; //la dirección de x será igual al negativo de la dirección de x
    fill(cv); //el relleno de la pelota es color verde
    stroke(cc); //el borde de la pelota es color celeste
    strokeWeight(10); //el borde será de 10px
  }

  if (pox < 0) {  //si la posición de x es menor que 0
    dirx = dirx * -1; //la dirección de x será igual a la dirección de x por el negativo de 1
    fill(cc); //el relleno de la pelota es color celeste
    stroke(cc); //el borde de la pelota es color celeste
    strokeWeight(70); //el borde será de 10px
  }

  if (poy > height) { //si la posición y es mayor del alto del canvas
    diry = diry * -1; //la dirección de y será igual a la dirección de y por el negativo de 1
    fill(cn); //el relleno de la pelota es color negro
    stroke(cn); //el borde de la pelota es color negro
    strokeWeight(10); //el borde será de 10px
  }

  if (poy < 0) { //si la posición de y es menor que 0
    diry = - diry; //la dirección de y será igual a la dirección de y por el negativo de 1
    fill(cv); //el relleno de la pelota es color verde
    stroke(cv); //el borde de la pelota es color verde
    strokeWeight(20); //el borde será de 20px
  }
}


/*
errores
 0 run
 0 programa
 0 sintaxis
 0 código:
 0 comentario:
 2 variables: no declara noStroke(); ni fill(); inicialmente
 12 ortografía: espacios entre la funcion y el paréntesis de los argumentos
 1 notación: no entrega en la carpeta de la semana
 0 github: El error de Laura hizo imposible seguir el camino de los commits :/
 */

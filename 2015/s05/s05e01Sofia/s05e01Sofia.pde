//UDD - Expresión Digital II
//s04t01Sofia
//Pelota que cambia de tamaño, color y posición al rebotar en los bordes del canvas
//El fondo tendra pelotas las cuales se separarán

int cb; //variable color blanco
int cn; //variable color negro
int cv; //variable color verde
int cc; //variable color celeste agua
int x;

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
  x = 14; //valor de mi x es 14

  dirx = 10; //variable de velocidad por el eje x, 10 px por frame
  diry = 2; //variable de velocidad por el eje y, 2 px por frame

  pox = height; //la variable del elipse en la posición x
  poy = 0; //la variable del elipse en la posición y
}

void draw() {
  background (cb); //color blanco de fondo del canvas 
  ellipse (pox, poy, 50, 50); //La ubicación de la elipse al inicio y su tamaño de 60px x 60px sin stroke

  pox = pox + dirx; //la posición de la elipse en x es igual a la posición en x más la dirección x
  poy = poy + diry; //la posición de la elipse en y es igual a la posición en y más la dirección y

  if (pox > width) { //si la posición es mayor del ancho del canvas
    dirx = - dirx; //la dirección de x será igual al negativo de la dirección de x
    fill (cv); //el relleno de la pelota es color verde
    stroke(cc); //el borde de la pelota es color celeste
    strokeWeight(10); //el borde será de 10px
    x += 2; //se le agregarán 2 pelotas
  }

  if (pox < 0) {  //si la posición de x es menor que 0
    dirx = dirx * -1; //la dirección de x será igual a la dirección de x por el negativo de 1
    fill (cc); //el relleno de la pelota es color celeste
    stroke (cc); //el borde de la pelota es color celeste
    strokeWeight (70); //el borde será de 10px
    x += 2; //se agregaran 2 pelotas
  }

  if (poy > height) { //si la posición y es mayor del alto del canvas
    diry = diry * -1; //la dirección de y será igual a la dirección de y por el negativo de 1
    fill (cn); //el relleno de la pelota es color negro
    stroke (cn); //el borde de la pelota es color negro
    strokeWeight (10); //el borde será de 10px
    x += 10; //se agregarán 10 pelotas
  }

  if (poy < 0) { //si la posición de y es menor que 0
    diry = - diry; //la dirección de y será igual a la dirección de y por el negativo de 1
    fill (cv); //el relleno de la pelota es color verde
    stroke (cv); //el borde de la pelota es color verde
    strokeWeight (20); //el borde será de 20px
    x += 10; //se agregarán 10 pelotas
  }
  for (int i = 0; i <= width; i += x) { //declaro que i = 0, si i es menor o igual al ancho, i aumenta en 10
   for (int j = 0; j <= height; j +=x) { //declaro que j = 0, si es menor o igual a la altura, j aumenta
     noStroke (); //sin borde
     fill (cv); //el relleno es color verde
     //fill (cv, i*j/300); 
     //fill (cv * (i*j));
     ellipse (i, j, 5, 5);
     ellipse (i, j, 10, 10);
    
   
   }
 }
}


/*
errores
 0
 2 integración for: el for loop debía estar atrás del elemento dibujado y está adelante, además hay dos ellipses del mismo color que solo cambia el tamaño, es redundante si no se hacen distintas 
 0 notación:  
 1 github: el commit es el mismo nombre del archivo con minúsculas s05e01Sofia y no S05e01Sofia
 */
 

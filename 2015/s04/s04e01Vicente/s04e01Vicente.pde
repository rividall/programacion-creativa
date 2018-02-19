//UDD-Expresión Digital II
//s04e01Vicente
//animación processing style

int c1;
int c2;
float mX;//viarable declarada
int kk; 

void setup() {
  size(500, 500);
  c1 = color (69, 119, 232);//comentario para el uso de la variable ROSA
  c2 = color (232, 182, 71);//comentario para el uso de la variable ROSA
  mX = 250;  // variable inicliazada
  kk = 0; //comentario para el uso de la variable "valor de x, y"
}


void draw() {
  // descripción de bloque de texto
  background(c1);
  noStroke();
  rectMode(CENTER);  
  fill(255);  
  kk++;
  //el comentario acá debe describir que testea el if "si kk es mayor a la mitad"
  if (kk >=  250) { //uso de variables integradas en processing width/2
    background(c2);
  } // cuando el cuadrado llega a la mitad del canvas el fondo cambia al segundo color
  rect(kk, kk, 50, 50); //esta linea debería estar con las otras que crean el rectangulo
  //noStroke();
  //rectMode(CENTER);  
  //fill(255);  


  if (kk > 500) { //uso de variables integradas en processing width o height
    kk = 0;
  } //Cuando el cuadrado llega al final del canvas vuelve a empezar desde el inicio
}

// variable no usada


/*
errores
 0 run
 0 programa
 1 sintaxis: desagrupación de bloque de texto para dibujar el rect
 0 código:
 5 comentario: falta de comentario del uso de variables y bloques de texto
 1 variables: variable no usada
 0 ortografía:
 0 notación:
 1 github: s04e01 no es igual al ejercicio s04e01Vicente
 */

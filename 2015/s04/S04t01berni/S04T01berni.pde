//UDD-Expresión Digital II
//s04t01berni
//elipse que rebote en paredes del canvas, cambie de color y tamaño

float cordX; //posición en x
float cordY; //posición en y

float velX; // velocidad de x
float velY; // velocidad de Y
//no comentas el propósito de éstas variables
int c1;
int c2;
int c3;
int c4;
int c5; //¿qué hace está variable acá si no es usada en el resto del programa?

void setup() {
  size(500, 500);
  //no comentas el propósito de éstas variables
  cordX = width;
  cordY = 3;
  //no comentas el propósito de éstas variables
  velX = 6;
  velY = 5;

  c1 = color(0, 0, 0); //color negro
  c2 = color(255, 255, 255); //color blanco
  c3 = color(6, 252, 252); //color celeste
  c4 = color(255, 0, 98); //color rosado
}

void draw() { 
  background(c1); //color gris de fondo
  ellipse(cordX, cordY, 50, 50); //ubicación y tamaño de la elipse

  cordX = cordX + velX;
  cordY = cordY + velY;

  //si cordX está asignado para el eje x, usar el parametro height hace crea una relación con el eje y, 
  //si fuera un canvas rectangular, habrían errores de comportamiento 
  if (cordX > height) { //si la posición de la elipse en el eje x es mayor que el alto total del canvas
    //comentario de lo que hace si el if es verdadero
    velX = -velX;
    fill(c3);
    stroke(c3);
    strokeWeight(30); //borde de la elipse
  }

  if (cordX < 0) { //si la posición de x es menor a cero
    //comentario de lo que hace si el if es verdadero
    velX = - velX;
    fill(c2); 
    stroke(c3);
    strokeWeight(10); //borde de la elipse
  }

  //si cordY está asignado para el eje y, usar el parametro width hace crea una relación con el eje x, 
  //si fuera un canvas rectangular, habrían errores de comportamiento  
  if ( cordY > width) {
    //comentario de lo que hace si el if es verdadero
    velY = -velY; 
    fill(c4);
    stroke(c4);
    strokeWeight(60); //borde de la elipse
  }

  if (cordY < 0) { //si la posición de Y es menor que cero
    //comentario de lo que hace si el if es verdadero
    velY = - velY;
    fill(c4);
    stroke(c2);
    strokeWeight(10); //borde de la elipse
  }
}


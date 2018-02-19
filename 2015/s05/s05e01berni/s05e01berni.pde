//UDD-Expresión Digital II
//s04t01berni
//elipse que rebote en paredes del canvas, cambie de color y tamaño

float cordX; //posición en x
float cordY; //posición en y

float velX; // velocidad de x
float velY; // velocidad de Y

int c1;
int c2;
int c3;
int c4;
int c5;
int x;

void setup() {
  size(500, 500);

  cordX = width;
  cordY = 3;

  velX = 6;
  velY = 5;

  c1 = color(0, 0, 0); //color negro
  c2 = color (255, 255, 255); //color blanco
  c3 = color (6, 252, 252); //color celeste
  c4 = color(255, 0, 98); //color rosado
  x = 10;
}

void draw() { 
  background(c1); //color gris de fondo
  ellipse(cordX, cordY, 50, 50); //ubicación y tamaño de la elipse
  for (int i = 0; i < width; i +=100) {
    fill(c3);
    ellipse( i, height/2, random(20), random(60));
  }
  cordX = cordX + velX;
  cordY = cordY + velY;

  if (cordX > height) { //si la posición de la elipse en el eje x es mayor que el alto total del canvas
    velX = -velX;
    fill (c3);
    stroke (c3);
    strokeWeight (30); //borde de la elipse 
    x += 3;
  }

  if (cordX < 0) { //si la posición de x es menor a cero
    velX = - velX;
    fill (c2); 
    stroke (c3);
    strokeWeight (10); //borde de la elipse
    x += 3;
  }

  if ( cordY > width) {
    velY = -velY; 
    fill (c4);
    stroke (c4);
    strokeWeight (60); //borde de la elipse 
    x += 3;
  }

  if (cordY < 0) { //si la posición de Y es menor que cero
    velY = - velY;
    fill (c4);
    stroke (c2);
    strokeWeight (10); //borde de la elipse 
    x += 3;
  }
  for (int i = 0; i <= width; i += x) { //declaro que i = 0, si i es menor o igual al ancho, i aumenta en 10
    for (int j = 0; j <= height; j += x) {
      noStroke ();
      fill (c2);
      //fill (tur, i*j/300);
      //fill (tur * (i*j));
      ellipse (i, j, 25, 25);
    }
  }
}


/*
errores
 0
 2 integración for: los dos for están por encima del elemento, debían estar en el fondo
 0 notación:  
 2 github: summary sin nombre y mensaje diferente al ejercicio
 */

//UDD - Representacion Digital 2
//s05t02Max
//Rebote Pelotita con for y arreglada la nomenclatura

//declarar posicion 
int posX = 0;
int posY = 0;
//declarar velocidad 
int speedY= 7;
int speedX = 3;
//declarar colores
int c1;
int c2;
//declarar float
float cx;

void setup() {
  //tamano canvas
  size(500, 500); 
  //ancho canvas y asignar colores
  cx = width;
  c1 = color(41, 128, 185); 
  c2 = color(46, 204, 113);
}
//dibujar fondo y elipses
void draw() {
  background(c1);
  noStroke();

  //velocidad y elipses
  for (int i = 0; i < 750; i = i+15) {
    for (int j = 0; j < 700; j = j+20) {
      stroke(255);
      ellipse(i-10, j, 10, 5);
    }


    posX = posX + speedX; //posicion X = posicion X + velocidad X
    posY = posY + speedY;//posicion Y = posicion Y + velocidad Y

      //si posicion mayor que ancho invertir direccion y cambiar color cuando llega a la pared derecha
    if (posX > width) { 
      speedX = speedX* -1; 
      fill(c2); 
      background(c1);
    }

    //si posicion en X menor que 0 (pared izquierda) invertir direccion
    if (posX < 0) {
      speedX = speedX* -1;
    }
    //si posicion en Y mayor que altura (pared inferior) invertir direccion
    if (posY > height) { 
      speedY= speedY* -1;
    }
    //si posicion en Y menor que 0 (pared inferior) invertir direccion
    if (posY < 0) { 
      speedY= speedY*-1;
    }
    ellipse(posX, posY, 50, 50);
  }
}

/*
errores
 0 run
 0 programa
 10 sintaxis:
   2 for loop
   i = i+15;
   i += 15;
   
   2 inicialización de velocidad
   posX = posX + speedX;
   posX += speedX;
   
   4 cambio de valor en velocidad
   speedX = speedX* -1; 
   speedX *= -1;
   
   2 primer if con funciones y no con asginaciones de valores
   fill(c2); 
   background(c1);
 
 0 código:
 0 comentario: descripción en bloque de comentario
 0 variables:
 15 ortografía: espacios 
 0 notación: 
 1 github: mensaje no describe lo que trata la tarea 
*/

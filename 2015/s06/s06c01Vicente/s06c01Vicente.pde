//UDD-Expresión Digital II
//s06c01
/*canvas dibujable con figuras geométricas con el movimiento del mouse, donde si al
 hacer click se cambian las figuras que acompañan al cuadrado principal, por elipses
 o cuadrados más pequeños, los cuales pueden ser cambiados de color al presionar 
 el spacebar y borrados al presionar la tecla "a", para refrescar el canvas*/

//variables colores
color y, b, w, n;

//variable true/false para apretar teclas
boolean q;

//variables de rotación de elementos y posición de mouse
float r, posX, posY;

void setup() {
  size(1280, 800); // tamaño canvas

  y = color(232, 182, 71); // amarillo
  b = color(69, 119, 232); //azul
  w = color(255); //blanco
  n = color(0); //negro

  r = 0; //rotación de los elementos

  //posiciones iniciales de las primeras figuras geométricas
  posX = width / 2;
  posY = height / 2;
  mouseX = width / 2;
  mouseY = height / 2;

  //modo creación del cuadrado
  rectMode(CENTER); //desde el centro

  //fondo
  background(b); // azul
}

void draw() {
  //movimiento de las figuras siguiendo al mouse
  translate(posX, posY);
  posX = mouseX;
  posY = mouseY;

  //rotación de los elementos
  rotate(r);

  //primer cuadrado blanco, con stroke negro de 2.5 con smooth   
  rect(0, 0, 100, 100);
  strokeWeight(2.5);
  fill(n);
  fill(w);
  smooth();

  //velocidad de rotación
  r = r + 0.05;

  //if que genera el cambio de color de las figuras geométricas de blanco a amarillo
  if (q == true) {
    fill(y);
  }

  if (q == false) {
    fill(w);
  }

  //if que genera el cambio de las figuras geométricas que acompañan al cuadrado
  if (mousePressed) {
    rect(-90, -90, 50, 50);
    fill(y);
  } else {

    //for que hace que el numero de elipses aumente a 3, en vez de 1
    for (int i = 70; i < 90; i = i+5) { 
      ellipse(i++, i++, 25, 25);
    }
  }
}

//funciones teclado
void keyPressed() {

  //si se presiona el spacebar cambia el color de las figuras geométricas
  if (key == ' ') {
    q = !q;
  }

  //si se presiona la tecla "a" se refresca el fondo borrando el dibujo
  if (key == 'a') {
    background(b);
  }
}


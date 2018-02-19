//UDD - Expresion Digital II
//s06c01PaloSastre
/*
Al mover el mouse de izquierda a derecha, aparecen lineas verticales y/o circulos. 
Si lo muevo de arriba a abajo, el fondo cambia de negro a blanco. 
Al apretar las teclas "a" o "s", cambia el grosor del stroke y los colores de los circulos 
y lineas se intercambian. 
Si se hace y se mantiene el click, aparece una linea gruesa en la mitad de la pantalla 
que cambia el inicio de ella según mouseY.
*/
//Colores
color a, cb, cn, co, ca, strokeLinea;

//Posicion
float distCirculo;


//Grosor
int grosorStroke;

void setup() {
  size(1280, 800); //tamaño del canvas es 1280px por 800px

  //Colores
  cb = color(255); //blanco
  cn = color (0); //negro
  co = color (255, 159, 59); //naranjo
  ca = color (218, 232, 29); //amarillo
  a = color(255, 151, 161); //rosado
  strokeLinea = color(61, 177, 171); //stroke verde

  //Grosor
  grosorStroke = 5; //grosor del stroke de 5px
}

void draw() {

  //Si mouseY es menor a la mitad del canvas, el fondo es negro; por el contrario, es blanco
  if (mouseY < 400) {
    background (cn);
  } else {
    background(cb);
  }

  //Si mantengo click, línea que va desde (0,mouseY) hasta (width,400)
  if (mousePressed) {
    stroke(co);
    strokeWeight(500);
    line(0, mouseY, width, 400);
  }

  //Aparecen lineas verticales de izq a der segun mouseX
  for (int x = 0; x < mouseX; x = x + 20) {
    stroke(strokeLinea);
    strokeWeight(grosorStroke);
    line(x, 0, x, height);
  }

  //Circulos que aparecen de der a izq, y la distancia entre ellos en x depende de mouseX
  for (int i = 20; i < width; i += mouseX + 50) {
    for (int j = 20; j < height; j += 50) {
      distCirculo = mouseX + i;
      fill(a);
      noStroke();
      ellipse(distCirculo, j, 20, 20);
    }
  }
}

//Teclado
void keyPressed() {

  //Si apreto "a", el color rosado cambia a verde y el verde cambia a rosado; y stroke es 8
  if (key == 'a') { 
    a = color (61, 177, 171);
    strokeLinea = color (255, 151, 161);
    grosorStroke = 8;
  }

  //Si apreto "s", el color verde cambia a rosado y el rosado cambia a verde; y stroke es 3
  if (key == 's') {
    a = color (255, 151, 161);
    strokeLinea = color (61, 177, 171);
    grosorStroke = 3;
  }
}


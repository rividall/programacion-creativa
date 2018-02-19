//UDD-Expresion Digital II
//s06c01Max
//Juego simple en el cual aparecen 20 pelotas las cuales uno tiene que clickear en el centro para de 'desaparezcan'.
//Pelotas cambian su posicion y velocidad cada vez que se inicia el juego para que se pueda jugar mas de una vez.
//Si se apreta cualquier techa, se cambia el fondo a uno de dos posibilidades, verde o azul, a eleccion del jugador para una mejor visibilidad. 
//Jugador gana cuando el puntaje llega a 90, momento en el cual aparece una imagen que dice que ganaste.

//declarar array para asignar posicion pelotas
float [] x;
float [] y;
//declarar array para asignar velocidad pelotas
float [] x1;
float [] y1;
//declarar dos int para ser usados como colores
int c1;
int c2;
//declarar numero de pelotas que aparecen
int pelotas = 20;
//declarar numero inicial de contador de puntos
int puntos = 0;
//declarar color a llamar para asignar a fondo
int fondo = c1;
//declarar imagen que aparece cuando uno gana
PImage img;

void setup() {
  //determinar tamano de canvas, cargar imagen, asignar colores a variables y variable a fondo
  size(1280, 800);
  img = loadImage("galaxy.jpg"); 
  c1 = color(41, 128, 185);
  c2 = color(46, 204, 113);
  background(c1);
  //llamar numero nuevo de pelotas asignado en posicion a declarar
  x = new float[pelotas];
  y = new float[pelotas];
  //llamar nueva velocidad de pelotas a asignar
  x1 = new float[pelotas];
  y1 = new float[pelotas];
  //formula para randomizar la posicion inicial de cada pelota
  for (int i = 0; i < pelotas; i++) {
    x[i] = random(10, 1270);//
    y[i] = random(10, 1270);
    // y ldar velocidad variable en X y en Y para dar mas dificultad y dinamismo
    x1[i] = random(-3, 3);
    y1[i] = random(-3, 3);
  }
}
//dibujar el fondo y cada pelota individual
void draw() {
  background(fondo);
  fill(c1);
  stroke(255, 255, 255);
  strokeWeight(4);
  //crear pelotas de acuerdo a la variable int= pelotas
  for (int i = 0; i < pelotas; i++) {
    ellipse(x[i], y[i], 40, 40);
    x[i] = x[i] + x1[i];
    y[i] = y[i] + y1[i]; 

    //si la pelota llega a pared izquierda o a la pared de la derecha, cambia la dirreccion de la pelota
    if ((x[i] > width - 20) || (x[i] < 20)) {
      x1[i] = -x1[i];
    }
    //si la pelota llega a pared inferior o a la pared superior, cambia la dirreccion de la pelota
    if ((y[i] > height - 20) || (y[i] < 20)) {
      y1[i] = -y1[i];
    }
  }
  //mantener cuenta del puntaje en multiplos de 10
  textSize(64);
  fill(255, 255, 255);
  text("Puntos: " + puntos, 20, 60);
  //Al llegar a 90 puntos mostrar imagen que dice 'la fuerza esta contigo'
  if (puntos >= 90) {
    image(img, 0, 0);
  }
}
//crear una 'mira' con opacidad y un punto inferior para facilitar el juego
void mouseMoved() {
  strokeWeight(4);
  line(mouseX, mouseY, pmouseX, pmouseY);
  fill(0, 0, 0, 20);
  stroke(255, 0, 0);
  strokeWeight(4);
  ellipse(mouseX, mouseY, 60, 60);
}
//si apretamos cualquier tecla, cambiar el fondo de color
void keyPressed() {
  if (fondo == c1) {
    fondo = c2;
  } else {
    fondo = c1;
  }
}

//formula para determinar la posicion del mouse al momento de hacer click
void mousePressed() {
  for (int i = 0; i < pelotas; i++) {
    float dist = sqrt((y[i] - mouseY) * (y[i] - mouseY) + (x[i] - mouseX) * (x[i] - mouseX));
    //si la distancia es menor a 20, el radio de la pelota, y hago click, mover la pelota a un lugar afuera del canvas para que desaparezca.
    if (dist <= 20) {
      //si se hace click, mover pelota fuera del canvas y sumar 10 puntos al puntaje.
      puntos = puntos + 10;
      x[i] = -100;
      y[i] = -100;
      pelotas--;
      break;
    }
  }
}


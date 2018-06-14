// Josefa Méndez
// 07 / 06 / 2018
// Dibujo 4 objetos que se representan como ellipses o rects, que según su tamaño 
// se discrimina si pasan de largo o rebotan. 


// Creo mis distintos objetos 
Figuras f; // ellipse roja
Figuras g; // ellipse verde
Figuras h; // ellipse azul
Figuras k; // ellipse amarilla

float tam; // creo una variable tam para que las figuras se dibujen bien y no en los bordes
boolean c; // creo i boolean c para cambiar las figuras ellipse o rect

void setup() {
  size(600, 400); // creo un canvas 

  noStroke(); // no color de linea 
  rectMode(CENTER); // establesco que los rect se comporten como ellipses 

  // Establesco los valores de mi constructor Figuras 
  f = new Figuras(random(tam, width - tam), random(tam, height - tam), 1, 1, random(2, 6), random(20, 80), 255, 0, 0);
  g = new Figuras(random(tam, width - tam), random(tam, height - tam), 1, 1, random(2, 6), random(20, 80), 0, 255, 0);
  h = new Figuras(random(tam, width - tam), random(tam, height - tam), 1, 1, random(2, 6), random(20, 80), 0, 0, 255);
  k = new Figuras(random(tam, width - tam), random(tam, height - tam), 1, 1, random(2, 6), random(20, 80), 255, 255, 0);
}

void draw() {

  // color de fondo blanco
  background(255);

  // Dibujo mis métodos de la clase Figuras según el objeto
  f.dibujo();
  f.movimiento();

  g.dibujo();
  g.movimiento();

  h.dibujo();
  h.movimiento();  

  k.dibujo();
  k.movimiento();
}

void keyPressed() {
  // condición para cambiar el estado de la booleana y las figuras cuadradas y circulares 
  if (key == 'c'){
    c = !c;
  }
}
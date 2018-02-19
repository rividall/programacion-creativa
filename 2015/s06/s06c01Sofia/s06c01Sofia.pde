//UDD - Expresión Digital II
//s06c1Sofia
//Al ejecutar el programa se crean elipses y lineas horizontales las cuales varían los colores.
//Al mover el mouse a través del canvas se crea un camino de elipses los cuales varía su tamaño.
//Al cambiar el color de relleno dentro del elipse se puede de dos formas: Si se aprieta la letra ''a'' y la letra ''b'' se vera de color gris, y al apretar la letra ''s'' y la letra ''n'' se verá negro.
//Al apretar el click del mouse, se borrará el dibujo de las elipses y partirá de nuevo. 

float d;

void setup() {
  background (0); //fondo negro
  size(1280, 800); //tamaño del canvas es de 1280 por 800
}

void draw() {
  //se crearán lineas horizontales de colores random 
  for (int i = 0; i < width; i += 60) {
    strokeWeight(10); 
    stroke(random(255), random(255), random(255));
    line(0, i, width, i);
  }
  //al mover el mouse se crea un camino de elipses de colores random 
  dist(pmouseX, pmouseY, mouseX, mouseY);
  stroke(random(255), random(255), random(255));
  fill(random(255), random(255), random(255));
  ellipse(pmouseX, pmouseY, mouseX, mouseY);
  ellipseMode(CENTER);

  //al apretar la letra "s" o "n" se pintarán los elipses de color negro
  if (keyPressed) {
    if (key == 's' || key == 'n') {
      fill(0);
      ellipse(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      fill(random(255), random(255), random(255));
    }
  }
  //al apretar la letra "b" o "a" se pintarán los elipses de color gris
  if (keyPressed) {
    if (key == 'b' || key == 'a') {
      fill(85, 85, 85);
      ellipse(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
  //al apretar el click del mouse se borrarán los elipses dibujados
  if (mousePressed) {
    background(0);
  }
}
// UDD - Expresión Digital II
// Entrega02 - s04e01Nicolas
// un elemento que inicia recorrido en un extremo y al llegar al otro, vuelve al primero, cambia su color y el del fondo

float x;
float y;
float sw; 
float es;
float cc;
int m;
int c;

void setup() {
  size(500, 500);

  sw = 0.5; //strokeWeight
  es = 50; //ellipse size
  cc = 0; //cambio de color
  m = color(width, 0, width); //magenta
  c = color(0, width, width); //cyan
  x = width/2; //posición de x en 0
  y = height + es; //posición de y en 0

  colorMode(RGB, width);
}

void draw() {
  //fondo magenta que cambia a cyan con cc
  background(width - cc, cc, width);

  //ellipse cyan a blanco con borde magenta transparente
  //cambiando el fill a blanco
  strokeWeight(sw);
  stroke(m, 400);
  fill(cc, width, width);
  ellipse(x, y, es, es);

  //si y pasa a negativo más el tamaño de la ellipse
  if (y < 0 - es) {
    //la ellipse vuelve al fondo funto con su color y el fondo magenta
    cc = 0; //colores vuelven a la normalidad
    y = height + es; //posicion vuelve a normalidad
  }
  //contadores para cambiar posicion y color
  cc++;
  y--;
}


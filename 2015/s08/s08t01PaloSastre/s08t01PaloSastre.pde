//UDD - Expresion Digital II
//s08t01PaloSastre
//Creación de dos funciones específicas, gráficamente diferentes, para dibujar un elemento cada una. Un elemento
//gira y para de girar al hacer click. El otro se va haciendo grande hasta llegar a un maximo y se vuelve a hacer
//pequeño. Con la tecla 'a', cambian los colores del fondo y de algunos elementos de cada figura.
//Incluí elementos de la ronda 1 y de la ronda 3 de s08.

color t, r, n, b, bt, na, ch, co, cb, cl;
boolean dirrotar;
boolean a;
float rotar;
float escalar;
float escalar2;

void setup() {
  size(500, 500);

  escalar = 0.0;
  escalar2 = 0.0;

  //inicialización de colores  
  t = color(61, 177, 171); //turquesa
  r = color(255, 151, 161); //rosado
  n = color(0); //negro
  b = color(255); //blanco

  //inicialización de colores extras
  bt = color(255, 255, 255, 200); //blanco transparente
  na = color(255, 159, 59); //naranjo

  ch = r; //color rosado del hexagono
  co = na; //color naranjo del octagono
  cb = t; //color turquesa del background
  cl = t; //color turquesa de las lineas al rededor del elemento

  dirrotar = false;
  a = true;
}

void draw() {

  //fondo con lineas de la ronda 1 del versus de s08
  background(cb);
  for (int i = 10; i < width-10; i += 10) {
    strokeWeight(5);
    stroke(61, 177, 171 - i*.1, 255);
    line(i, 10, i+10, height-10);
  }
  for (int i = 10; i < width-10; i += 10) {
    strokeWeight(5);
    stroke(255, 151, 180 - i*.1, 180);
    line(i, height-10, i+10, 10);
  }

  escalar = escalar + 0.009;
  escalar2 = cos(escalar)*1;

  //el punto 0,0 del canvas está al centro
  translate(mouseX, mouseY);
  //el hexagono rota hacia la izquierda
  rotate(rotar);
  hexagono(ch);
  rotar = rotar - 0.02;

  if (dirrotar == false) {
    rotar = rotar - 0.02;
  }
  if (dirrotar == true) {
    rotar = rotar + 0.02;
  }

  if (a == true) {
    ch = na;
    cb = r;
    co = t;
    cl = t;
  }
  if (a == false) {
    ch = r;
    cb = t;
    co = na;
    cl = r;
  }

  scale(escalar2);
  octagono(co, cl);
}

void mousePressed() {
  dirrotar =! dirrotar;
}

void keyPressed() {

  if (key == 'a') {
    a=! a;
  }
}


ArrayList<Particula> lista = new ArrayList<Particula>();
Particula p;
int n, m;

void setup() {
  size(500, 500);
  for (int i = 0; i < 4; i++) {
    p = new Particula();
    lista.add(p);
    rectMode(CENTER);
  }
}

void draw() {
  background(255);
  for (Particula a : lista) {
    a.forma(n);
    a.movi(m);
  }
}

void keyPressed() {
  if (key == 'v') { n = 1;}//círculo
  if (key == 'c' ) { n = 2;}//rectángulo

  if (key == CODED) {

    if (keyCode == RIGHT) { m = 1;}// desplazamiento derecha
    if (keyCode == DOWN) { m = 2; }//desplazamiento abajo
    if (keyCode == UP) { m = 3;}//desplazamiento arriba
    if (keyCode == LEFT) { m = 4;}//desplazamiento izquierda
  }
}

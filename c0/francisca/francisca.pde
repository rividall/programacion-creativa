//Universidad del Desarrollo - Facultad de Diseño - Francisca Urenda

ArrayList<Particula> lista = new ArrayList<Particula>();
Particula p;
int n, m;
void setup() {
  size(600, 600); //tamaño de pantalla
  for (int i=0; i<150; i++) {
    p = new Particula(i);
    lista.add(p);
  }
}

void draw() {
  background(255); //fondo de pantalla color blanco
  for (Particula a : lista) {
    a.show(n); //mostrar circulos
    a.move(m); //mover circulos
    a.again(); //repetición
  }
}

void keyPressed( ) {
  if (keyCode == RIGHT) { 
    m = 1;
  } //tecla "derecha" hace que circulos empiezen a moverse en diagonal a la derecha
  else if (keyCode == LEFT) {
    m = 2;
  } //tecla "izquierda" hace que circulos empiezen a moverse en diagonal a la izquierda
  else if (keyCode == UP) {
    m = 0;
  } //tecla "arriba" hace que circulos empiezen a moverse hacia arriba
}
// Universidad del Desarrollo - Facultad de Diseño - Certamen 1 - Gabriela Vergara Barentin.
ArrayList<Circulos> lista = new ArrayList<Circulos>();  // Se crea una lista de la clase Circulos.

// Se declaran las variables globales.
Circulos c;  // La clase se nombra con c.
int n;
int val = 0;
int var1 = 1;
int var2 = 0;
int var3 = 0;

void setup() {
  size(800, 800);
  for (int i = 0; i < 28; i++) {   // Se dibujan 28 círculos de la lista a.cir()
    c = new Circulos(i);
    lista.add(c);
  }
}

void draw() {
  background(c.colores [2]);
  // Se les da un valor a cada lista para luego ser llamadas con keyPressed().
  if (var1 == 1) {
    for (Circulos a : lista) {
      a.cir();
    }
  }
  if (var2 == 1) {
    c.anillos();
  }
  if (var3 == 1) {
    c.cuadrados();
  }
}

void keyPressed() {
  if (key == '0') { // Cambio sentido anillos.
    n = 0;
  }
  if (key == '1') { // Cambio sentido anillos.
    n = 1;
  }
  if (key == 'v') { // Resto anillos.
    val--;
  }
  if (key == 'w') {  // Sumo anillos.
    val++;
  }
  if (key == 'a') { // Se abre a.cir().
    var1 = 1;
    var2 = 0;
    var3 = 0;
  }
  if (key == 's') {  // Se abre c.anillos().
    var1 = 0;
    var2 = 1;
    var3 = 0;
  }
  if (key == 'd') { // Se abre c.cuadrados();
    var1 = 0;
    var2 = 0;
    var3 = 1;
  }
}

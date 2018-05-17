/* Muestra un aro de puntos que van girando, al precionar 1 y 0
cambian de sentido.
No puedo mostrar las demás propuestas porque no se como
hacer que aparescan y desaparescan diferentes cosas con
keyPressed.
*/
ArrayList<Circulos> lista = new ArrayList<Circulos>();
Circulos c;
int n, val;

void setup() {
  size (800, 800);
  for (int i = 0; i<23; i++) {
    c = new Circulos(i);
    lista.add(c);
  }
}

void draw() {
  background(c.colores [23]);

  for (Circulos a : lista) {
    a.cir();
   // a.anillos();
   //a.cuadrados
  }
}

void keyPressed() {
  if (key=='0') {
    n= 0;
  }
  if (key== '1') {
    n= 1;
  }
}

/*void keyPressed() {
  val++;
} */

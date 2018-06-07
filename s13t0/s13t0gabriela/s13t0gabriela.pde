/* Universidad del Desarrollo - Facultad de Diseño  - Gabriela Vergara Barentin
En este trabajo se pueden ver lineas al presionar a, cuadrados al precionar b y
círculos al presionar c. Al precionar d se mueven a la derecha, f hacia la izquierda,
g hacia abajo y h hacia arriba. Las figuras pequeñas pasan de largo y las grandes
rebotan. Al presionar i todas las figuras pasaran de largo.
*/

ArrayList < Objeto > lista = new ArrayList < Objeto > ();
// se llaman a diferentes objetos de la clase.
Objeto o;
Objeto p;
Objeto u;
Objeto t;
boolean a, b, c, d, f, g, h, i, j; // Se declaran variables booleanas.




void setup() {
  size(500, 500); // Tamaño canvas.
  for (int i = 0; i < 5; i++) { // Número de objetos (5 por Objeto, 20 figuras de cada forma, 3 formas, 60 figuras en total.
    // Se cambia posición en x en y y color.
    o = new Objeto(random(width), random(height), 100);
    lista.add(o); // Se llama a la lista.
    p = new Objeto(random(10, 400), random(10, 400), 140);
    lista.add(p);
    u = new Objeto(random(50, 500), random(10, 500), 180);
    lista.add(u);
    t = new Objeto(random(100, 200), random(255, 500), 220);
    lista.add(t);
  }
}

void draw() {
  background(12, 27, 72); // Color de fondo.
  for (Objeto o : lista) {  // Subir todos los objetos de la lista.
    o.forma(a, b, c); // Se llama a los métodos de formas.
    o.mov(d, f, g, h, i); // Se llaman a los métodos de movimiento.
  }
}

void keyPressed() {
  if (key == 'a') { // Aparecen lineas.
    a = !a;
  }
  if (key == 'b') {  // Aparecen cuadrados.
    b = !b;
  }
  if (key == 'c') { // Aparecen círculos.
    c = !c;
  }
  if (key == 'd') { // Movimiento hacia derecha.
    d = !d;
  }
  if (key == 'f') { // Movimiento hacia izquierda.
    f = !f;
  }
  if (key == 'g') { // Movimiento hacia abajo.
    g = !g;
  }
  if (key == 'h') { // Movimiento hacia arriba.
    h = !h;
  }
  if (key == 'i') { // Al precionarse todos los objetos pasan de largo.
    i = !i;
  }
}

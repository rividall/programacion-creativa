/* Universidad del Desarrollo - Facultad de Diseño  - Gabriela Vergara Barentin
En este trabajo se pueden ver líneas en torno a un punto en el centro al presionar la
tecla a, círculos pequeños en uns grilla al presionar b y líneas de arriba hacia abajo
al precionar c. Todas las figuras se meven hacia abajo al presionar d, hacia arriba
al presionar f, hacia la derecha al presionar g y a la izquierda al presionar h.
*/
Objeto o; // Se llama a la clase con o.
boolean a, b, c, d, f, g, h; // Se declaran variables booleanas.


void setup() {
  size(500, 500); // Tamaño canvas.
  o = new Objeto();  // Nuevo objeto.
}

void draw() {
  background(12, 27, 72);  // Color de fondo.
  o.forma(a, b, c);  // Se llama a los métodos de formas.
  o.mov(d, f, g, h); // Se llaman a loñs métodos de movimiento.
}

void keyPressed() {
  if (key == 'a') {
    a = !a;
  }
  if (key == 'b') {
    b = !b;
  }
  if (key == 'c') {
    c = !c;
  }
  if (key == 'd') {
    d = !d;
  }
  if (key == 'f') {
    f = !f;
  }
   if (key == 'g') {
    g = !g;
  }
  if (key == 'h') {
    h = !h;
  }
}

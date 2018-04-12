/* Universidad del desarrollo - Facultad de diseño - Certamen 0 - Gabriela Vergara Barentin
Aparecen triángulos formando una flor abstracta y lluvia de líneas.
Al apretar 1 aparecen círculos y al apretar 0 vuelven los triángulos.

*/

ArrayList<Flor> lista = new ArrayList<Flor>(); // declaro la lista y creo.
Flor f; // declaro f para llamar a la lista.
int n, m; // declaro variables enteras.


void setup() {
  size(400, 400); // tamano canvas
  for (int i = 0; i < 20; i++) { // los triángulos parten desde 0 y se suman de a uno hasta el 20.
    f = new Flor(250, 250, 100, 400, 300, 400); // parametros de los triángulos. 250 en 'x' y en 'y'
    // para que se vea como una flor que se abre
    lista.add(f); // llamo a la lista
  }
}

void draw () {
  frameRate(10);
  background(255);
  for (Flor a : lista) { // llama a todoas funciones.
    a.trian(n);
    a.mover(m);
    a.denuevo();
  }

  if (frameCount % 8 == 0) { // al dividir en 8 el resultado es 0 y aparecen 20 lineas. En cada frameCount salen 20 lineas mas.
    for (int i = 0; i < 20; i++) {
      line((20 + i*20), 10, (20 + i*20), 20);
    }
  }

  if (frameCount % 8 == 1) {
    for (int i = 0; i < 20; i++) {
      line((20 + i*20), 30, (20 + i*20), 40);
    }
  }

  if (frameCount % 8 == 2) {
    for (int i = 0; i < 20; i++) {
      line((20 + i*20), 50, (20 + i*20), 60);
    }
  }

  if (frameCount % 8 == 3) {
    for (int i = 0; i < 20; i++) {
      line((20 + i*20), 70, (20 + i*20), 80);
    }
  }
  if (frameCount % 8 == 4) {
    for (int i = 0; i < 20; i++) {
      line((20 + i*20), 90, (20 + i*20), 100);
    }
  }
  if (frameCount % 8 == 5) {
    for (int i = 0; i < 20; i++) {
      line((20 + i*20), 110, (20 + i*20), 120);
    }
  }
}
void keyPressed() {
  if (key== '1') { // salen cierculos
    n = 1;
  } else if (key== '0') { // vuelven los triángulos
    n = 0;
  }
}

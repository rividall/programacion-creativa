class Objeto {
  // Variables globales.
  float x, y; // Variables decimales.
  int w, v; // Variables enteros.

  Objeto() {
    // Se declara el valor inicial de las variables globales.
    x = 10;
    w = width / 2;
    v = height / 2;
  }

  // Se crean boolean para llamar a todas las figuras.
  void forma(boolean p, boolean c, boolean l) {
    if (p) {
      // Líneas en torno al centro.
      lineas();
    }
    if (c) {
      // Grilla de circulitos.
      cir();
    }
    if (l) {
      // Líneas de arriba a abajo.
      lineaDos();
    }
  }

// descripción del método
  void lineas() {
    translate(w, v); // Se traslada el punto de origen al centro del canvas.
    int cant = 20; // Variable de cantidad de objetos.
    for (int j = 0; j < 4; j++) {
      float j2 = map(j, 0, 4, 0, 100);
      for (int i = 0; i < cant; i++) {
        float tam = 15; // Tamaño de las figuras.
        float a = map(i, 0, cant, 0, TWO_PI); // TWO_PI = 360 grados.
        pushMatrix();
        rotate(a);
        strokeWeight(1);
        stroke(255);
        line(x+j2, y, x+tam+j2, y);
        popMatrix();
      }
    }
  }

  // descripción del método
  void cir() {
    translate(w, v);
    strokeWeight(1);
    for (int k = - 220; k<width; k+=30) {
      for (int m = - 220; m<height; m+=30) {
        noStroke();
        ellipse(k, m, 10, 10);
      }
    }
  }

  // descripción del método
  void lineaDos() {
    translate(w, v);
    strokeWeight(3);
    stroke(255);
    for (int n = - 220; n < width; n++) {
      line(n*20 + 21, y -220, n*20 + 21, y + 220);
    }
  }

// falta metodo de borde
  void mov(boolean t, boolean o, boolean r, boolean q) {
    if (t) {
      v++;
    }if (o) {
      v--;
    }if (r) {
      w++;
    }if (q) {
      w--;
    }
  }
}

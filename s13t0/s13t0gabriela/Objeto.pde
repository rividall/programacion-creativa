class Objeto {
  float x, y, velx, vely, tam, ran, ranDos, col; // Variables decimales.

  Objeto(float x, float y, float col) { // En la clase se cambia x, y y el color.
    // Se declara el valor inicial de las variables globales.
    // x, y y col son valores a parte de la clase.
    this.x = x;
    this.y = y;
    this.col = col;
    ran = random(5, 20); // Random para tamaño.
    ranDos = random(20, 60); // Random para posicion.
  }

  // Se crean boolean para llamar a todas las figuras.
  void forma(boolean p, boolean c, boolean l) {
    if (p) {
      linea();
    }
    if (c) {
      rectangulo();
    }
    if (l) {
      circulo();
    }
  }

// Parámetros líneas.
  void linea() {
    strokeWeight(5);
    stroke(col);
    line(x, y, x, y + ran);
  }

// Parámetros rectángulos.
  void rectangulo() {
    fill(100, col, 0);
    noStroke();
    rect(x, y + ranDos, ran, ran);
  }

// Parámetros círculos.
  void circulo() {
    fill(50, 0, col);
    noStroke();
    ellipse(x + ranDos, y, ran, ran);
  }

// Boolean para cada dirección. t = derecha. o =  izquierda. r = abajo. q = arriba. z = rebote o no rebote.
  void mov(boolean t, boolean o, boolean r, boolean q, boolean z) {

    x += velx;
    y += vely;

    if (t) { // Velocidad hacia derecha.
      velx += 0.01;
    }
    if (o) { // Velocidad hacia izquierda.
      velx -= 0.01;
    }
    if (r) { // Velocidad hacia abajo.
      vely += 0.01;
    }
    if (q) { // Velocidad hacia arriba.
      vely -= 0.01;
    }

// En z positivo todas las figuras pasan de largo.
    if (z) {
      if (x > width) { // x al llegar al borde, parte desde 0.
        x = 0;
      }
      if (x < 0) { // x al llegar a 0, parte desde el borde.
        x = width;
      }
      if (y > height) { // y al llegar al borde, parte desde 0.
        y = 0;
      }
      if (y < 0) { // y al llegar a 0, parte desde el borde.
        y = height;
      }
// En z negativo solo las figuras menores a 15 pasan de largo, las otras rebotan.
    } else if (!z) {
      if (x > width && ran > 15) { // si x es mayor al borde y el tamaño es mayor a 15, se multiplica por -1, osea que se va hacia el lado contrario por el que venia (rebota).
        velx *= - 1;
      }
      if (x > width && ran < 15) { // si el tamaño es menor a 15, pasa de largo.
        x = 0;
      }
      if (x < 0) {
        velx *= - 1;
      }
      if (x < 0 && ran < 15) {
        x = width;
      }
      if (y > height && ran > 15) {
        vely *= - 1;
      }
      if (y > height && ran < 15) {
        y = 0;
      }
      if (y < 0) {
        vely *= - 1;
      }
      if (y < 0 && ran < 15) {
        y = height;
      }
    }
  }
}

class Objeto {
  float x, y;
  int i, j;
  int r = 20;


  Objeto() {
    x = width / 2;
    y = height / 2;
  }

  //descripción formas
  void forma(boolean p, boolean r, boolean l) {
    if (p) { //circulo
      pushMatrix();
      translate(x, y); //fijar punto 0 del canvas
      for (int i = 0; i < 20; i += 4) {
        for (int j= 0; j < 20; j ++) {
          rotate(360 / 2);
          noStroke();
          fill(232, 66, 65, 80);
          ellipse (100, 0, 5, 5);
        }
      }
      popMatrix();
    }

    if (r) { //Figura 2
      //flor de rectangulos
      pushMatrix();
      translate(x, y);
      for (int j = 0; j < 20; j ++) { //filas de elipses
        for (int i = 0; i < 20; i ++) { //elipses por fila
          stroke(255);
          fill(238, 137, 180, 90); //Relleno de la figura
          rect(70, -8, 120, 15, 5);
        }
        rotate(radians(360 / 12)); //Rotacion de la figura completa en 360 grados para formar flor
      }
      popMatrix();
    }

    if (l) { //Figura 3
      //grilla cuadrados
      pushMatrix();
      translate(x, y);
      for (int i = 0; i < 8; i ++) {
        for (int j = 0; j < 8; j ++) {
          fill(151, 227, 218, 90);
          noStroke();
          rect((j * 15) - width / 6, (i * 20) - height / 4.5, 10, 10);
        }
      }
      popMatrix();
    }
  }

  //descripcion del movimiento
  void mov(boolean m, boolean n, boolean o, boolean p) { //boolean n, boolean o
    if (m) {//movimiento hacia la derecha
      x ++;
      if (x > 400) {//retorno hacia el centro una vez que pasa el borde
        x = width / 2;
      }
    }
    if (n) {//movimiento hacia la izquierda
      x --;
      if (x < 0) {//retorno hacia el centro una vez que pasa el borde
        x = width / 2;
      }
    }

    if (o) {//movimiento hacia abajo
      y ++;
    }

    if(p) {//movimiento hacia arriba
      y--;
  }
}
}

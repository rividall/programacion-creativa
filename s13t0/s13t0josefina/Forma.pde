class Forma {
  float x = random (width);
  float y = random (height);
  float velx;
  float vely;
  float tam, relleno;

  Forma(float tam, float relleno) {//Constructor
    this.tam = tam; //cambia el tamaño de las figuras
    this.relleno = relleno; //cambia el color de las figuras
  }

  //Descripción formas
  void figura(boolean a, boolean b, boolean c) {
    if (a) { //Figura 1 círculo
      noStroke();
      fill(255, relleno, 0);
      ellipse(x, y, tam, tam);
    }

    if (b) { //Figura 2 rectangulo
      noStroke();
      fill(250, relleno, 170);
      rect(x, y, tam, tam);//ultimo número bordes redondeados
    }

    if (c) { //Figura 3 cuadrado
      noStroke();
      fill(0, relleno, 230, 90);
      rect(x, y, 120, tam);
    }
  }

  //Descripción del movimiento
  void mov(boolean j, boolean k, boolean l, boolean m, boolean n) {
    x += velx;
    y += vely;

    //0.01 es la velocidad con que va sumando
    if (j) { //movimiento hacia la DERECHA
      velx += .01;
    }
    if (k) { //movimiento hacia la IZQUIERDA
      velx -= .01;
    }
    if (l) { //movimiento hacia ABAJO
      vely += .01;
    }
    if (m) { //movimiento hacia ARRIBA
      vely -= .01;
    }

    if (n) { //si sale de los bordes que vuelva a aparecer desde el extremo opuesto
      if (x > width) {
        x = 0;
      }
      if (x < 0) {
        x = width;
      }
      if (y > height) {
        y = 0;
      }
      if (y < 0) {
        y = height;
      }
    } else if (!n) { //rebote
      if (x > width && tam < 30) {
        velx *= -1;
      }
      if (x > width && tam >= 30) {
        x = 0;
      }
      if (x < 0) {
        velx *= -1;
      }
      if (x < 0 && tam >= 30) {
        x = width;
      }
      if (y > height && tam < 30) {
        vely *= -1;
      }
      if (y > height && tam >= 30) {
        y = 0;
      }
      if (y < 0 ) {
        vely *= -1;
      }
      if (y < 0 && tam >= 30) {
        y = height;
      }
    }
  }
}

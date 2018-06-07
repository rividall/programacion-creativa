class Figura {

  //Variables de posiciones, tamaño, opacidad, direccion y velocidad
  float posX, posY, posX2, posY2, tam, op; 
  float dirX = random(-1, 1), dirY = random(-1, 1), vel = (random(3, 5));
  float dirX2 = random(-1, 1), dirY2 = random(-1, 1);

  // Constructor
  Figura(float posX, float posY, float posX2, float posY2, float tam, float op) {
    this.posX = posX;
    this.posY = posY;
    this.tam = tam;
    this.op = op;
    this.posX2 = posX2;
    this.posY2 = posY2;
  }

  void dibujo(int eleccion) {

    //condición para vincular el cambio de vista de las figuras 
    if (eleccion == 0) {
      ellipses();
    } else if (eleccion == 1) {
      rects();
    } else if (eleccion == 2) {
      ellipses();
      rects();
    }
  }

  void movimiento() {
    posiciones();
    bordes();
    desplazar();
  }

  void ellipses() {
    //dibujamos las ellipses
    fill(0, 0, 200, op);
    ellipse(posX, posY, tam, tam);
  }

  void rects() {
    //dibujamos los rects
    fill(0, 200, 0, op);
    rect(posX2, posY2, tam, tam);
  }

  void bordes() {  

    // condición para que las ellipses reboten
    if (posX + tam/2 > width || posX - tam/2 < 0 || posY + tam/2 > height || posY - tam/2 < 0) {
      dirX = dirX * -1;
      dirY = dirY * -1;
    }

    //condición para que los rect reboten
    if (posX2 + tam > width || posX < 0 || posY + tam > height || posY < 0) {
      dirX2 = dirX2 * -1;
      dirY2 = dirY2 * -1;
    }
  }

  void posiciones() {
    // Vinculo la posición con velocidades y direcciones para que rebote 
    posX += vel * dirX;
    posY += vel * dirY;
    posX2 += vel * dirX;
    posY2 += vel * dirY;
  }

  void desplazar() {
    // Void para mover las figuras con las flechas 
    if (key == CODED) {
      // Tecla de arriba sube la figura
      if (keyCode == UP) {
        posY --;
        posY2 --;
        // Tecla de abajo bajan las figura 
      } else if (keyCode == DOWN) {
        posY ++;
        posY2 ++;
        // Tecla de la izquierda se mueven a laizquierda
      } else if (keyCode == LEFT) {
        posX --;
        posX2 --;
        // Tecla de la derecha se mueve a la derecha 
      } else if (keyCode == RIGHT) {
        posX ++;
        posX2 ++;
      } else {
      }
    }
  }
}
class Figuras {

  // Variables de posiciones y tamaño 
  float posX, posY, tam;
  // Variables de movimiento direcciones y velocidad
  float dirX, dirY, vel;
  //Variables de color en rgb
  float re, gr, bl;

  //Genero mi constructor
  Figuras(float posX, float posY, float dirX, float dirY, float vel, float tam, float re, float gr, float bl) {
    this.posX = posX;
    this.posY = posY;
    this.dirX = dirX;
    this.dirY = dirY;
    this.vel = vel;
    this.tam = tam;
    this.re = re;
    this.gr = gr;
    this.bl = bl;
  }

  // void que va a mostrar las figuras que dibujo
  void dibujo() {
    fill(re, gr, bl); // aplico un fill para pintar de distintos colores mis objetos
    figuras(c); // coloco mis dos opciones de figuras que estan restringidas por mi boolean c
  }

  // void que aplica todo los movimientos posibles de mis figuras
  void movimiento() {
    desplazar(); // método que permite el movimiento de las figuras
    traspasar(); // método que contiene la información de que pasa cuando tocan el borde las figuras
  }

  void desplazar() { // void para que la figura se mueva 
    posX += vel * dirX; // la posición en X se va ir modificando según las velocidades y su dirección 
    posY += vel * dirY; // la posición en Y se va ir modificando según las velocidades y su dirección
  }

  void traspasar() {
    // método que altera la forma de desplazarse de las figuras según su tamaño,
    // además permite ir variando los tamaños cada vez que tquen los bordes 

    // Sí el tamaño de las figuras es mayor a 50
    if (tam > 50) {
      //Van a rebotar y cambiar su tamaño
      if (posX + tam/2 > width || posX - tam/2< 0) {
        dirX = dirX * -1; // multiplico *-1 para cambiar las direcciones 
        tam = random(20, 80); // modifico el tamaño de la figura
      }
      if (posY - tam/2 < 0 || posY + tam/2 > height) {
        dirY = dirY * -1; // multiplico *-1 para cambiar las direcciones
        tam = random(20, 80); // modifico el tamaño de la figura
      }
    }

    // Sí el tamaño es menor a 50 
    if (tam < 50) {

      // sí la posición en X es mayor al ancho modifico el tamaño 
      if (posX > width) {
        tam = random(20, 80);
        // sí el nuevo tamaño es menor que 50, la figura sigue de largo 
        if (tam < 50) {
          posX = 0;
          // sino, la figura se dibuja en x = 0 + el tamaño nuevo para no generar 
          // conflicto con las otras condiciones de los bordes con el nuevo tamaño
        } else {
          posX = 0 + tam;
        }
      }

      // sí la posición en X es menor a 0 modifico el tamaño 
      if (posX < 0) {
        tam = random(20, 80);
        // sí el nuevo tamaño es menor que 50, la figura sigue de largo 
        if (tam < 50) {
          posX = width;
          // sino, la figura se dibuja en width - el tamaño nuevo para no generar 
          // conflicto con las otras condiciones de los bordes con el nuevo tamaño
        } else {
          posX = width - tam;
        }
      }

      // sí la posición en Y es menor a 0 modifico el tamaño 
      if (posY < 0) {
        tam = random(20, 80);
        // sí el nuevo tamaño es menor que 50, la figura sigue de largo 
        if (tam < 50) {
          posY = height;
          // sino, la figura se dibuja en height - el tamaño nuevo para no generar 
          // conflicto con las otras condiciones de los bordes con el nuevo tamaño
        } else {
          posY = height - tam;
        }
      }

      // sí la posición en Y es mayor al alto modifico el tamaño 
      if (posY > height) {
        tam = random(20, 80);
        // sí el nuevo tamaño es menor que 50, la figura sigue de largo 
        if (tam < 50) {
          posY = 0;
          // sino, la figura se dibuja en 0 + el tamaño nuevo para no generar 
          // conflicto con las otras condiciones de los bordes con el nuevo tamaño
        } else {
          posY = 0 + tam;
        }
      }
    }
  }

  // void con booleana para poder dibujar ellipses o rectangulos 
  void figuras(boolean c) {

    // sí la booleana c es verdadera se dibuja un rect
    if (c) {
      rect(posX, posY, tam, tam);
      // sino una ellipse
    } else {
      ellipse(posX, posY, tam, tam);
    }
  }
}
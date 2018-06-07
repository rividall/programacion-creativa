class Objeto {

  float x, y, tam;
  float velX, velY;
  color[] colores;
  color propioDelObjeto;
  int randomColor;

  Objeto() {

    this.randomColor = int(random(3)); // hará un random entre los 3 colores que hay
    colores = new color[3];
    colores[0] = color(255, 0, 100);
    colores[1] = color(250, 255, 0);
    colores[2] = color(0, 100, 255);
    propioDelObjeto= color(127);

    x = random(width);
    y = random(height);
    tam = random (20, 80);
  }

  void forma(int j) {

    if (j == 1) {
      if (tam >= 20 && tam <= 49) {
        noStroke();
        fill (colores[1]);
        ellipse(x, y, tam, tam);
      }
      if (tam >= 50 && tam <= 80) {
        noStroke();
        fill (colores[0]);
        ellipse(x, y, tam, tam);
      }
    }

    else if (j == 2) {
        color cl = 0;
      if (tam >= 20 && tam <= 49) {
        cl = colores[0];
      }
      if (tam >= 50 && tam <= 80) {
        cl = colores[2];
      }
      noStroke();
      fill(cl);
      rect(x, y, tam, tam);
    }
  }

  void mov(int l) {

    x+=velX;
    y+=velY;

    if (l == 1) { // Derecha
      velX+=0.05;
    }
    if (l == 2) { // Abajo
      velY+=0.05;
    }
    if (l == 3) { // Arriba
      velY-=0.05;
    }
    if (l == 4) { // Izquierda
      velX-=0.05;
    }

    if (tam>=50) {
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
    } else if (tam<=49) { // Rebote
      if (x>width - tam/2) {
        velX = velX * -1;
      }
      if (x<tam/2-1) {
        velX = velX*-1;
      }
      if (y>height-tam/2) {
        velY= velY*-1;
      }
      if (y<tam/2-1) {
        velY=velY * -1;
      }
    }
  }
}

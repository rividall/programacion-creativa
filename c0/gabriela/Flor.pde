class Flor { // nombre de la clase
  color [] colores; // declaro variables de colores.
  color todosJuntos; // declaro variable para usar muchos colores.
  int ranColores; // declaro una variable para usar colores con random.
  float x, y, x2, y2, x3, y3, posx, posy; // declaro variables decimales.

  Flor(float x, float y, float x2, float y2, float x3, float y3) { // parametros en float.
    this.ranColores = int(random(7)); // cantidad de colores que estaran en random.
    colores = new color[7]; // se crean 7 colores.
    colores[0] = color(68, 158, 183);
    colores[1] = color(120, 174, 185);
    colores[2] = color(163, 191, 179);
    colores[3] = color(198, 199, 158);
    colores[4] = color(220, 197, 133);
    colores[5] = color(223, 179, 107);
    colores[6] = color(206, 132, 63);
    todosJuntos = colores [ranColores]; // al usar todosJuntos se esta haciendo un random con todos los colores.

    this.x = x; // en la clase x vale x.
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;

    posx = random(-10, 10); // se mueve un vertice en el eje x aletoriamente
    posy = random(-10, 10); // se mueve el mismo vertice en el eje y aleatoriamente
  }

  //descripcion?
  void trian(int cambio) {

    if (cambio == 0) { // al apretar 0 aparece esto.
      fill(todosJuntos, 80); //colores en random.
      strokeWeight(0.5); // grosor de linea de contorno triangulos.
      stroke(100); // color contorno triangulos.
      triangle(x, y, x2, y2, x3, y3);
    } else if (cambio == 1) { // al apretar 1 aparece esto.
      fill(todosJuntos);
      ellipse(random(40, 360), random(0, 400), 30, 30);
    }
  }

  void mover(int cambio) {
    if (cambio == 0) {
      x += posx;
      y += posy;
    }
  }

  // métodos de ejemplos no deben ser usados en trabajos
  void denuevo () { // todo comienza de nuevo
    if (x > width || x < 0 || y > height || y < 0) {
      x = width/2;
      y = height/2;
    }
  }
}

class Forma {
  float x; //posicion en x
  float y; //posicion en y
  float t; //tamañog
  float v; //velocidad
  float dY; //dirreción en la que se movera la particula en el eje Y
  float dX; //dirreción en ek eje X

  //Array de colores
  int[] r = { 87, 122, 166, 181, 189 };  // Alternate syntax
  int[] g = { 73, 93, 127, 146, 153 };  // Alternate syntax
  int[] b = { 115, 122, 134, 153, 171 };  // Alternate syntax

  float rand = random(0,4);
  //llamar array r de la posicion rand, llamar array g de la posicion rand, llamar array b de la posicion rand
  //for (int = i; i<width; i++){}

  Forma (float x, float y, float t, float dY, float dX, float v){
    this.x = x; //posicion en x
    this.y = y; //posicion en y
    this.t = t; //tamaño de la partícula
    this.dY = dY; //diracción de la partícula: si va hacia abajo o arriba
    this.dX = dX; //dirección de cuanto aumentara y reducira el t de la ellipse
    this.v = v; //velocidad de la partícula
  }

  void pelota(){ //dibujo la particula
    noStroke();
    fill(r[0], g[0], b[0]);
    ellipse(x, y, t, t);
  }

  void movimiento(){ // como se va a mover la particula
    y += v * dY; //la velocidad se relacionara a la d -1 en el eje y (hacia arriba)
  }

  void dilatar (){
    t += 1 * dX;

    if (t > 40) {
      dX *= -1;
    }

    if (t < 5) {
      dX *= -1;
    }

  }
  void bordes () {
    //si y se sale del canvas que aparesca nuevamente desde abajo
    if( y < 0 ) {
      y = height + t; //variable para que sea valido con cualquier tamaño
    }
  }
}

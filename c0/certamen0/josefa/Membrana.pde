class Membrana { //nombro mi clase como Membrana

  //declaración de variables
  color [] colores; // creamos una variable para realizar una paleta de colores
  int randomColor; // variable para
  float x; //variable para mi posición en x
  float y; //variable para mi posición en y
  float an; //variable de ancho normal (no se altera)
  float an1; //variable para un ancho en movimiento
  float an2; //variable para otro ancho en movimiento
  float al; //variable de altura normal (no se altera)
  float al1; //variable para una altura en movimiento
  float al2; //variable para otra altura en movimiento
  float v; // variable de velocidad
  float dY; //variable para 1 dirección en y
  float dY2; //variable para una segunda dirección en y
  float dX; //variable para una dirección en x
  float dX2; // variable para otra diracción en X

  //Comienzo a formar mi constructor donde en el paréntesis escribo a que equivaldrán las variables que se escriben dentro de él
  Membrana (float x, float y, float an, float an1, float an2, float al, float al1, float al2, float v, float dY, float dY2, float dX, float dX2) {
    //especifico que la variables que escribí en la clase serán los valores que se definen en la otra pestaña de processing
    this.x = x; //posición en x
    this.y = y; //posición en y
    this.an = an; //ancho que tomará la figura
    this.an1 = an1; //primer ancho que cambia
    this.an2 = an2; //segundo ancho que cambia
    this.al = al; //alto que tomará la figura
    this.al1 = al1; //primer alto que cambia
    this.al2 = al2; //segundo alto que cambia
    this.dY = dY; //dirección 1 de la membrana: si va hacia abajo o arriba
    this.dY2 = dY2;//dirección 2 de la membrana: si va hacia abajo o arriba
    this.dX = dX;//dirección 1 de la membrana: si va hacia izquierda a derecha
    this.dX2 = dX2;//dirección 2 de la membrana: si va hacia izquierda a derecha
    this.v = v; //velocidad de la membrana
    this.randomColor = int (random(4)); // genero un random para una lista de colores que contiene 4 opciones
    colores = new color [4]; // creo mi array donde especifico que hay 4 colores
    colores [0] = color (245, 132, 26); // array 0 es el color rojizo
    colores [1] = color (187, 0, 41); //array 1 es el color mostaza
    colores [2] = color (3, 0, 44); //array 2 es el color azul
    colores [3] = color (252, 224, 130); //array 3 es el color amarillo
  }

  //Creo mi función (método) dibujo
  void dibujo() {
    fill(colores[randomColor]); // establesco que el color de mis rectángulos seran randoms
    rect(x, y, an, al1); //rectángulo de la barra de abajo
    rect(x, y, an, al2); //rectángulo de la barra superior
    rect(x, y, an1, al); //rectángulo de la barra de la izquierda
    rect(x, y, an2, al); //rectángulo de la barra de la derecha
  }

  //función (método) de movimiento para la bara de abajo
  void movimientoY() {
    al1 += v * dY; // función (método) para que se ejecute el movimiento

    if (al1 < -98 || al1 > 1) { //if para limitar cuanto crece y se achica la figura
      dY*= -1; //si la figura llega al limite retrocede
    }
  }
  //función (método) de movimiento para la bara de arriba
  void movimientoY2() {
    al2 += v * dY2; // función (método) para que se ejecute el movimiento
    if (al2 < 1 || al2 > 98) { //if para limitar cuanto crece y se achica la figura
      dY2 *= -1; //if para limitar cuanto crece y se achica la figura
    }
  }
  //función (método) de movimiento para la bara de la izquierda
  void movimientoX() {
    an1 += v * dX;// función (método) para que se ejecute el movimiento
    if (an1 < 1 || an1 > 97) { //if para limitar cuanto crece y se achica la figura
      dX *= -1;//if para limitar cuanto crece y se achica la figura
    }
  }
  //función (método) de movimiento para la bara de la derecha
  void movimientoX2() {
    an2 += v * dX2;// función (método) para que se ejecute el movimiento
    if (an2 < -98 || an2 > 1) { //if para limitar cuanto crece y se achica la figura
      dX2 *= -1;//if para limitar cuanto crece y se achica la figura
    }
  }
}

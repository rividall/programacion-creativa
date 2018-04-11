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
  float dY; //variable para 1 direccion en y
  float dY2; //variable para una segunda direccion en y
  float dX; //variable para una direccion en x
  float dX2; // variable para otra diracción en X

  //Comienzo a formar mi constructor donde en el parentesis coloco a que equivaldran las variables que se colocan dentro de el
  Membrana (float x, float y, float an, float an1, float an2, float al, float al1, float al2, float v, float dY, float dY2, float dX, float dX2) {
    //especifico que la variables que escribi en la clase seran los valores que se definen en la otra pestaña de processing
    this.x = x; //posicion en x
    this.y = y; //posicion en y
    this.an = an; //ancho que tomara la figura
    this.an1 = an1; //primer ancho que cambia
    this.an2 = an2; //segundo ancho que cambia
    this.al = al; //alto que tomara la figura
    this.al1 = al1; //primer alto que cambia
    this.al2 = al2; //segundo alto que cambia
    this.dY = dY; //diracción 1 de la membrana: si va hacia abajo o arriba
    this.dY2 = dY2;//diracción 2 de la membrana: si va hacia abajo o arriba
    this.dX = dX;//diracción 1 de la membrana: si va hacia izquierda a derecha
    this.dX2 = dX2;//diracción 2 de la membrana: si va hacia izquierda a derecha
    this.v = v; //velocidad de la membrana
    this.randomColor = int (random(4)); // genero un random para una lista de colores que contiene 4 opciones
    colores = new color [4]; // creo mi array donde especifico que hay 4 colores
    colores [0] = color (245, 132, 26); // array 0 es el color rojizo
    colores [1] = color (187, 0, 41); //array 1 es el color mostaza
    colores [2] = color (3, 0, 44); //array 2 es el color azul
    colores [3] = color (252, 224, 130); //array 3 es el color amarillo
  }

  //Creo mi funcion dibujo
  void dibujo() {
    fill(colores[randomColor]); // establesco que el color de mis rectangulos seran randoms
    rect(x, y, an, al1); //rectangulo de la barra de abajo
    rect(x, y, an, al2); //rectangulo de la barra superior
    rect(x, y, an1, al); //rectangulo de la barra de la izquierda
    rect(x, y, an2, al); //rectangulo de la barra de la derecha
  }

  //funcion de movimiento para la bara de abajo
  void movimientoY() {
    al1 += v * dY; // funcion para que se ejecute el movimiento

    if (al1 < -98 || al1 > 1) { //if para limitar cuanto crece y se achica la figura
      dY*= -1; //si la figura llega al limite retrocede
    }
  }
  //funcion de movimiento para la bara de arriba
  void movimientoY2() {
    al2 += v * dY2; // funcion para que se ejecute el movimiento
    if (al2 < 1 || al2 > 98) { //if para limitar cuanto crece y se achica la figura
      dY2 *= -1; //if para limitar cuanto crece y se achica la figura
    }
  }
  //funcion de movimiento para la bara de la izquierda
  void movimientoX() {
    an1 += v * dX;// funcion para que se ejecute el movimiento
    if (an1 < 1 || an1 > 97) { //if para limitar cuanto crece y se achica la figura
      dX *= -1;//if para limitar cuanto crece y se achica la figura
    }
  }
  //funcion de movimiento para la bara de la derecha
  void movimientoX2() {
    an2 += v * dX2;// funcion para que se ejecute el movimiento
    if (an2 < -98 || an2 > 1) { //if para limitar cuanto crece y se achica la figura
      dX2 *= -1;//if para limitar cuanto crece y se achica la figura
    }
  }
}
class Figura {
  //Variables sketch 1
  color [] colores;
  float x;
  float y;
  float v;
  //Variables sketch 2
  int r = 0; //Parte en 0
  float h;
  int p = 1;
  color []  rangos = {#EC4340, #FDCE54, #64BA85, #F7AAAE}; //Codigo de colores a utilizar
  color k;
  //Variables sketch 3
  float st;
  float chng = 1;
  float op = 0;
  float dop;

  Figura() {
    //Variables sketch 1
    colores = new color [4]; //lista de colores
    colores [0] = color (66, 110, 173); //azul pastel
    colores [1] = color (238, 137, 180); //rosado pastel
    colores [2] = color (248, 240, 164); //amarillo pastel
    colores [3] = color (151, 227, 218); //verde agua
    x = 24;
    y = height;
    v = height;

    //Variables sketch 3
    op = st;
  }

  //Voids sketch cuadrados
  void sube() { //accion de subir
    y = y - 1;
    if (y < 0) {
      y = 400 - 1;
    }
  }

  void baja() { //accion de bajar
    v = v + 2;
    if (v > 400) {
      v = 0 + 2;
    }
  }

  void lineacuad() { //linea de cuadrados

    for (int i = 0; i < 10; i ++) {
      for (int j = 0; j < 10; j ++) {//9 cuadrados por corrida
        rect(i * 48.2, v, 15, 15);// 48.2 es la separacion entre los 9 cuadrados

        if (v > 200) {
          rect(i * 48.2, v, 15, 200);
        }
      }
    }
  }

  void filacuad() { //linea de cuadrados
    for (int i = 0; i < 8; i ++) {//8 cuadrados por corrida
      rect(x + i * 48.7, y, 15, 15); //48.7 es la separacion entre los 8 cuadrados

      if (v > 200) {
        rect(x + i * 48.7, y, 15, -200);
      }
    }
  }

  //Voids sketch flores
  void flor(float u) {
    if (n == 0) { //Estado de comportamiento 0
      p = -1;    //Valor de p provoca giro en -1, es decir anti horario
    } else if (n == 1) { //Estado de comportamiento 1
      p = 1; //Valor de p provoca giro en 1, es decir en sentido horario
    }
    pushMatrix();
    translate(u, height / 2);
    rotate(radians(r));
    r += p;//Rotacion segun la variable p
    for (int j = 0; j < 20; j ++) { //filas de elipses
      for (int i = 0; i < 10; i ++) { //elipses por fila
        noStroke();
        k = rangos [j % 4];//j corresponde al primer for
        fill(k, i * 80); //Relleno de la figura
        float circle_size = random (10, 14); //variacion del tamano de las ellipses
        ellipse( (i * 20), h, circle_size, circle_size); //Si pongo en el eje x 100 gira horiz
      }
      rotate(radians(360 / 20)); //Rotacion de la figura completa en 360 grados
    }
    popMatrix();
  }
  //Voids sketch opacidad
  void cir() {
    noStroke();
    op += chng;
    if (op > 15 || op < 1) { //se mueve por fuera de los valores entre 1 y 15
      chng = chng * -1;//opacidad se multiplica por -1
    }
  }

  void op() { //efecto de opacidad
    float dop = map(op, 0, 20, 0, 255);//dentro de 30 rangos(0-10)de intensidad, cambia entre 0 y 255
    fill(255, dop);
  }

  void grilla() {//grilla de circulos
    pushMatrix();
    translate (200, 200);
    rotate(radians(r));
    r++;
    for (int j = 0; j < 10; j ++) {
      for (int i = 0; i < 10; i ++) {
        ellipse((j * 15) - width / 6, (i * 20) - height / 4.5, 10, 10);//st * 10 distancia de las filas horizontales
      }
    }
    popMatrix();
  }
}

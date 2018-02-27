//Se inicializa la clase 'Clase'.
class Clase {
  //Se inicializan las diferentes variables a usar.
  int fecha, humedad, humedad2, pr, ve, ot, in;
  float vx, vy, viento, y, x;
  PFont fuente1;

  //CONSTRUCTOR
  Clase(int fecha, int humedad, int humedad2, float viento) {
    //Se declaran las variables a usar más a delante.
    fuente1 = loadFont("BarlowSemiCondensed-Light-14.vlw");

    pr = color(150);
    ve = color(150);
    ot = color(150);
    in = color(150);

    y = humedad2;
    x = humedad;
    //Se le asigna un valor a la velocidad de x e y según una condición.
    if (viento >= 0 && viento <= 5) {
      vx = 0.1;
      vy = 0.1;
    }
    if (viento >= 6 && viento <= 10) {
      vx = 0.3;
      vy = 0.3;
    }
    if (viento >= 11 && viento <= 20) {
      vx = 0.5;
      vy = 0.5;
    }
    if (viento >= 21 && viento <= 25) {
      vx = 0.7;
      vy = 0.7;
    }
    if (viento >= 26 && viento <= 30) {
      vx = 0.9;
      vy = 0.9;
    }
    if (viento >= 31 && viento <= 35) {
      vx = 1.8;
      vy = 1.8;
    }
    //Se le asigna una varible local, a las variables declaradas en el setup.
    this.fecha = fecha;
    this.humedad = humedad;
    this.viento = viento;
    this.humedad2 = humedad2;
  }

  //Se crean las funciones
  void funcion() {
    //Se aplica un switch para cada caso según la variable fecha
    switch(fecha) {
    case 1: //Enero
      rectMode(CORNER);
      stroke(in);
      strokeWeight(0.8);
      noFill();
      rect(50, 240, 100, -x-15);
      stroke(in);
      strokeWeight(0.8);
      noFill();
      rect(50, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Enero", 85, 255);
      break;
    case 2: //Febrero
      rectMode(CORNER);
      stroke(in);
      strokeWeight(0.8);
      noFill();
      rect(150, 240, 100, -x-15);
      stroke(in);
      strokeWeight(0.8);
      noFill();
      rect(150, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Febrero", 180, 255);
      break;
    case 3: //Marzo
      rectMode(CORNER);
      stroke(pr);
      strokeWeight(0.8);
      noFill();
      rect(250, 240, 100, -x-15);
      stroke(pr);
      strokeWeight(0.8);
      noFill();
      rect(250, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Marzo", 280, 255);
      break;
    case 4: //Abril
      rectMode(CORNER);
      stroke(pr);
      strokeWeight(0.8);
      noFill();
      rect(350, 240, 100, -x-15);
      stroke(pr);
      strokeWeight(0.8);
      noFill();
      rect(350, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Abril", 390, 255);
      break;
    case 5: //Mayo
      rectMode(CORNER);
      stroke(pr);
      strokeWeight(0.8);
      noFill();
      rect(450, 240, 100, -x-15);
      stroke(pr);
      strokeWeight(0.8);
      noFill();
      rect(450, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Mayo", 485, 255);
      break;
    case 6: //Junio
      ellipseMode(CORNER);
      stroke(ve);
      strokeWeight(0.8);
      noFill();
      rect(550, 240, 100, -x-15);
      stroke(ve);
      strokeWeight(0.8);
      noFill();
      rect(550, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Junio", 585, 255);
      break;
    case 7: //Julio
      rectMode(CORNER);
      stroke(ve);
      strokeWeight(0.8);
      noFill();
      rect(650, 240, 100, -x-15);
      stroke(ve);
      strokeWeight(0.8);
      noFill();
      rect(650, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Julio", 685, 255);
      break;
    case 8: //Agosto
      rectMode(CORNER);
      stroke(ve);
      strokeWeight(0.8);
      noFill();
      rect(750, 240, 100, -x-15);
      stroke(ve);
      strokeWeight(0.8);
      noFill();
      rect(750, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Agosto", 780, 255);
      break;
    case 9:
      rectMode(CORNER); //Septiembre
      stroke(ot);
      strokeWeight(0.8);
      noFill();
      rect(850, 240, 100, -x-15);
      stroke(ot);
      strokeWeight(0.8);
      noFill();
      rect(850, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Septiembre", 870, 255);
      break;
    case 10: //Octubre
      rectMode(CORNER);
      stroke(ot);
      strokeWeight(0.8);
      noFill();
      rect(950, 240, 100, -x-15);
      stroke(ot);
      strokeWeight(0.8);
      noFill();
      rect(950, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Octubre", 975, 255);
      break;
    case 11: //Noviembre
      rectMode(CORNER);
      stroke(ot);
      strokeWeight(0.8);
      noFill();
      rect(1050, 240, 100, -x-15);
      stroke(ot);
      strokeWeight(0.8);
      noFill();
      rect(1050, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Noviembre", 1070, 255);
      break;
    case 12: //Diciembre
      ellipseMode(CORNER);
      stroke(in);
      strokeWeight(0.8);
      noFill();
      rect(1150, 240, 100, -x-15);
      stroke(in);
      strokeWeight(0.8);
      noFill();
      rect(1150, 260, 100, y+15);
      textSize(12);
      fill(120);
      textFont(fuente1);
      text("Diciembre", 1175, 255);
      break;
    }
  }

  //función de movimiento según viento
  void keyPressed() {
    if (key == 'w') {
      y = y + vy;
      x = x + vx;

      if ((y < 0) || (y > humedad2)) {
        vy = -vy;
      }
      if ((x < 0) || (x > humedad)) {
        vx = -vx;
      }
    }
    if (key == 'e') {
      y = humedad2;
      x = humedad;
    }

    if (key == 'c') {
      ve = color(#FFE23B); //Amarillo
      pr = color(#FF00B3); //Rosado
      ot = color(#DB8228); //naranjo
      in = color(#039CFF); //Celeste
    } else if (key == 'v') {
      pr = color(150);
      ve = color(150);
      ot = color(150);
      in = color(150);
    }
  }

  //A continuación se crea una función por cada mes.
  void enero() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = { 33, 48, 70, 82, 83, 88, 83, 94, 86, 78, 94, 94, 68, 63, 71, 71, 99, 62,
      73, 88, 68, 67, 71, 63, 72, 72, 55, 77, 92, 78};
    for (int i = 0; i < x.length; i++) {
      stroke(in);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {10, 25, 20, 23, 25, 29, 30, 32, 42, 26, 44, 42, 25, 6, 16, 15, 15, 10, 9,
      18, 25, 31, 19, 21, 27, 7, 10, 21, 12, 42};
    for (int i = 0; i < y.length; i++) {
      stroke(in);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void febrero() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {83, 88, 63, 63, 67, 73, 77, 77, 63, 45, 68, 88, 88, 85, 84, 95, 94, 94, 88,
      90, 94, 76, 85, 61, 38, 48, 52, 68};
    for (int i = 0; i < x.length; i++) {
      stroke(in);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {53, 22, 21, 15, 18, 19, 21, 20, 12, 12, 18, 27, 45, 48, 50, 27, 25, 48,
      49, 48, 20, 25, 39, 16, 5, 6, 12, 27};
    for (int i = 0; i < y.length; i++) {
      stroke(in);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void marzo() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {59, 82, 60, 77, 83, 94, 78, 49, 59, 37, 45, 31, 73, 88, 63, 83, 88, 68,
      88, 78, 83, 78, 73, 83, 88, 61, 61, 65, 51, 73, 74};
    for (int i = 0; i < x.length; i++) {
      stroke(pr);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {27, 16, 34, 35, 43, 33, 6, 4, 4, 8, 8, 8, 18, 24, 30, 19, 14, 18, 50, 31,
      25, 20, 13, 29, 26, 15, 18, 22, 13, 8, 31};
    for (int i = 0; i < y.length; i++) {
      stroke(pr);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void abril() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {79, 83, 83, 74, 78, 83, 83, 88, 45, 45, 83, 83, 78, 57, 34, 42, 66, 66,
      66, 61, 61, 74, 70, 74, 83, 84, 84, 79, 78, 79};
    for (int i = 0; i < x.length; i++) {
      stroke(pr);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {52, 51, 64, 47, 44, 43, 28, 18, 8, 5, 19, 16, 10, 12, 10, 11, 32, 38, 23,
      18, 13, 8, 16, 34, 39, 27, 52, 27, 34, 16};
    for (int i = 0; i < y.length; i++) {
      stroke(pr);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void mayo() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {57, 74, 79, 84, 79, 82, 79, 84, 84, 79, 77, 84, 84, 86, 82, 87, 84, 79,
      74, 79, 79, 79, 79, 79, 86, 82, 81, 83, 84, 79, 84};
    for (int i = 0; i < x.length; i++) {
      stroke(pr);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {5, 24, 35, 43, 42, 46, 52, 49, 49, 46, 48, 41, 52, 41, 26, 49, 27, 47, 48,
      49, 47, 43, 47, 35, 44, 47, 53, 43, 36, 47, 52};
    for (int i = 0; i < y.length; i++) {
      stroke(pr);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void junio() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {86, 86, 79, 54, 66, 78, 79, 79, 70, 74, 74, 74, 74, 74, 74, 89, 79, 74,
      68, 70, 59, 55, 66, 73, 75, 75, 74, 75, 77, 77};
    for (int i = 0; i < x.length; i++) {
      stroke(ve);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {53, 31, 42, 16, 16, 39, 44, 38, 45, 40, 10, 40, 43, 52, 46, 49, 28, 31,
      28, 18, 16, 30, 27, 44, 49, 50, 46, 50, 41, 47};
    for (int i = 0; i < y.length; i++) {
      stroke(ve);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void julio() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {70, 70, 74, 73, 74, 79, 79, 79, 75, 70, 77, 77, 77, 70, 74, 79, 77, 79,
      74, 74, 83, 84, 96, 91, 89, 94, 89, 82, 82, 84, 79};
    for (int i = 0; i < x.length; i++) {
      stroke(ve);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {48, 46, 48, 47, 11, 59, 56, 55, 49, 51, 52, 48, 47, 49, 55, 40, 56, 51,
      48, 46, 44, 52, 62, 59, 62, 70, 22, 66, 55, 58, 55};
    for (int i = 0; i < y.length; i++) {
      stroke(ve);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void agosto() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {79, 77, 74, 78, 74, 79, 79, 77, 79, 77, 83, 77, 79, 79, 79, 79, 79, 77,
      77, 79, 77, 89, 84, 82, 74, 74, 79, 77, 77, 74, 79};
    for (int i = 0; i < x.length; i++) {
      stroke(ve);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {4, 46, 52, 52, 18, 57, 58, 62, 52, 54, 50, 44, 19, 52, 49, 45, 49, 44, 43,
      48, 62, 65, 66, 51, 55, 44, 54, 51, 53, 17, 54};
    for (int i = 0; i < y.length; i++) {
      stroke(ve);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void septiembre() {
    //Se declara un array x e y con todos los datos de humedad máxima y mínima según mes.
    int[] x = {79, 74, 73, 78, 78, 74, 79, 79, 77, 79, 78, 79, 79, 79, 74, 79, 84, 83, 74,
      66, 74, 84, 74, 74, 74, 78, 74, 83, 83, 78};
    for (int i = 0; i < x.length; i++) {
      stroke(ot);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {45, 45, 44, 41, 37, 48, 50, 47, 47, 47, 33, 30, 44, 52, 52, 47, 44, 27, 13,
      12, 27, 28, 44, 47, 49, 50, 44, 42, 28, 12};
    for (int i = 0; i < y.length; i++) {
      stroke(ot);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void octubre() {
    int[] x = {36, 50, 79, 84, 82, 83, 83, 84, 82, 79, 79, 77, 83, 83, 79, 84, 83, 89, 82,
      84, 79, 74, 79, 89, 79, 83, 53, 57, 53, 40, 43};
    for (int i = 0; i < x.length; i++) {
      stroke(ot);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {10, 9, 15, 54, 51, 43, 46, 30, 46, 51, 48, 47, 23, 32, 27, 31, 18, 22, 41,
      31, 26, 23, 16, 24, 47, 24, 24, 23, 9, 11, 13};
    for (int i = 0; i < y.length; i++) {
      stroke(ot);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }

  void noviembre() {
    int[] x = {41, 40, 61, 74, 89, 37, 50, 56, 71, 84, 52, 61, 100, 84, 83, 73, 53, 72, 40,
      40, 45, 35, 39, 40, 33, 44, 52, 63, 36, 38};
    for (int i = 0; i < x.length; i++) {
      stroke(ot);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {13, 16, 17, 24, 5, 7, 13, 11, 13, 14, 15, 18, 23, 37, 20, 17, 8, 9, 10, 11, 10,
      10, 12, 10, 10, 4, 11, 8, 7, 8};
    for (int i = 0; i < y.length; i++) {
      stroke(ot);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }
  void diciembre() {
    int[] x = {45, 56, 59, 78, 88, 88, 77, 68, 77, 32, 44, 44, 48, 43, 51, 65, 67, 46, 68, 77,
      54, 73, 52, 73, 48, 59, 68, 67, 77, 88, 63};
    for (int i = 0; i < x.length; i++) {
      stroke(in);
      rect(510+i*10, height/2-40, 10, -x[i]-15);
    }
    int[] y = {13, 18, 7, 23, 25, 23, 18, 24, 16, 6, 6, 5, 12, 7, 6, 22, 4, 6, 14, 15,
      13, 33, 5, 5, 9, 11, 16, 13, 16, 31, 14};
    for (int i = 0; i < y.length; i++) {
      stroke(in);
      rect(510+i*10, height/2+20, 10, y[i]+15);
    }
  }
}

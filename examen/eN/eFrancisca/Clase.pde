class Clase {
  String dia;
  float maxTempA, minTempA, maxTempM, minTempM, maxTempD, minTempD;
  float maxHumA, minHumA, maxHumM, minHumM;
  float maxVisA, minVisA, maxVisM, minVisM;
  float maxWindA, meanWindA, maxWindM, meanWindM, maxWindD, meanWindD;
  PFont font;
  float x;
  float y;
  float velx;
  float vely;
  int event, index, mes;
  color h;
  int r = 200;

  float xpos, ypos; 
  int xdirection = 1;
  int ydirection = 1;


  Clase(int mes, String dia, int maxTempA, int minTempA, int maxTempM, int minTempM, int maxTempD, int minTempD, int maxHumA, int minHumA, int maxHumM, int minHumM, int maxVisA, int minVisA, int maxVisM, int minVisM, int maxWindA, int meanWindA, int maxWindM, int meanWindM, int maxWindD, int meanWindD, int event, int index) {
    this.index = index;
    this.mes = mes;
    this.dia = dia;
    this.event = event;
    // Temperatura
    this.maxTempA = map(maxTempA, 29, 36, 50, 150); // Temperatura máxima para año
    this.minTempA = map(minTempA, 21, 28, 50, 150); // Temperatura minima para año
    this.maxTempM = map(maxTempM, 29, 36, 50, 150); // Temperatura máxima para mes
    this.minTempM = map(minTempM, 21, 28, 150, 300); // Temperatura minima para mes
    this.maxTempD = map(maxTempD, 29, 36, 100, 150); // Temperatura máxima para dia
    this.minTempD = map(minTempD, 21, 28, 5, 40); // Temperatura minima para dia
    // Humedad
    this.maxHumA = map(maxHumA, 94, 100, 20, 50); // Humedad máxima para año
    this.minHumA = map(minHumA, 23, 74, 20, 50); // Humedad minima para año
    this.maxHumM = map(maxHumM, 94, 100, 525, 650); // Humedad máxima para mes
    this.minHumM = map(minHumM, 23, 74, 400, 525); // Humedad minima para mes

    // Visibilidad
    this.maxVisA = map(maxVisA, 10, 27, 20, 50); // Visibilidad máxima para año
    this.minVisA = map(minVisA, 0, 10, 20, 70); // Visibilidad minima para año
    this.maxVisM = map(maxVisM, 10, 27, 525, 650); // Visibilidad máxima para mes
    this.minVisM = map(minVisM, 0, 10, 400, 525); // Visibilidad minima para mes

    // Velocidad viento
    this.maxWindA = map(maxWindA, 6, 167, 20, 45); // Velocidad viento máximo para año
    this.meanWindA = map(meanWindA, 2, 11, 20, 60); // Velocidad viento medio para año
    this.maxWindM = map(maxWindM, 6, 167, 50, 150); // Velocidad viento máximo para mes
    this.meanWindM = map(meanWindM, 2, 11, 100, 250); // Velocidad viento medio para mes
    this.maxWindD = map(maxWindD, 6, 167, 50, 100); // Velocidad viento máximo para dia
    this.meanWindD = map(meanWindD, 2, 11, 10, 20); // Velocidad viento medio para dia

    font = createFont("Calibri-Bold", 45);

    x= width/2;
    y= 800;
    vely=-minTempD;
    y += vely;

    noStroke();
    ellipseMode(RADIUS);
    xpos = width/2;
    ypos = height/2;
  }

  void fondo() {
    if (event == 1) h = color(#4C6060); // Neblina-Lluvia
    if (event == 2) h = color(#214747); // Lluvia
    if (event == 3) h = color(#5EAAAA); // Sol
    if (event == 4) h = color(#53562B); // Tormenta
    if (event == 5) h = color(#65683C); // Lluvia-Tormenta
    if (event == 6) h = color(#484936); // Neblina-Tormenta
    if (event == 7) h = color(#777777); // Neblina
    if (event == 8) h = color(#304439); // Neblina-Lluvia-Tormenta
    if (event == 9) h = color(#AECECE); // Neblina-Lluvia-Nieve-Tormenta
    if (event == 10) h = color(#E4EFEF); // Nieve
  }


  void funcion(int index) {
    diario();
    txt(index);
  }


  void diario() {

    background(h);

    xpos = xpos + ( meanWindD * xdirection );
    ypos = ypos + ( meanWindD * ydirection );

    if (xpos > width-maxWindD || xpos < maxWindD) {
      xdirection *= -1;
    }
    if (ypos > height-maxWindD || ypos < maxWindD) {
      ydirection *= -1;
    }

    noStroke();
    fill(200, 50+meanWindD, 255);
    ellipse(xpos, ypos, maxWindD, maxWindD);


    if (y < 0) {
      y = height;
    }
    y += vely;
    noStroke();
    fill(255, 200+maxTempD, 0);
    ellipse(x, y, 100, 100);
  }


  void mensual (int i) {

    noStroke();
    fill(200, maxWindM, 255);
    triangle (i-45, height/2, i+15, height/2, i-15, maxWindM);

    noStroke();
    fill(200, meanWindM, 255);
    triangle (i-45, height/2, i+15, height/2, i-15, meanWindM);

    noStroke();
    fill(255, maxTempM, 0);
    triangle (i-30, height/2, i+30, height/2, i, maxTempM);

    noStroke();
    fill(255, minTempM, 0);
    triangle (i-30, height/2, i+30, height/2, i, minTempM);

    noStroke();
    fill(0, 180, 600-maxVisM);
    triangle (i-45, height/2, i+15, height/2, i-15, maxVisM);

    noStroke();
    fill(0, 225, 550-minVisM);
    triangle (i-45, height/2, i+15, height/2, i-15, minVisM);

    noStroke();
    fill(0, 600-maxHumM, 255);
    triangle (i-30, height/2, i+30, height/2, i, maxHumM);

    noStroke();
    fill(0, minHumM-300, 255);
    triangle (i-30, height/2, i+30, height/2, i, minHumM);


    if (mes == 1) {
      fill (255);
      textSize(45);
      text("Enero", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 2) {
      fill (255);
      textSize(45);
      text("Febrero", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 3) {
      fill (255);
      textSize(45);
      text("Marzo", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 4) {
      fill (255);
      textSize(45);
      text("Abril", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 5) {
      fill (255);
      textSize(45);
      text("Mayo", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 6) {
      fill (255);
      textSize(45);
      text("Junio", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 7) {
      fill (255);
      textSize(45);
      text("Julio", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 8) {
      fill (255);
      textSize(45);
      text("Agosto", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 9) {
      fill (255);
      textSize(45);
      text("Septiembre", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 10) {
      fill (255);
      textSize(45);
      text("Octubre", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 11) {
      fill (255);
      textSize(45);
      text("Noviembre", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
    if (mes == 12) {
      fill (255);
      textSize(45);
      text("Diciembre", width * .05, height * .1);
      textSize(20);
      text("v| Avanza mes    ^| Retrocede mes", width * .05, 680);
    }
  }

  void anual() {

    fill (0);
    textSize(45);
    text("2015", width * .05, height * .1);
    textSize(20);
    text("h| Humedad    v| Visibilidad    w| Velocidad del viento", width * .05, 680);

    pushMatrix();

    translate(width/2, height/2);
    rotate(radians(index*360/365));

    stroke(255, 255, 0); // Lineas amarillas
    strokeWeight(1);
    line(r, 0, r-minTempA, 0);

    stroke(255, 100, 0); // Lineas naranjas
    strokeWeight(1);
    line(r, 0, r+maxTempA, 0);

    if (key == 'v') {
      noStroke(); // Elipses moradas
      fill (#B45DED, minVisA);
      ellipse (r, r+minVisA, maxVisA, maxVisA);
    }

    if (key == 'w') {
      noStroke(); // Elipses verdes
      fill (#72ED5D, meanWindA);
      ellipse (r, r+meanWindA, maxWindA, maxWindA);
    }

    popMatrix();
  }


  void txt(int index) {
    fill(255);
    textFont(font);

    if (index <= 30) {
      text("Enero", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 30 && index <= 58) {
      text("Febrero", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 58 && index <= 89) {
      text("Marzo", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 89 && index <= 119) {
      text("Abril", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 119 && index <= 150) {
      text("Mayo", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 150 && index <= 180) {
      text("Junio", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 180 && index <= 211) {
      text("Julio", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 211 && index <= 242) {
      text("Agosto", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 242 && index <= 272) {
      text("Septiembre", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 272 && index <= 303) {
      text("Octubre", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 303 && index <= 333) {
      text("Noviembre", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    if (index > 333 && index <= 364) {
      text("Diciembre", width * .05, height * .1);
      textSize(45);
      text(dia, width * .05, height * .2);
      textSize(20);
      text(">| Avanza dia    <| Retrocede dia", width * .05, 680);
    }
    textFont(font);
    if (event == 1) text ("Neblina-Lluvia", width * .05, 600); // Neblina-Lluvia
    if (event == 2) text ("Lluvia", width * .05, 600); // Lluvia
    if (event == 3) text ("Sol", width * .05, 600); // Sunny
    if (event == 4) text ("Tormenta", width * .05, 600);  // Tormeta
    if (event == 5) text ("Lluvia-Tormenta", width * .05, 600); // Lluvia-Tormenta
    if (event == 6) text ("Neblina-Tormenta", width * .05, 600); // Neblina-Tormenta
    if (event == 7) text ("Neblina", width * .05, 600); // Neblina
    if (event == 8) text ("Neblina-Lluvia-Tormenta", width * .05, 600); // Neblina-Lluvia-Tormenta
    if (event == 9) text ("Neblina-Lluvia-Nieve-Tormenta", width * .05, 600); // Neblina-Lluvia-Nieve-Tormenta
    if (event == 10) text ("Nieve", width * .05, 600); // Nieve
  }
}
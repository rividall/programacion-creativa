class Clase {
  String mes, dia;
  float maxTemp, minTemp, temp, tam;
  PFont font;
  float x;
  float y;
  float velx;
  float vely;
  int event, index;
  color h;

  Clase(String mes, String dia, int maxTemp, int minTemp, int event, int index) {
    this.index = index;
    this.mes = mes;
    this.dia = dia;
    this.event = event;
    this.maxTemp = map(maxTemp, 29, 36, 150, 250);
    this.minTemp = map(minTemp, 21, 28, 150, 250);
    //tam = this.maxtemp;
    font = createFont("Calibri-Bold", 32);

    x= random(width);
    y= 800;
    velx=random(0, 10);
    vely=-minTemp;
    x += velx;
    y += vely;
  }
  
  void fondo() {
    if (event == 1) h = color(#4C6060);
    if (event == 2) h = color(#214747);
    if (event == 3) h = color(#5EAAAA);
    if (event == 4) h = color(#53562B);
    if (event == 5) h = color(#65683C);
    if (event == 6) h = color(#484936);
    if (event == 7) h = color(#777777);
    if (event == 8) h = color(#304439);
    if (event == 9) h = color(#AECECE);
    if (event == 10) h = color(#E4EFEF);
    //background(h);
  }

  // agrupación de métodos de forma y texto
  void funcion(int index) {
    diario();
    txt(index);
  }

  // crea una elipse con diámetro de temperatura máxima
  void diario() {
    background(h);
    if (y < 0) {
      y= height;
    }
    y += vely;
    noStroke();
    fill(255, 255, 0);
    ellipse(x, y, maxTemp, maxTemp);
  }

  /*void mes () {
    for (int i = 0; i < 30; i++) {
      stroke (150+maxTemp, 200, 0);
      strokeWeight (3);
      arc(width/2, (height/2*index), 300, 300, HALF_PI, PI);
    }
  }*/

  void anual() {

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(index*360/365));
    stroke(255, 255, 0);
    strokeWeight(2);
    line(150, 0, minTemp, 0);
    stroke(255, 100, 0);
    strokeWeight(2);
    line(150, 0, maxTemp, 0);
    popMatrix();
  }

  // muestra en texto el mes y el día
  void txt(int index) {
    fill(255);
    textFont(font);

    if (index <= 30) {
      text("Enero", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 30 && index <= 58) {
      text("Febrero", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 58 && index <= 89) {
      text("Marzo", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 89 && index <= 119) {
      text("Abril", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 119 && index <= 150) {
      text("Mayo", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 150 && index <= 180) {
      text("Junio", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 180 && index <= 211) {
      text("Julio", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 211 && index <= 242) {
      text("Agosto", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 242 && index <= 272) {
      text("Septiembre", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 272 && index <= 303) {
      text("Octubre", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 303 && index <= 333) {
      text("Noviembre", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
    if (index > 333 && index <= 364) {
      text("Diciembre", width * .1, height * .1);
      textSize(45);
      text(dia, width * .1, height * .2);
    }
  }
}
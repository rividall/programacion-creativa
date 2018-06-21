class Clase {
  String mes, dia;
  float maxtemp, mintemp, temp, tam;
  PFont font;
  float x;
  float y;
  float velx;
  float vely;

  Clase(String mes, String dia, int maxtemp, int mintemp) {
    this.mes = mes;
    this.dia = dia;
    this.maxtemp = map(maxtemp, 26, 36, 0, 250);
    this.mintemp = map(mintemp, 20, 25, 0, 255);
    //tam = this.maxtemp;
    font = createFont("Calibri-Bold", 32);
    
    x= random(width);
    y= 360;
    velx=random(0, 10);
    vely=random(-mintemp, -maxtemp);
    x += velx;
    y += vely;
  }

  // agrupación de métodos de forma y texto
  void funcion(int index) {
    dato();
    txt(index);
  }

  // crea una elipse con diámetro de temperatura máxima
  void dato() {
    /*fill(150+maxtemp, 200, 0);
    ellipse(width / 2, height * .5, maxtemp, maxtemp);*/
    //x += velx;
    y += vely;
    
    noStroke();
      fill(150+maxtemp, 200, 0);
      ellipse(x, y, maxtemp, maxtemp);
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
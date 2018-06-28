class Clase {

  String mes, dia;
  int tmaxima, tminima, maxHum, minHum, maxWind, precip, clCover, events;

  PFont font;

  Clase(String mes, String dia, int tmaxima, int tminima, int maxHum, int minHum,
  int maxWind, int precip, int clCover, int events) {
    this.dia = dia;
    this.mes = mes;
    this.tmaxima = map(tmaxima, -3, 37, 0, 255);
    this.tminima = map(tminima, -9, 19, 0, 255);
    this.maxHum = maxHum;
    this.minHum = minHum;
    this.maxWind = maxWind;
    this.precip = precip;
    this.clCover = clCover;
    this.events = events;
    font = createFont("Calibri-Bold", 32);
    this.clCover = clCover;
  }

  // agrupación de métodos de forma y texto
  void funcion() {
    dato();
    txt();
    println(tmaxima);
  }

  // crea una elipse con diámetro de temperatura máxima
  void dato() {
    stroke(0, 0, minima, minHum);
    strokeWeight(8);
    fill(tmaxima, 0, 0);
    ellipse(width / 2, height * .5, minHum, minHum);
  }

  // muestra en texto el mes y el día
  void txt() {
    fill(0);
    textFont(font);

    text(dia, width * .1, height * .1);
    text(mes, width * .3, height * .1);
    text("2015", width * .5, height * .1);
    textSize(55);
    //text(dia, width * .1, height * .2);
  }
}

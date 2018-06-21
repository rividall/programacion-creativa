class Clase {

  String mes, dia;
  float maxTemp, minTemp, temp, velViento;
  PFont font;

  Clase(String mes, String dia, int maxima, int minima) {
    this.dia = dia;
    this.maxTemp = map(maxima, -9, 22, 0, 255);
    this.minTemp = map(minima, -14, 13, 0, 255);
    this.velViento = map(velViento, 5, 49, 0, 255);
    this.temp = this.maxTemp;
    font = createFont("Calibri-Bold", 32);
    this.mes = mes;
  }

  // agrupación de métodos de forma y texto
  void funcion() {
    //dato();
    temperatura();
    txt();

    //temperatura();
  }

  void dibujo(int eleccion) {
    if (eleccion == 1) {
      temperatura();
    }
    if (eleccion == 2) {
      velViento();
    }
  }

  void temperatura() {
    strokeWeight(0);
    for (int i = 0; i <100; i++) {
      fill(255, 0, 0);
      rect(i*10, height/2, 5, -maxTemp);
      text("Temperatura Max", width/3, height * .25);
      fill(0, 0, 255);
      rect(i*10, height/2, 5, minTemp);
      text("Temperatura Min", width/3, height - height/8);
    }
  }

  void velViento() {
    float x, y;
    float vel = velViento;    
    float r = 50;

    translate(width/2, height/2);
    x = r * cos(vel); //cos siempre para x
    y = r * sin(vel); //sin siempre para y

    ellipse(x, y, 10, 10);
  }




  // crea una elipse con diámetro de temperatura máxima
  void dato() {
    stroke(0, 0, minTemp);
    //strokeWeight(8);
    //ellipse(width / 2, height * .5, temp, temp);
  }

  //void temperatura() {
  //  for (int i = 0; i < 365; i++) {
  //    noStroke();
  //    fill(i, 0, 0);
  //    rect(i*3, height/2, 1, -maxTemp);
  //    index++;
  //  }
  //}

  // muestra en texto el mes y el día
  void txt() {
    fill(0);
    textFont(font);

    text(dia, width * .1, height * .1);
    text(mes, width * .3, height * .1);
    text("2015", width * .5, height * .1);
    textSize(55);
  }
}
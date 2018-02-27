class Rocio {  // Se inicia el Class Rocío.
  // Se declaran las variables a utilizar.
  float i, min, max, vel1, c, d, e, f, g;
  int mes, mean;
  String a, dia;
  PFont fuente, fuente1;
  color azul, verde1, verde1a, verde2, verde2a, morado, morado1, naranjo, amarillo;

  // Constructor.
  Rocio(String a, String dia, int mes, float max, int mean, float min) {
    this.max = max;
    this.mean = mean;
    this.min = min;
    this.mes = mes;
    this.dia = dia;
    this.a = a;

    c = HALF_PI;
    d = PI;
    e = max*10;
    f = min*6;
    g = mean*14;
    vel1 = 0.01;

    // Se declaran todos los colores.
    azul = #0172b1;
    verde1 = #78be54;
    verde1a =#94c17a;
    verde2 = #009e92;
    verde2a = #6ba59f;
    morado = #c1619d;
    morado1 = #674e7f;
    naranjo = #d95338;
    amarillo = #f7a63c;


    // Se descargan y declaran los dos tipos de fuentes a utilizar.
    fuente = loadFont("BarlowSemiCondensed-ExtraLight-35.vlw");
    fuente1 = loadFont("BarlowSemiCondensed-Bold-35.vlw");
  }

  // Se comienzan a dibujar todos los objetos y textos que se visualizarán en el
  // canvas al correr programa.

  // Función de Texto del Título.
  void textoTitulo() {
    fill(180);
    textFont(fuente1);
    textSize(40);
    text("Visualización de Datos - Rocío", width/38, height/9.5);
    textSize(38);
    text("Miami, EEUU", width/35, height/6);
    textSize(35);
    text("2015", width/35, height/4.5);
  }

  // Función de Texto del Promedio Rocío 2015.
  void yeartext() {
    strokeWeight(2);
    stroke(180);
    line(1180, 235, 915, 235);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Promedio Rocío 2015", width/1.4, height/3.5);
  }

  // Función del Arco principal con los datos promedios de todo el año.
  void allyear() {
    if (mes > 1 && mes < 12) {
      noFill();
      stroke(azul);
      strokeWeight(3);
      arc(width/2, height/4, g, g, c-(vel1*mean/4), d);
    }
  }

  // Función de Texto para mostrar "Verano".
  void veranotext() {
    strokeWeight(2);
    stroke(180);
    line(150, 470, 40, 470);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Verano", width/30, height/1.6);
  }

  // Función de Texto para mostrar el Verano al mover el mouse por Y.
  void veranotext1() {
    strokeWeight(2);
    stroke(180);
    line(420, 310, 300, 310);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Verano", width/4.3, height/2.62);
    textSize(15);
    text("MÁX", width/7.56, height/4.8);
    text("MIN", width/2.76, height/4.8);
  }

  // Función del Arco con los datos mínimo y máximo del Verano.
  void verano() {
    vel1 += 0.08;
    for (float i = 1; i<500; i+=10) {
      if (mes > 1 && mes < 3) {
        strokeCap(SQUARE);        // Las puntas de los arcos se hacen Rectas.
        noFill();
        stroke(verde1);
        strokeWeight(2);
        arc(width/9, height/1.25, e, e, c-(vel1*max/4.7), d);
        noFill();
        stroke(verde1a);
        strokeWeight(2);
        arc(width/9, height/1.25, f, f, c-(vel1*min/4.7), d);
      }
    }
  }

  // Función del Arco con los datos mínimo y máximo del Verano al mover el Mouse en Y.
  void verano1() {
    if (mes > 1 && mes < 3) {
      strokeCap(SQUARE);
      noFill();
      stroke(verde1);
      strokeWeight(2);
      arc(width/7, height/5, e, e, c-(max/4.7), d);
      noFill();
      stroke(verde1a);
      strokeWeight(2);
      arc(width/2.7, height/5, f, f, c-(min/4.7), d);
    }
  }

  // Función de Texto para mostrar "Otoño".
  void otonotext() {
    strokeWeight(2);
    stroke(180);
    line(480, 470, 365, 470);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Otoño", width/3.5, height/1.6);
  }

  // Función de Texto para mostrar el Otoño al mover el mouse por Y.
  void otonotext1() {
    strokeWeight(2);
    stroke(180);
    line(1090, 310, 940, 310);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Otoño", width/1.36, height/2.62);
    textSize(15);
    text("MÁX", width/1.63, height/4.8);
    text("MIN", width/1.16, height/4.8);
  }

  // Función del Arco con los datos mínimo y máximo del Otoño.
  void otono() {
    if (mes > 3 && mes < 6) {
      noFill();
      stroke(verde2);
      strokeWeight(2);
      arc(width/2.7, height/1.25, e, e, c-(vel1*max/5.33), d);
      noFill();
      stroke(verde2a);
      strokeWeight(2);
      arc(width/2.7, height/1.25, f, f, c-(vel1*min/5.33), d);
    }
  }

  // Función del Arco con los datos mínimo y máximo del Otoño al mover el Mouse en Y.
  void otono1() {
    if (mes > 3 && mes < 6) {
      noFill();
      stroke(verde2);
      strokeWeight(2);
      arc(width/1.6, height/5, e, e, c-(max/5.33), d);
      noFill();
      stroke(verde2a);
      strokeWeight(2);
      arc(width/1.15, height/5, f, f, c-(min/5.33), d);
    }
  }

  // Función de Texto para mostrar "Invierno".
  void inviernotext() {
    strokeWeight(2);
    stroke(180);
    line(800, 470, 675, 470);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Invierno", width/1.9, height/1.6);
  }

  // Función de Texto para mostrar el Invierno al mover el mouse por Y.
  void inviernotext1() {
    strokeWeight(2);
    stroke(180);
    line(420, 470, 300, 470);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Invierno", width/4.3, height/1.6);
    textSize(15);
    text("MÁX", width/7.56, height/1.24);
    text("MIN", width/2.76, height/1.24);
  }

  // Función del Arco con los datos mínimo y máximo del Invierno.
  void invierno() {
    if (mes > 6 && mes < 8) {
      noFill();
      stroke(morado);
      strokeWeight(2);
      arc(width/1.6, height/1.25, e, e, c-(vel1*max/5.32), d);
      noFill();
      stroke(morado1);
      strokeWeight(2);
      arc(width/1.6, height/1.25, f, f, c-(vel1*min/5.32), d);
    }
  }

  // Función del Arco con los datos mínimo y máximo del Invierno al mover el Mouse en Y.
  void invierno1() {
    if (mes > 6 && mes < 8) {
      noFill();
      stroke(morado);
      strokeWeight(2);
      arc(width/7, height/1.25, e, e, c-(max/5.33), d);
      noFill();
      stroke(morado1);
      strokeWeight(2);
      arc(width/2.7, height/1.25, f, f, c-(min/5.33), d);
    }
  }

  // Función de Texto para mostrar "Primavera".
  void primaveratext() {
    strokeWeight(2);
    stroke(180);
    line(1135, 470, 985, 470);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Primavera", width/1.3, height/1.6);
  }

  // Función de Texto para mostrar el Primavera al mover el mouse por Y.
  void primaveratext1() {
    strokeWeight(2);
    stroke(180);
    line(1090, 470, 940, 470);
    fill(180);
    textFont(fuente);
    textSize(30);
    text("Primavera", width/1.36, height/1.6);
    textSize(15);
    text("MÁX", width/1.63, height/1.24);
    text("MIN", width/1.16, height/1.24);
  }

  // Función del Arco con los datos mínimo y máximo del Primavera.
  void primavera() {
    if (mes > 8 && mes < 12) {
      noFill();
      stroke(naranjo);
      strokeWeight(2);
      arc(width/1.15, height/1.25, e, e, c-(vel1*max/5.75), d);
      noFill();
      stroke(amarillo);
      strokeWeight(2);
      arc(width/1.15, height/1.25, f, f, c-(vel1*min/5.75), d);
    }
  }
  // Función del Arco con los datos mínimo y máximo del Primavera al mover el Mouse en Y.
  void primavera1() {
    if (mes > 8 && mes < 12) {
      noFill();
      stroke(naranjo);
      strokeWeight(2);
      arc(width/1.6, height/1.25, e, e, c-(max/5.8), d);
      noFill();
      stroke(amarillo);
      strokeWeight(2);
      arc(width/1.15, height/1.25, f, f, c-(min/5.8), d);
    }
  }
}

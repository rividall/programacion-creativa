class Tem12mes {
  /*Esta clase muestra el año completo con las temperaturas máximas y mínimas
  junto con la humedad máxima y mínima y las nubes del año completo.*/
  int maxima, minima, mes;
  float i, maxhum, minhum, nub;


  Tem12mes(int mes, int maxima, int minima, float i, float maxhum, float minhum, float nub) {
    this.mes = mes;
    this.maxima = (int)map(maxima, -1, 36, 1, 72);
    this.minima = (int)map(minima, -9, 19, -18, 38);
    this.maxhum = (float)map(maxhum, 49, 100, 32, 66);
    this.minhum = (float)map(minhum, 10, 93, 6, 60);
    this.nub = (float)map(nub, 0, 8, 10, 80); 
    this.i = map(i, 0, 364, -PI/2, TWO_PI-PI/2);
  }

  void verano() { //Cada mes con su color y muestra Tem máx y mín como líneas.
    stroke(#CED7E0);
    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2A5583);
    }

    pushMatrix();
    strokeWeight(1);
    rotate(i);
    line(140, 0, 140 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(95, 0, 95 + minima, 0);
    popMatrix();
  }

  void veranohum() { //Cada mes con su color y muestra Hum máx y mín como puntos.
    stroke(#CED7E0);
    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2A5583);
    }

    pushMatrix();
    rotate(i);
    point(maxhum, 0); 
    point(minhum, 0);
    popMatrix();
  }

  void vernub() { //Cada mes con su color y muestra cantidad nubes como círculos.
    stroke(#CED7E0);
    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2A5583);
    }

    pushMatrix();
    rotate(i);
    noFill();
    ellipse(nub + 200, 0, 10, 10);
    popMatrix();
  }

  void otono() { //Cada mes con su color y muestra Tem máx y min.
    stroke(#F8D2CB);
    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    strokeWeight(1);
    rotate(i);
    line(140, 0, 140 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(95, 0, 95 + minima, 0);
    popMatrix();
  }

  void otonohum() { //Cada mes con su color y muestra Hum máx y mín como puntos.
    stroke(#F8D2CB);
    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    rotate(i);
    point(maxhum, 0); 
    point(minhum, 0);
    popMatrix();
  }

  void otonub() { //Cada mes con su color y muestra cantidad nubes como círculos.
    stroke(#F8D2CB);
    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    rotate(i);
    noFill();
    ellipse(nub + 200, 0, 10, 10);
    popMatrix();
  }

  void invierno() { //Cada mes con su color y muestra Tem máx y mín como líneas.
    stroke(#DDE063);
    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    strokeWeight(1);
    rotate(i);
    line(140, 0, 140 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(95, 0, 95 + minima, 0);
    popMatrix();
  }

  void inviernohum() { //Cada mes con su color y muestra Hum máx y mín como puntos.
    stroke(#DDE063);
    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    rotate(i);
    point(maxhum, 0); 
    point(minhum, 0);
    popMatrix();
  }

  void invnub() { //Cada mes con su color y muestra cantidad nubes como círculos.
    stroke(#DDE063);
    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    rotate(i);
    noFill();
    ellipse(nub + 200, 0, 10, 10);
    popMatrix();
  }

  void primavera() { //Cada mes con su color y muestra Tem máx y mín como líneas.
    stroke(#E3C38B);
    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    pushMatrix();
    strokeWeight(1);
    rotate(i);
    line(140, 0, 140 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(95, 0, 95 + minima, 0);
    popMatrix();
  }

  void primaverahum() { //Cada mes con su color y muestra Hum máx y mín como puntos.
    stroke(#E3C38B);
    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    pushMatrix();
    rotate(i);
    point(maxhum, 0); 
    point(minhum, 0);
    popMatrix();
  }

  void prinub() { //Cada mes con su color y muestra cantidad nubes como círculos.
    stroke(#E3C38B);
    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    pushMatrix();
    rotate(i);
    noFill();
    ellipse(nub + 200, 0, 10, 10);
    popMatrix();
  }
}
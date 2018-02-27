class Llu4esta {
  /*Esta clase muestra las precipitaciones y la humedad media dividido en las
  cuatro estaciones del año.*/
  float pre, i;
  int mes, medhum;

  Llu4esta(int mes, float pre, float i, int medhum) {
    this.mes = mes;
    this.medhum = (int)map(medhum, 32, 97, 48, 146);//inicio + su mitad
    // si no llueve no debe ir un indicador de que sí llueve
    this.pre = (float)map(pre, 0.00, 17.02, 10, 170);
    this.i = map(i, 0, 91, -PI/2, TWO_PI-PI/2);
  }

  void veranol() { //Cada estación muestra la precipitación en líneas.
    stroke(#CED7E0);
    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }
    pushMatrix();
    rotate(i);
    strokeWeight(1);
    noFill();
    line(20, 0, 20 +  pre, 0);
    popMatrix();
  }

  void veranomd() { //Cada estación muestra la humedad media como puntos.
    stroke(#CED7E0);
    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(5);
    point(medhum, 10);
    popMatrix();
  }

  void otonol() { //Cada estación muestra la precipitación en líneas.
    stroke(#F8D2CB);
    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(1);
    noFill();
    line(20, 0, 20 +  pre, 0);
    popMatrix();
  }

  void otonomd() { //Cada estación muestra la humedad media como puntos.
    stroke(#F8D2CB);
    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(5);
    point(medhum, 10);
    popMatrix();
  }

  void inviernol() { //Cada estación muestra la precipitación en líneas.
    stroke(#DDE063);
    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(1);
    noFill();
    line(20, 0, 20 +  pre, 0);
    popMatrix();
  }

  void inviernomd() { //Cada estación muestra la humedad media como puntos.
    stroke(#DDE063);
    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(5);
    point(medhum, 10);
    popMatrix();
  }

  void primaveral() { //Cada estación muestra la precipitación en líneas.
    stroke(#E3C38B);
    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(1);
    noFill();
    line(20, 0, 20 +  pre, 0);
    popMatrix();
  }

  void primaveramh() { //Cada estación muestra la humedad media como puntos.
    stroke(#E3C38B);
    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    pushMatrix();
    rotate(i);
    strokeWeight(5);
    point(medhum, 10);
    popMatrix();
  }
}

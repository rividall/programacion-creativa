class Clase {

  int tmaxima, tminima, tmedia, i, x, y, fecha, wind, inicio, fin, cosas, gll; /*Se 
   definen las variables.*/
  float posH, tempMax, tempMin, tempMed, algo, tMin, viento, posHR, opa;
  color lineas;

  Clase(int fecha, int tmaxima, int tminima, int tmedia, int i, int wind, int nube) {
    //Se declaran los valores en el constructor.
    this.fecha = fecha; 
    this.tmaxima = tmaxima;
    this.tminima = tminima;
    this.tmedia = tmedia;
    this.i = i;
    this.wind = wind;
    tempMax = map(tmaxima, 21, 34, 0, -200);
    tempMin = map(tminima, 15, 25, 200, 0);
    tempMed = map(tmedia, 15, 34, 200, -200);
    posH = map(fecha, 0, 364, width/8, width - width/8);
    viento = map(wind, 1, 357, 0, width - 15);
    posHR = map(fecha, 0, 30, 0, width-41.29);
    opa = map(nube, 1, 8, 1, 150);
  }

  void ano() {//Función que visualiza las temperaturas el año completo.
    pushMatrix();
    translate(0, 400);

    stroke(0);
    strokeWeight(1);
    stroke(#FF8B8B, 190);
    line(posH, 0, posH, tempMax);
    stroke(#8BA5FF, 190);
    line(posH, 0, posH, tempMin);
    stroke(#FFBE95, 190);
    line(posH, 0, posH, tempMed);

    popMatrix();
  }
  void maximano() {//Función que visualiza las temperaturas máximas del año completo.
    pushMatrix();

    translate(0, 400);
    stroke(#FF8B8B, 190);
    line(posH, 0, posH, tempMax);

    popMatrix();
  }
  void mediano() {//Función que visualiza las temperaturas medias del año completo.
    pushMatrix();

    translate(0, 400);
    stroke(#FFBE95, 190);
    line(posH, 0, posH, tempMed);

    popMatrix();
  }
  void minimano() {//Función que visualiza las temperaturas mínimas del año completo.
    pushMatrix();

    translate(0, 400);
    stroke(#8BA5FF, 190);
    line(posH, 0, posH, tempMin);

    popMatrix();
  }

  void vientito() {//Función que visualiza la dirección del viento del año completo.
    pushMatrix();

    translate(0, 755);
    stroke(255, 100);
    line(posH, 0, viento, -625);

    popMatrix();
  }
  void visibilidad() {//Función que visualiza la cobertura de las nubes en un mes.
    noStroke();
    fill(200, opa);
    rect(posHR, 130, 41.29, 700);
  }
} 
class Clase {
  PVector rot;
  PVector acel;

  PVector rot2;
  PVector acel2;

  int maxima, media, minima, maxH, meanH, a, rotar, angulo, minimaH, index;
  float x, y, z, rx, ry, rx2, ry2, rx3, ry3, maxV, meanV, r, r2, limiteVel, limiteVel2;

  Clase(int maxH, int maxima, int media, int minima, int meanH, int t_index, int minH, float maxV, float meanV) {

    rectMode(CENTER);
    this.maxH = maxH;
    this.maxima = maxima;
    this.media = media;
    this.minima = minima;
    this.meanH = meanH;
    this.minimaH = minH;
    this.maxV = maxV;
    this.meanV = meanV;

    index = t_index ;
    rx = random(-7, 7);
    ry = random(-7, 7);
    rx2 = random(-3, 3);
    ry2 = random(-3, 3);
    rx3 = random(-5, 5);
    ry3 = random(-5, 5);

    x = 0;
    y = 0;
    z = 0;

    // valores PVector
    rot = new PVector(0, 0);
    acel = new PVector(0, 0.1);

    rot2 = new PVector(0, 0);
    acel2 = new PVector(0, 0.1);
  }

  // Los métodos deben ser escritos en minúsculas
  void TEMPERATURA() {

    //circuloTMÁXIMA
    blendMode(MULTIPLY);
    float maximaT = map(maxima, 26, 34, 15, 30 ); // map de temperatura máxima
    fill(216, 196, 184); // COLOR CAFE MEDIO GRIS Y CON OPACIDAD
    ellipse(x, y, maximaT, maximaT);
    noStroke();

    //circuloTMEDIA
    blendMode(BLEND);
    float mediaT = map(media, 23, 29, 7, 20 ); // map de temperatura media
    fill(255, 128, 98); // NARANJO
    ellipse(x + rx2, y + ry2, mediaT, mediaT);

    //circuloTMINIMA
    blendMode(MULTIPLY);
    float minimaT = map(minima, 21, 25, 5, 15 ); // map de temperatura minima
    fill(204, 142, 84); // CAFÉ
    ellipse(x + rx, y + ry, minimaT, minimaT);
  }


  void HUMEDAD() {

    //circuloMAXIMAH
    float maxH1 = map(maxH, 74, 100, 20, 30 ); // map de humedad máxima
    stroke(162, 255, 197); // VERDE CLARO
    noFill();
    ellipse(x + rx3, y +ry3, maxH1, maxH1);

    //circuloMEDIAH
    float mediaH = map(meanH, 62, 90, 12, 20 ); // map de humedad media
    stroke(99, 204, 109); // VERDE
    noFill();
    ellipse(x, y, mediaH, mediaH);

    //circuloMINIMAH
    float minH = map(minimaH, 17, 83, 5, 15 ); // map de humedad minima
    stroke(100, 132, 204); // AZUL
    strokeWeight(3);
    noFill();
    ellipse(x + rx2, y + ry2, minH, minH);
  }

  void VIENTO() {
    //circuloMAXIMAH
    float maxV1 = map(maxV, 13, 134, 10, 40 ); // map de velocidad máxima
    strokeWeight(3);
    stroke(255, 128, 98); // NARANJO
    noFill();
    pushMatrix();
    translate(x, y);
    rotateY(rot.y); // rotar en eje Y
    ellipse(0, 0, maxV1, maxV1);
    popMatrix();
  }

  void VIENTO2() {
    float mediaH = map(meanV, 6, 21, 5, 10 ); // map de velocidad media
    strokeWeight(3);
    stroke(99, 204, 109); // VERDE);
    pushMatrix();
    translate(x, y);
    rotate(rot2.y);
    rect(0, 0, mediaH, mediaH);
    popMatrix();
  }

  void MOVER() {
    float maxV2 = map(maxV, 13, 134, 0.003, 0.35  );
    r += maxV2;
  }

  void MOVER2() {
    float mediaH = map(meanV, 6, 21, 0.0015, 0.1 );
    r2 += mediaH;
  }


  void movimiento() {   // aceleración para void VIENTO
    limiteVel = r; // limite velocidad
    rot.add(acel); // Sumamos la aceleración a nuestra rot
    rot.limit(limiteVel); // Definimos una velocidad limite
  }

  void movimiento2() {  // aceleración para void VIENTO2
    limiteVel2 = r2; // limite velocidad
    rot2.add(acel2); // Sumamos la aceleración a nuestra rot
    rot2.limit(limiteVel2); // Definimos una velocidad limite
  }

  void dias(int paso) {

    for(int i = 0; i < objetos.length; i++) {
      if(index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, 0.1, .4);  // cambia distancia en Y
        float factor1 = map(paso, 7, 182, 1, .6);   // cambia distancia en Y
        float factor2 = map(paso, 7, 182, .06, .1);   // cambia distancia en X
        float factor3 = map(paso, 7, 182, .95, .9);    // cambia distancia en X

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365/paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
}

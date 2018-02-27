class Clase2 {
  PVector rot;
  PVector acel;

  PVector rot2;
  PVector acel2;

  int maxima, media, minima, maxH, meanH, rotar, angulo, minimaH;
  int index;
  float x, y, rx, ry, rx2, ry2, rx3, ry3, maxV, meanV;
  float a, b;
  float x2, y2, r, r2, limiteVel, limiteVel2;

  Clase2(int maxH, int maxima, int media, int minima, int meanH, int t_index, int minH, float maxV, float meanV) {

    rectMode(CENTER);
    this.maxH = maxH;
    this.maxima = maxima;
    this.media = media;
    this.minima = minima;
    this.meanH = meanH;
    this.minimaH = minH;
    this.maxV = maxV;
    this.meanV = meanV;

    // valores PVector
    rot = new PVector(0, 0);
    acel = new PVector(0, 0.1);

    rot2 = new PVector(0, 0);
    acel2 = new PVector(0, 0.1);

    index = t_index ;
    rx = random(-7, 7);
    ry = random(-7, 7);
    rx2 = random(-3, 3);
    ry2 = random(-3, 3);
    rx3 = random(-5, 5);
    ry3 = random(-5, 5);

    x2 = 0;
    y2 = 0;
  }

  // Los métodos deben ser escritos en minúsculas
  void TEMPERATURA2() {

    noStroke();
    float maximaT2 = map(maxima, 26, 34, 15, 30 ); // map de temperatura máxima
    float mediaT2 = map(media, 23, 29, 7, 20 ); // map de temperatura media
    float minimaT2 = map(minima, 21, 25, 5, 15 ); // map de temperatura minima
    rotate(radians(PI));

    a = 26;
    b = 34;

    float maximaT = map(maxima, 26, 34, 200, 300 ); // map de temperatura máxima para el diametro de la circunferencia que tendra cada valor

    x = maximaT * cos(0);
    y = maximaT * sin(0);

    // los map se encuentran en el tamaño de los objetos
    blendMode(MULTIPLY);
    fill(216, 196, 184); // COLOR CAFE MEDIO GRIS Y CON OPACIDAD
    ellipse( x, y, maximaT2, maximaT2);

    blendMode(BLEND);
    fill(255, 128, 98); // NARANJO
    ellipse(x + rx2, y + ry2, mediaT2, mediaT2);

    fill(204, 142, 84);
    blendMode(MULTIPLY); // CAFÉ
    ellipse(x + rx, y + ry, minimaT2, minimaT2);
  }

  void HUMEDAD2() {

    float maxH2 = map(maxH, 57, 100, 200, 300 ); // map de humedad máxima para el diametro de la circunferencia que tendra cada valor
    // los maps de grupos de variables deben ser iguales, de otra forma frente al mismo valor hay resultados diferentes
    float maxH1 = map(maxH, 57, 100, 20, 30 ); // map de humedad máxima
    float mediaH = map(meanH, 62, 90, 12, 20 ); // map de humedad media
    float minH = map(minimaH, 17, 83, 5, 15 ); // map de humedad minima
    rotate(radians(PI));

    x = maxH2 * cos(0);
    y = maxH2 * sin(0);


    // los map se encuentran en el tamaño de los objetos
    stroke(162, 255, 197); // VERDE CLARO
    noFill();
    ellipse(x + rx3, y + ry3, maxH1, maxH1);

    stroke(99, 204, 109); // VERDE
    noFill();
    ellipse(x, y, mediaH, mediaH);

    stroke(100, 132, 204); // AZUL
    strokeWeight(3);
    noFill();
    ellipse(x + rx2, y + ry2, minH, minH);
  }

  void VIENTO(int a) {
    rectMode(CENTER);
    float maxV2 = map(maxV, 13, 134, 260, 350); // map de viento máximo para el diametro de la circunferencia que tendra cada valor
    rotate(radians(PI));

    x2 = maxV2 * cos(0);
    y2 = maxV2 * sin(0);

    blendMode(MULTIPLY);
    float maxV1 = map(maxV, 13, 134, 10, 40 );
    // los map se encuentran en el tamaño de los objetos
    strokeWeight(3);
    stroke(255, 128, 98); // NARANJO2
    noFill();
    pushMatrix();
    translate(x2, y2);
    rotateY(rot.y); // rotar en eje Y
    ellipse(a, a, maxV1, maxV1); //el valor "a" esta definido en la ventana catalinajueze
    popMatrix();
  }

  void VIENTO2(int b) {

    float maxV2 = map(maxV, 13, 134, 200, 240 ); // map de viento máximo para el diametro de la circunferencia que tendra cada valor
    rotate(radians(PI));

    x2 = maxV2 * cos(0);
    y2 = maxV2 * sin(0);

    float mediaH = map(meanV, 6, 21, 5, 10 );
    // los map se encuentran en el tamaño de los objetos
    strokeWeight(3);
    stroke(162, 255, 197); // VERDE CLARO
    noFill();
    pushMatrix();
    translate(x2, y2);
    rotate(rot2.y);
    rect(b, b, mediaH, mediaH); //el valor "b" esta definido en la ventana catalinajueze
    popMatrix();
  }

  void MOVER() {
    float maxV2 = map(maxV, 13, 134, 0.003, 0.35 );
    r += maxV2;
  }

  void MOVER2() {
    float mediaH = map(meanV, 6, 21, 0.0015, 0.1 );
    r2 += mediaH;
  }

  void movimiento() {  // aceleración para void VIENTO
    limiteVel = r; // limite velocidad
    rot.add(acel); // Sumamos la aceleración a nuestra rot
    rot.limit(limiteVel); // Definimos una velocidad limite
  }

  void movimiento2() {  // aceleración para void VIENTO2
    limiteVel2 = r2; // limite velocidad
    rot2.add(acel2); // Sumamos la aceleración a nuestra rot
    rot2.limit(limiteVel2); // Definimos una velocidad limite
  }
}

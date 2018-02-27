class Russia {
  int index, paso;
  int tmax, tmean, tmin, vmax, vmean, vmin, hmax, hmean, hmin, nubes;
  float x, y, an;

//Colores
  color pink = color(193, 78, 178);
  color green = color(138, 204, 51);
  color blue = color(77, 121, 156);
  color white = color(230, 230, 230);

  Russia(int index, int tmax, int tmean, int tmin, int vmax, int vmean, int vmin, int hmax, int hmean, int hmin, int nubes) {

    x = 0;
    y = 0;

    this.index = index;

    //Temperatura
    this.tmax = tmax;
    this.tmean = tmean;
    this.tmin = tmin;

    //Visibilidad
    this.vmax = vmax;
    this.vmean = vmean;
    this.vmin = vmin;

    //Humedad
    this.hmax = hmax;
    this.hmean = hmean;
    this.hmin = hmin;

    //Nubes
    this.nubes = nubes;
  }


  //TEMPERATURA
  //Temperatura máxima
  void tMax() {

    float d = map(tmax, -36, 30, 5, 42);
    pushMatrix();
    noStroke();
    fill(pink);
    ellipse(x, y, d, d);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //Temperatura media  
  void tMean() {

    float d = map(tmean, -37, 25, 5, 37);

    pushMatrix();
    noStroke();
    fill(green);
    ellipse(x, y, d, d);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //Temperatura mínima 
  void tMin() {

    float d = map(tmin, -40, 20, 5, 35);

    pushMatrix();
    noStroke();
    fill(blue);
    ellipse(x, y, d, d);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //Temperatura máxima círculo
  void tMAX() {

    float max = map(tmax, -36, 30, 10, 250);

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(270));
    rotate(radians(index * 360 / 365));
    stroke(pink);
    strokeWeight(1);
    line(200, 0, max, 0);
    popMatrix();
  }


  //Temperatura media círculo
  void tMEAN() {

    float mean = map(tmean, -37, 25, 10, 250);

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(270));
    rotate(radians(index * 360 / 365));
    stroke(green);
    strokeWeight(1);
    line(200, 0, mean, 0);
    popMatrix();
  }


  //Temperatura mínima círculo
  void tMIN() {

    float min = map(tmin, -40, 20, 10, 250);

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(270));
    rotate(radians(index * 360 / 365));
    stroke(blue);
    strokeWeight(1);
    line(200, 0, min, 0);
    popMatrix();
  }

  //VISIBILIDAD
  //Visibilidad máxima
  void vMax() {

    float v = map(vmax, 9, 19, 3, 20);

    pushMatrix();
    noStroke();
    fill(pink);
    rectMode(CENTER);
    ellipse(x, y, v, v);
    strokeWeight(2);
    stroke(white);
    point(x, y, 3);
    popMatrix();
  }

  //Visibilidad media  
  void vMean() {

    float v = map(vmean, 0, 19, 3, 20);

    pushMatrix();
    noStroke();
    fill(green);
    rectMode(CENTER);
    ellipse(x, y, v, v);
    strokeWeight(2);
    stroke(white);
    point(x, y, 3);
    popMatrix();
  }

  //Visibilidad mínima
  void vMin() {

    float v = map(vmin, 0, 19, 3, 20);

    pushMatrix();
    noStroke();
    fill(blue);
    rectMode(CENTER);
    ellipse(x, y, v, v);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //HUMEDAD
  //Humedad máxima
  void hMax() {

    float h = map(hmax, 60, 100, 3, 20);

    pushMatrix();
    noStroke();
    fill(pink);
    ellipse(x, y, h, h);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //Humedad media
  void hMean() {

    float h = map(hmean, 33, 100, 3, 20);

    pushMatrix();
    noStroke();
    fill(green);
    ellipse(x, y, h, h);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //Humedad mínima
  void hMin() {

    float h = map(hmin, 14, 92, 3, 20);

    pushMatrix();
    noStroke();
    fill(blue);
    ellipse(x, y, h, h);
    strokeWeight(2);
    stroke(white);
    point(x, y);
    popMatrix();
  }

  //NUBES
  void nubes() {

    float nub = map(nubes, 0, 8, 10, 200);

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(270));
    rotate(radians(index * 360 / 365));
    stroke(white);
    strokeWeight(1);
    line(200, 0, nub, 0);
    popMatrix();
  }


  //Grilla
  void dias(int paso) {
    for (int i = 0; i < r.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03, .4);  
        float factor1 = map(paso, 7, 182, 1, .6); 
        float factor2 = map(paso, 7, 182, .09, .1); 
        float factor3 = map(paso, 7, 182, .9, .9); 

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  //Círculo
  void circulo(int paso) {
    an = -PI / 2;
    for (int i = 0; i < r.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03, .4);  
        float factor1 = map(paso, 7, 182, 1, .6); 
        float factor2 = map(paso, 7, 182, .09, .1); 
        float factor3 = map(paso, 7, 182, .9, .9); 

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
}
// Rain = 1
// Thinderstorm = 2
// Fog = 3
class Javi {
  // variables
  int val, tmax, tmin, hmax, hmin, lluvia, vmax, evento;
  String fecha;
  float x, y, x2, y2, xMax, yMax, xMin, yMin, huMax, huMin, pos;

  // colores temperatura
  color fondo = color(71, 98, 105); // azul oscuro
  color cel = color(64, 167, 152); // celeste
  color ros = color(245, 225, 218); // rosado
  color gr = color(241, 241, 241); // gris claro

  // colores humedad
  color fondo2 = color(45, 70, 89); // azul oscuro
  color ve = color(129, 225, 218); // verde
  color am = color(253, 251, 218); // amarillo

  // constructor
  Javi(int val, int tmax, int tmin, int hmax, int hmin, int lluvia, 
    int evento, String fecha) {
    this.val = val;
    this.tmax = tmax;
    this.tmin = tmin;
    this.hmax = hmax;
    this.hmin = hmin;
    this.lluvia = lluvia;
    this.evento = evento;
    this.fecha = fecha;
  }

  // métodos
  // temperatura anual
  void tano() {
    pushMatrix();
    translate(width/2, height / 2); 
    rotate(PI+PI/2);
    float dval = map(val, 0, 365, 0, TWO_PI);
    float c1 = map(tmax, 22, 38, 200, 300);  
    float c2 = map(tmin, 15, 28, 200, 100);
    float c3 = map(lluvia, 0, 59.94, 0, 10);

    x = 203 * cos(dval);
    x2 = 197 * cos(dval);
    xMax = c1 * cos(dval);
    xMin = c2 * cos(dval);
    y = 203 * sin(dval);
    y2 = 197 * sin(dval);
    yMax = c1 * sin(dval);
    yMin = c2 * sin(dval);

    // tmax
    stroke(ros);
    strokeWeight(2);
    strokeCap(ROUND);
    line(x, y, xMax, yMax);

    // tmin
    stroke(cel);
    strokeWeight(2);
    strokeCap(ROUND);
    line(x2, y2, xMin, yMin);

    // lluvias
    noStroke();
    fill(gr);
    ellipse(x, y, c3, c3);
    popMatrix();
  }
// temperatura semestral
  void tsem() {
    pushMatrix();

    float c1 = map(tmax, 22, 38, 0, 70);
    float c2 = map(tmin, 15, 18, 70, 0);
    float c3 = map(lluvia, 0, 59.94, 0, 20);

    // semestre 1
    if (val <= 182) {
      pos = map(val, 0, 182, 20, width - 20); 
      translate(0, (height/3)+50);
      stroke(cel);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, 5, pos, c1);

      stroke(ros);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, -5, pos, c2);

      // lluvias
      noStroke();
      fill(gr);
      ellipse(pos, 0, c3, c3);
    }
    // semestre 2
    if (val >= 183) { 
      translate(0, (height*3/4)+50);
      pos = map(val, 183, 365, 20, width - 20); 
      stroke(cel);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, 5, pos, c1);

      stroke(ros);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, -5, pos, c2);

      // lluvias
      noStroke();
      fill(gr);
      ellipse(pos, 0, c3, c3);
    }
    popMatrix();
  }

// humedad anual
  void hano() {
    pushMatrix();
    translate(width/2, height / 2); 
    rotate(PI+PI/2);

    float dval = map(val, 0, 365, 0, TWO_PI);
    float c1 = map(hmax, 57, 100, 200, 300);  
    float c2 = map(hmin, 9, 77, 200, 100);

    x = 203 * cos(dval);
    x2 = 197 * cos(dval);
    xMax = c1 * cos(dval);
    xMin = c2 * cos(dval);
    y = 203 * sin(dval);
    y2 = 197 * sin(dval);
    yMax = c1 * sin(dval);
    yMin = c2 * sin(dval);

    // tmax
    stroke(am);
    strokeWeight(2);
    strokeCap(ROUND);
    line(x, y, xMax, yMax);

    // tmin
    stroke(ve);
    strokeWeight(2);
    strokeCap(ROUND);
    line(x2, y2, xMin, yMin);

    if (evento == 1) {
      fill(gr);
      noStroke();
      ellipse(x, y, 10, 10);
    }

    if (evento == 2) {
      noFill();
      strokeWeight(2);
      stroke(gr);
      ellipse(x, y, 20, 20);
    }

    if (evento == 3) {
      noFill();
      stroke(gr);
      strokeWeight(2);
      ellipse(x, y, 35, 35);
    }
    popMatrix();
  }

// humedad semestral
  void hsem() {
    pushMatrix();

    huMax = map(hmax, 57, 100, 0, 100);
    huMin = map(hmin, 9, 77, 100, 0);

    // semestre 1
    if (val <= 182) {
      pos = map(val, 0, 182, 20, width - 20); 
      translate(0, (height/3)+50);
      stroke(am);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, -5, pos, -huMax);

      stroke(ve);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, 5, pos, huMin);

      if (evento == 1) {
        fill(gr);
        noStroke();
        ellipse(pos, 0, 10, 10);
      }

      if (evento == 2) {
        noFill();
        strokeWeight(2);
        stroke(gr);
        ellipse(pos, 0, 25, 25);
      }

      if (evento == 3) {
        noFill();
        stroke(gr);
        strokeWeight(2);
        ellipse(pos, 0, 40, 40);
      }
    }
    // semestre 2
    if (val >= 183) { 
      translate(0, (height*3/4)+50);
      pos = map(val, 183, 365, 20, width - 20); 
      stroke(am);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, -5, pos, -huMax);

      stroke(ve);
      strokeWeight(1.5);
      strokeCap(ROUND);
      line(pos, 5, pos, huMin);

      if (evento == 1) {
        fill(gr);
        noStroke();
        ellipse(pos, 0, 10, 10);
      }

      if (evento == 2) {
        noFill();
        strokeWeight(2);
        stroke(gr);
        ellipse(pos, 0, 25, 25);
      }

      if (evento == 3) {
        noFill();
        stroke(gr);
        strokeWeight(2);
        ellipse(pos, 0, 40, 40);
      }
    }
    popMatrix();
  }
}
class Meses {
  int    nubes, minH, meanH, maxH, in, mes;
  color t, b, n, v, g, ro, am, e, h, k;
  String grande;
  float x, x1, x2, x3, y3, y, y1, y2, prec;

  //Constructor
  Meses (int in, float prec, int nubes, int maxH, int meanH, int minH, int mes) {
    //Declaración de variables
    this.minH = minH;
    this.meanH =meanH;
    this.maxH = maxH;
    this.in = in;
    this.mes = mes;
    rectMode(CENTER);


    this.t = color(63, 201, 188);
    this.v = color(159, 229, 125);
    this.b = color(255);
    this.n = color(0);
    this.g = color(225);
    this.ro = color(255, 0, 0);
    this.am = color(255, 255, 0);
  }
  void total() {

    if (mes == 1) {
      x = width * .15;
      y = height * .2;
      enero();
    } else if (mes == 2) {
      x = width * .38;
      y = height * .2;
      febrero();
    } else if (mes == 3) {
      x = width * .58;
      y = height * .2;
      marzo();
    } else if (mes == 4) {
      x = width * .78;
      y = height * .2;
      abril();
    } else if (mes == 5) {
      x = width * .15;
      y = height * .5;
      mayo();
    } else if (mes == 6) {
      x = width * .38;
      y = height * .5;
      junio();
    } else if (mes == 7) {
      x = width * .58;
      y = height * .5;
      julio();
    } else if (mes == 8) {
      x = width * .78;
      y = height * .5;
      agosto();
    } else if (mes == 9) {
      x = width * .15;
      y = height * .8;
      septiembre();
    } else if (mes == 10) {
      x = width * .38;
      y = height * .8;
      octubre();
    }
    else if (mes == 11) {
      x = width * .58;
      y = height * .8;
      noviembre();
    }
    else if (mes == 12) {
      x = width * .78;
      y = height * .8;
      diciembre();
    }
  }
  void enero() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void febrero() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void marzo() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void abril() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void mayo() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
    stroke(255);
  }
  void junio() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void julio() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void agosto() {
    stroke(t);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(5);
    stroke(v);
    ellipse(x, y, minH, minH);
    noFill();
    strokeWeight(0.5);
    stroke(b);
    ellipse(x, y, prec, prec);
  }
  void septiembre() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void octubre() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void noviembre() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(ro);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
  void diciembre() {
    stroke(t);
    strokeWeight(4);
    ellipse(x, y, maxH, maxH);
    noFill();
    strokeWeight(3);
    stroke(v);
    ellipse(x, y, meanH, meanH);
    noFill();
    strokeWeight(2);
    stroke(b);
    ellipse(x, y, minH, minH);
  }
}

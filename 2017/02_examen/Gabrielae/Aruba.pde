class Aruba {

  int  minT, maxT, meanT, in, dia, mes;
  float x, y, circ, an;
  color t, b, n, v, g, r, am, e, h, k;
  String grande;

//Constructor
  Aruba(int dia, int mes, int in, int minT, int maxT, int meanT) {
    
    // Declaración de variables
    x = 0;
    y = 0;
    rectMode(CENTER);
    this.in = in;
    this.dia = dia;
    this.mes = mes;
    this.minT = minT;
    this.meanT = meanT;
    this.maxT = maxT;


    this.t = color(63, 201, 188); 
    this.v = color(159, 229, 125); 
    this.b = color(255);
    this.n = color(0);
    this.g = color(225);
    this.r = color(255, 0, 0);
    this.am = color(255, 255, 0);
  }

  void temperatura() {
    float si = map(minT, 23, 28, 0, 1);  
    float sip = map(meanT, 26, 32, 0, 1);  
    float sipo = map(maxT, 29, 35, 0, 1);

    e = lerpColor(t, b, si);
    h = lerpColor(v, g, sip);
    k = lerpColor(r, am, sipo);

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));
    strokeWeight(2);
    stroke(b, 100);
    line(340, 0, si, 0);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));
    strokeWeight(2);
    stroke(am, 150);
    line(320, 0, sip, 0);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(in * 360 / 365));
    strokeWeight(2);
    stroke(r, 70);
    line(300, 0, sipo, 0);
    popMatrix();
  }
}
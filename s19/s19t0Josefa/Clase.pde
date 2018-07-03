class Clase {

  int index;

  float valor;
  float valorf;
  float valori;

  Clase (float valor, float valorf, float valori) {
    this.valor = valor;
    this.valorf = valorf;
    this.valori = valori;
  }

  void referentes() {
    ref1(a);
    ref2(b);
    ref3(c);
    ref4(d);
    ref5(e);
    ref6(f);
    txt();
  }

  void ref1(boolean a) {

    if (a) {

      for (int i = 0; i < 31; i++) {
        for (int j = 0; j < 7; j++) {
          fill(0);
          rect(40*i + 25, j * 80 + 100, valor, 20);
        }
      }
    }
  }

  void ref2 (boolean b) {

    if (b) {
      for (int i = 0; i < 365; i++) {
        pushMatrix();

        translate(width/2, height/2);
        rotate(radians(i * 365/360));
        stroke(0);
        line(valor, 0, valorf, 0);
        fill(255, 0, 0);
        noStroke();
        ellipse(valor, 0, 2, 2);
        ellipse(valorf, 0, 2, 2);

        popMatrix();
      }
    }
  }

  void ref3 (boolean c) {

    if (c) {

      for (int i = 0; i < 365; i++) {
        pushMatrix();

        translate(width/2, height/2);
        rotate(radians(i * 365/360));

        ellipse(random(50), 0, 2, 2);
        ellipse(random(50, 200), 0, 2, 2);
        popMatrix();
      }
    }
  }

  void ref4 (boolean d) {

    if (d) {
      for (int i = 0; i < 31; i++) {
        ellipse(i*40+40, height/2, valor, valor);
      }
    }
  }

  void ref5 (boolean e) {

    if (e) {

      for (int i = 0; i < 31; i++) {
        stroke(0);
        noFill();
        line(150+i * 30, 600, 150+i * 30, valorf);
        ellipse(150+i*30, valorf, 20, 20);
      }
    }
  }

  void ref6 (boolean f) {
    if (f) {
      for (int i = 0; i < 31; i++) {
        for (int j = 0; j < 7; j++) {
          fill(0);
          ellipse(40*i + 25, j * 80 + 100, valor, valor);
          fill(150);
          ellipse(40*i + 25, j * 80 + 100, valor-15, valor-15);
        }
      }
    }
  }

  void txt() {
    fill(0);
    
    text("teclas: 1, 2, 3, 4, 5, 6 para ver los referentes", 20, 20);
  }
}
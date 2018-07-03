class Propuestas {
  float x, y;
  PFont font;


  Propuestas() {
    font = createFont("Calibri-Bold", 40);
  }

  void eventos() {
    translate(width/2, height/2);
    fill(0);
    textSize(60);
    text("Enero", -620, -290);
    for (int i = 0; i < 31; i++) {
      float tam = 15;
      float a = map(i, 0, 31, 0, TWO_PI); // TWO_PI = 360 grados.
      pushMatrix();
      rotate(a);
      stroke(33, 25, 21);
      fill(150);
      ellipse(x, y + 110, 20, 20);
      line(x, y, 100, y);
      popMatrix();
    }
  }
  void marMes() {
    fill(0);
    textSize(60);
    text("Enero", 20, 70);

    for (int i = 0; i < 31; i++) {
      fill(62, 99, 127);
      line((31 + i*31), 90, (40 + i*31), 90);
      fill (65, 113, 176);
      line((31 + i*31), 390, (40 + i*31), 390);
    }
  }

  void humMes() {
    fill(0);
    textSize(60);
    text("Enero", 20, 70);
    for (int i= 0; i <31; i ++) {
      for (int j = 0; j <2; j++) {
        float x = map(i, 0, 3, 10, 132);
        float y = map(j, 0, 4, 130, 1000);
        fill (65, 113, 176);
        rect(x, y, 20, 50);
      }
    }
  }

  void eventosTrimestre() {
    fill(0);
    textSize(60);
    text("Segundo trimestre", 20, 70);
    for (int i = 0; i < 31; i++) {
      stroke(0);
      line((65 + i*31), 90, (65 + i*31), 190);
      stroke(65, 113, 176);
      line((65 + i*31), 190, (65 + i*31), 220);
      noStroke();
      fill(179, 113, 166);
      ellipse((65 + i*31), 220, 20, 20);
    }
  }

  void eventosMar() {
    fill(0);
    textSize(60);
    text("Segundo trimestre", 20, 70);
    for (int i = 0; i < 31; i++) {
      fill(145, 185, 197);
      ellipse((65 + i*31), 220, 20, 20);
      fill(145, 185, 197, 50);
      ellipse((65 + i*31), 600, 20, 20);
    }
  }

  void eventosHum() {
    fill(0);
    textSize(60);
    text("Segundo trimestre", 20, 70);
    for (int i= 0; i <31; i ++) {
      for (int j = 0; j <2; j++) {
        float x = map(i, 0, 3, 10, 132);
        float y = map(j, 0, 4, 130, 1000);
        fill(165, 144, 109);
        rect(x, y, 20, 20);
      }
    }
  }

  void todosDias() {
    fill(16, 119, 177);
    rect(0, 0, 1280, 700);
    fill(0);
    textSize(40);
    text("Febrero 2", 20, 70);
    text("Evento", 610, 120);
    fill(116, 133, 168);
    rect(0, 230, 1280, 20);
    fill(204, 202, 226);
    rect(0, 550, 1280, 20);
    fill(255, 255, 254);
    rect(0, 300, 70, 400);
    fill(195, 205, 220);
    rect(1210, 200, 70, 500);
    fill(50, 161, 192);
    rect(100, 650, 1075, 700);
    stroke(16, 65, 102);
    line(340, 0, 200, 1280);
  }
}

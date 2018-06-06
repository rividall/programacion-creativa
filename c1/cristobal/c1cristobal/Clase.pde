class Figura {
  float x; // En void rectangulo
  float y; //En void rectangulo
  float t; // Tamaño rectángulo
  float t2; //Tamaño rectángulo
  int a, s, d; // Variables de colores
  float r; // Utilizado en void pelotillas
  float r1; //Utilizado en void rectángulo
  float r2; //Utilizado en void rectángulo.
  int r3; // Utilizado en círculos alineados(void circulo)
  float r4; // Utilizado en void pelotillas
  float x1; //En void pelotillas
  float y1; //En void pelotillas
  float posx; //En void circulo
  float posy; //En void circulo
  float e; //En void circulo
  int qty;
  Figura() {
    x = 0;
    y = 0;
    t = 30;
    t2 = 70;
    x1 = 40;
    y1 = 45;
    posx = 25;
    qty = 60;
  }

  void rectangulo() { // varios rectángulos rotando en eje central(posición del mouse)

    translate (mouseX, mouseY);//centro posición del mouse
    pushMatrix();
    for (int i = 0; i < 5; i++) {
      rotate(r1);
      noFill();
      stroke(0, 255, 0);//Contorno verde
      rect(x, y, t+i * 70, t+i * 70);
      if (t == 30) {
        r1 += 0.1;
      }
    }
    popMatrix();
    for (int i = 0; i < 5; i++) {
      strokeWeight(2);
      rotate(r2);
      rect(x, y, t2+i * 60, t2+i * 60);
      if (t2 == 70) {
        r2 += 0.123;
      }
    }
  }

  // descripción
  void circulo() {
      // descripción
    if (mouseX > width/2 && mouseY < height/2) { //cuarta parte de arriba a la derecha
      posx = random(-50, 40);
      a = 255;
      s = 0;
      d = 0;
    }
    // descripción
    else if (mouseX > width/2 && mouseY > height/2) {//cuarta parte de abajo a la derecha
      posx = 30;
      a = 0;
      s = 0;
      d = 255;
    }
    // descripción
    else if (mouseX < width/2 && mouseY > height/2) {//cuarta parte de abajo a la izquierda
      posx = random(-100, 0);
      a = 199;
      s = 21;
      d = 133;
    }
    // descripción
    else if (mouseX < width/2 && mouseY < height/2) {//cuarta parte de arriba a la izquierda
      posx = 100;
      a = 17;
      s = 201;
      d = 196;
    }
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r3));
    r3++;
    // descripción
    for (int o = 0; o < qty; o++) {
      for (int i=0; i < 8; i++) {
        noStroke();
        fill(a, s, d);
        ellipse(posx + i * 20, 0, 10, 10);//una elipse alineada con otra.
      }
      rotate(radians(360/qty));
    }
    popMatrix();
  }

  // descripción
  void pelotillas() {
    translate(width/2, height/2);

    // descripción
    for (int p = 0; p < 2; p++) {
      for (int i = 0; i < 8; i++) {
        fill(255);//blanco
        noStroke();
        rotate(radians(r));
        ellipse(x1 + p*125, y1, 20, 20);
        r += 0.08;
      }
    }
    rotate(radians(r4));//rotación figuras rojas
    r4++;
    pushMatrix();

    // descripción
    for (int i = 0; i < 9; i++) {
      fill(255, 0, 0); //rojo
      noStroke();
      ellipse(x1 * -2, y1 * -2, mouseX/4, mouseY/4);
    }
    popMatrix();
  }
}

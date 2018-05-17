class Objeto {

  float x, y;
  float angle, r;
  float b;
  float v0, v1;
  int va1, va2;
  color cObjeto, c1, c2, c3, c4, c5, c;
  int g;
  int n;
  {
    va1 = 1;
    va2 = 0;
  }
  //variables

  Objeto(int o) {
    a = 0.0016; //Velocidad elipses
    b=11; //Distancia entre elipses
    m=1;
    v0=0;
    v1+= a * m;
    g = 1;
    l = 1;
    n = 3;
    c1 = color (0); //Negro
    c2 = color (208, 194, 150); //Dorado
    c3 = color (58, 65, 70); //Gris oscuro
    c4 = color (155, 162, 185); //Gris claro
    background (0);
    va1 = 1;
    va2 = 0;
  }

  void circulos(int va1) {
    if (va1 == 1) {

      background (0);

      for (int i = 0; i < 30; i++) {

        pushMatrix ();
        translate (width/2, height/2);

        v1 += a * m;
        float velocidad = map (i, 0, 29, v0, v1);
        angle = velocidad;
        r = i * b;
        x = r * cos (angle);
        y = r * sin (angle);

        noStroke();
        fill(208, 194, 150);
        ellipse (x, y, 15, 15);
        popMatrix ();
      }
      angle += 100;
    }
  }


  void arcos (int va2) {
    if (va2 == 1) {

      background(0);
      strokeWeight(5);
      stroke(255);

      noFill();

      g += n * l;

      arc(350, 350, 100, 100, radians(-g), radians(-g+30));
      arc(350, 350, 150, 150, radians(g), radians(g+60));
      arc(350, 350, 200, 200, radians(-g), radians(-g+90));
      arc(350, 350, 250, 250, radians(g), radians(g+120));
      arc(350, 350, 300, 300, radians(-g), radians(-g+150));
      arc(350, 350, 350, 350, radians(g), radians(g+180));
      arc(350, 350, 400, 400, radians(-g), radians(-g+210));
      arc(350, 350, 450, 450, radians(g), radians(g+240));
      arc(350, 350, 500, 500, radians(-g), radians(-g+270));
      arc(350, 350, 550, 550, radians(g), radians(g+300));
      arc(350, 350, 600, 600, radians(-g), radians(-g+330));
      arc(350, 350, 650, 650, radians(g), radians(g+350));

      arc(350, 350, 100, 100, radians(g), radians(g+330));
      arc(350, 350, 150, 150, radians(-g), radians(-g+300));
      arc(350, 350, 200, 200, radians(g), radians(g+270));
      arc(350, 350, 250, 250, radians(-g), radians(-g+240));
      arc(350, 350, 300, 300, radians(g), radians(g+210));
      arc(350, 350, 350, 350, radians(-g), radians(-g+180));
      arc(350, 350, 400, 400, radians(g), radians(g+150));
      arc(350, 350, 450, 450, radians(-g), radians(-g+120));
      arc(350, 350, 500, 500, radians(g), radians(g+90));
      arc(350, 350, 550, 550, radians(-g), radians(-g+60));
      arc(350, 350, 600, 600, radians(g), radians(g+30));
      arc(350, 350, 650, 650, radians(-g), radians(-g+10));
    }
  }
}
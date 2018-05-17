float x, y;
float angle, r;
float a, b, m;
float v0, v1;
//float amt;
color cObjeto, c1, c2, c3, c4;

void setup () {
  size(700, 700);
  background (c1);
  a = 0.0016; //Velocidad elipses
  b=11; //Distancia entre elipses
  m=1;
  v0=0;
  c1 = color (0); //Negro
  c2 = color (208, 194, 150); //Dorado
  //c3 = color (58, 65, 70); //Gris oscuro
  //c4 = color (155, 162, 185); //Gris claro
}

void draw () {

  background (c1);
  translate (width/2, height/2);

  for (int i = 0; i < 30; i++) {

    v1 += a * m;
    float velocidad = map (i, 0, 29, v0, v1);
    angle = velocidad;
    r = i * b;
    x = r * cos (angle);
    y = r * sin (angle);

    noStroke();
    fill(c2);
    ellipse (x, y, 15, 15);
  }


  angle += 100;
}

void keyPressed () {
  if (key == 'a') {
    m = -1;
  } else if (key == 'd') {
    m = 1;
  }
  if (key == 'w') {
    a += 0.0016 + 0.0002;
  } else if (key == 's') {
    a -= 0.0016 - 0.0002;
  }
}
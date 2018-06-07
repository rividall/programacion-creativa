// descripción general, autor, título

ArrayList<Objeto> objeto = new ArrayList<Objeto>();
Objeto o;

int var1, var2, var3;
int v0, v1;
float angle;
float p, q;
float x, y, a, b, m;
float u, d, l ,r;

void setup () {

  size (600, 600);
  background (0);
  for (int i = 0; i < 5; i++) {
    o = new Objeto(i);
    objeto.add(o);
  }
}

void draw () {
  if (var1 == 1) {
    o.lines(var1);
  }
  if (var2 == 1) {
    o.elipses1(var2);
  }
  if (var3 == 1) {
    o.elipses2(var3);
  }
}

void keyPressed () {
  if (key == '1') { //Se activa forma "lines" al presionar la tecla '1'
    background (0);
    var1 = 1;
    var2 = 0;
    var3 = 0;
  } else if (key == '2') { //Se activa forma "elipses1" al presionar la tecla '2'
    var1 = 0;
    var2 = 1;
    var3 = 0;
  }

  if (key == 'a') { // Cambia de dirección a la izquierda al presionar la tecla 'a'
    m = -1;
  } else if (key == 'd') { // Cambia de dirección a la derecha al presionar la tecla 'd'
    m = 1;
  }
  if (key == 'w') { // Aumenta la velocidad al presionar la tecla 'w'
    a += 0.0016 + 0.0002;
  } else if (key == 's') { // Disminuye la velocidad al presionar la tecla 's'
    a -= 0.0016 - 0.0002;
  }
}

void mousePressed (){
  if (mousePressed) { //Se activa forma "elipses2" al presionar el mouse
    var1 = 0;
    var2 = 0;
    var3 = 1;
  }
}

void mouseReleased () {
  if (!mousePressed) { //Se activa forma "elipses1" al soltar el mouse
    var1 = 0;
    var2 = 1;
    var3 = 0;
  }
}

//Universidad del Desarrollo - Programación creativa - Josefina Hidalgo
/*el sketch consta de tres figuras, un círculo de
 elipses, una flor de rectangulos y una grilla de cuadrados las cuales pueden
 adoptar diferentes movimientos según las teclas que se presionan, tecla 'd' se mueve
 hacia la derecha con retorno hacia el centro, tecla 'e' hacia la izq con retorno hacia el centro y tecla 'f' hacia
 abajo pasando de largo */
Objeto o;
boolean a, b, c;
boolean j, k, l, m;


void setup() {
  size (400, 400);
  o = new Objeto();
}

void draw() {
  background(255);
  o.forma(a, b, c);
  o.mov(j, k, l, m);
}

void keyPressed() {
  if (key == 'a') { //tecla a
    a = !a;
  }
  if (key == 'b') { //tecla b
    b = !b;
  }
  if (key == 'c') { //tecla c
    c = !c;
  }
  if (key == 'd') {//tecla d
    j = !j;
  }
  if (key == 'e') {//tecla e
    k = !k;
  }
  if (key == 'f') {//tecla f
    l = !l;
  }
  if (key == 'g'){
    m = !m;
  }
}

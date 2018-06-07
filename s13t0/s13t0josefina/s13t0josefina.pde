//Universidad del Desarrollo - Programación creativa - Josefina Hidalgo
/*El sketch consta de 4 objetos los cuales forman parte de una clase llamada “Forma” que se constituye de 3 métodos correspondientes a figura (elipse, rectángulo, cuadrado)
 que aparecen presionando  las teclas ‘1’, ‘2’ y ‘3’. Cada figura varía en tamaño y color dependiendo del objeto al que pertenecen.
 Por otro lado, las teclas ‘d’, ‘a’, ’s’, ‘w’ corresponde a los movimientos de las figuras en dirección (izquierda, derecha, abajo, arriba) que al tocar los bordes rebotan.
 Si no tienen activada la dirección especifica, solo rebotaran los de tamaño menor a 30 y el resto pasara de lado y volverán a aparecer en su otro extremo.
 */
ArrayList <Forma> lista = new ArrayList <Forma> ();
Forma f;
Forma g;
Forma h;
Forma p;
boolean a, b, c, j, k, l, m, n;

void setup() {
  size (400, 400);
  for (int i = 0; i < 6; i ++) {
    //Obj 1
    f = new Forma(random (5, 10), 0); //primer valor es tam y segundo relleno
    lista.add(f);
    //Obj 2
    g = new Forma(random (15, 25), 150); //primer valor es tam y segundo relleno
    lista.add(g);
    //Obj 3
    h = new Forma (random (28, 38), 208); //primer valor es tam y segundo relleno
    lista.add(h);
    //Obj 4
    p = new Forma (random (45, 50), 255); //primer valor es tam y segundo relleno
    lista.add(p);
  }
}

void draw() {
  background(255);
  for (Forma f : lista) {
    f.figura(a, b, c);
    f.mov(j, k, l, m, n);
  }
}

void keyPressed() {
  if (key == '1') { //aparecen elipses
    a = !a;
  }
  if (key == '2') { //aparecen rectangulos
    b = !b;
  }
  if (key == '3') { //aparecen cuadrados
    c = !c;
  }
  //movimiento
  if (key == 'd') {  // movimiento derecha
    j = !j;
  }
  if (key == 'a') {  //movimiento izq
    k = !k;
  }
  if (key == 's') {  //movimiento abajo
    l = !l;
  }
  if (key == 'w') { //movimiento arriba
    m = !m;
  }
  if (key == 'e') { //bordes
    n = !n;
  }
}

ArrayList<Objeto> lista = new ArrayList<Objeto>();
Objeto o;
int j, l;
void setup() {
  size(500, 500);
  for (int i = 0; i < 10; i++) {
    o = new Objeto();
    lista.add(o);
  }
}

void draw() {
  background(255);
  for (Objeto a : lista) {
    a.forma(j);
    a.mov(l);
  }
}

void keyPressed() {
  if (key == 'e') {
    j = 1;
  } 
  if (key == 'q' ) {
    j = 2;
  }

  if (key == 'd') { 
    l = 1;
  }
  if (key == 's') { 
    l = 2;
  }
  if (key == 'w') { 
    l = 3;
  }
  if (key == 'a') { 
    l = 4;
  }
}
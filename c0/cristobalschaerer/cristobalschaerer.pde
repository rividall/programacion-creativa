ArrayList<Objeto> lista = new ArrayList<Objeto>();
Objeto o;

void setup() {
  size(600, 400);
  for (int i=0; i<200; i++) {// inicia siendo 0 figuras, alcanzan a ser 200 maximo y se van sumando de a 1
    o = new Objeto(i);
    lista.add(o);
  }
}

void draw() {
  background(255);
  for (Objeto a : lista) {//
    a.pelotitas();
    a.movimiento();
    a.rebote();
  }

  if (frameCount % 60==0) {// cuando el resto de la division sea 0
    setup();//se reiniciará y volverá a ocurrir todo.
  }
}
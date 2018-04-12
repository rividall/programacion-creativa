ArrayList<Circulos> lista = new ArrayList<Circulos>();
Circulos c;

void setup () {
  size (600, 600);
  for (int i = 0; i<10; i++) {
    c = new Circulos();
    lista.add(c);
  }
}

void draw () {
  background (255);
  for (Circulos c : lista) {
    c.show();
    c.move();
    c.again();
  }
}
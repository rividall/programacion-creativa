



ArrayList < Objeto > lista = new ArrayList < Objeto > ();
Objeto o;

int inicio, fin;

void setup() {
	size(500, 500);
	int total = 500;
	for (int i = 0; i < total; i++) {
		float pos = map(i, 0, total, 0, height);
		o = new Objeto(10 + i, pos, 2);
		lista.add(o);
	}
    fin = lista.size();
}

void draw() {
	background(255);

    for (int i = inicio; i < fin; i ++) {
        // if (i % 5 == 0) {
            Objeto cualquiera = lista.get(i);
            cualquiera.forma();
            cualquiera.mov();
            cualquiera.borde();
        // }
    }

      // Objeto cualquiera = lista.get();
      // cualquiera.forma();
      // cualquiera.mov();
      // cualquiera.borde();


}

void keyPressed() {
    if (key == '+') {inicio ++;}
    if (key == '-') {fin --;}
}

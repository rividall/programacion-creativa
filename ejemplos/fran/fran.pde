// Profesor: Nicolás Troncoso @nicotron
// Programación Creativa
// Universidad del Desarrollo 2018

/*
Velocidad de rotación desde centro de la pantalla.
*/

ArrayList<Objeto> lista = new ArrayList<Objeto>();;
int total;

void setup() {
    size(600, 600);
    total = 10;
	for (int i = 0; i < total; i++) {
		Objeto o = new Objeto(i);
		lista.add(o);
	}
}

void draw() {
    background(255);

	translate(width/2, height/2);
	for(Objeto a : lista) {
		a.movimientoAngular();
		a.pos();
		a.cir();
	}
}

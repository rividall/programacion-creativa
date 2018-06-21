class Clase {
	String mes, dia;
	float maxima, minima, temp;
	PFont font;

	Clase(String mes, String dia, int maxima, int minima) {
		this.dia = dia;
		this.maxima = map(maxima, 0, 30, 0, 250);
		this.minima = map(minima, -9, 10, 0, 255);
		this.temp = this.maxima;
		font = createFont("Calibri-Bold", 32);
	}

    // agrupación de métodos de forma y texto
	void funcion() {
		dato();
		txt();
	}

    // crea una elipse con diámetro de temperatura máxima
	void dato() {
		stroke(255);
		strokeWeight(2);
		fill(255, 255, minima);
		ellipse(width / 2, height * .5, temp, temp);

	}

    // muestra en texto el mes y el día
	void txt() {
		fill(255);
		textFont(font);

		text("Enero", width * .1, height * .1);
		textSize(55);
		text(dia, width * .1, height * .2);
	}
}

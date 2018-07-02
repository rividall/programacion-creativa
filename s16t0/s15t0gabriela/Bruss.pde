class Bruss {
	String mes, dia;
	float maxima, minima, temp;
	PFont font;

	Bruss(String dia, String mes, int tempMax, int tempMin, int maxHum,
  int minHum, int maxSea, int minSea, int maxWind, int maxGust,
	int preci, int eve) {
		this.dia = dia;
		// this.mes = map(maxima, 0, 30, 0, 250);
		this.tempMax = map(minima, -9, 10, 0, 255);
		this.tempMin = map(minima, -9, 10, 0, 255);
		this.maxHum = map(minima, -9, 10, 0, 255);
		this.minHum = map(minima, -9, 10, 0, 255);
		this.maxSea = map(minima, -9, 10, 0, 255);
		this.minSea = map(minima, -9, 10, 0, 255);
		this.maxWind = map(minima, -9, 10, 0, 255);
		this.maxGust = map(minima, -9, 10, 0, 255);
		this.preci = map(minima, -9, 10, 0, 255);
		this.eve = map(minima, -9, 10, 0, 255);
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
void tempMax(){

}
void tempMin(){

}

void maxHum(){

}












}

// Programación creativa - UDD
// Examen
class Bruss {
	//  Se definen las variables globales y de que tipo son.
	String dia;
	float tempMax, tempMin, maxHum, minHum, maxSea, minSea, maxWind, maxGust,
	preci, eve, i, maxHum2, minHum2, preci2, maxViento, maxRafaga;
	color[] colores;
	int x, y, mes;
	String mesText, evento, trimestre;
	PFont font;

	Bruss(String dia, int mes, int tempMax, int tempMin, int maxHum,
		int minHum, int maxSea, int minSea, int maxWind, int maxGust,
		int preci, int eve, int i) {
		colores = new color[13];
		// Se definen los colores

		//Trimestres
		colores[0] = color(170, 178, 195); //max mar y min mar en meses, también
		// min mar en meses.
		colores[1] = color(170, 178, 195, 50); // min mar
		colores[2] = color(19, 43, 88); // max hum de trimestre y de meses, también
		// máx mar en meses.
		colores[3] = color(19, 43, 88, 50); // min hum
		colores[4] = color(187, 188, 198); // precipitación
		colores[5] = color(57, 109, 140); // viento

		// Por día
		colores[6] = color(16, 65, 102); // Linea viento y ráfaga
		colores[7] = color(224, 222, 155); // Precipitación
		colores[8] = color(195, 205, 220); // Temperatura máxima
		colores[9] = color(225, 255, 254); // Temperatura mínima
		colores[10] = color(116, 133, 168); // Nivel del mar máximo
		colores[11] = color(204, 202, 226); // Nivel del mar mínimo
		colores[12] = color(243, 241, 241); // Color de fondo

		// Decir que los datos se trabajaran con valores desde la clase.
		// Se mapean los datos.
		this.dia = dia;
		this.mes = mes;
		this.tempMax = map(tempMax, -4, 34, 0, 600); // todas las categorias deben
		//tener los mismos datos minimos y maximos.
		this.tempMin = map(tempMin, -4, 34, 0, 600);
		this.maxHum = map(maxHum, 5, 100, 700, 100);
		this.minHum = map(minHum, 5, 100, 700, 100);
		maxHum2 = map(maxHum, 5, 100, 0, 255); // Nuevos mapeos con la misma columna
		// de datos, para maperarlos con diferentes valores.
		minHum2 = map(minHum, 5, 100, 0, 255);
		this.maxSea = map(maxSea, 973, 1042, 700, 100);
		this.minSea = map(minSea, 973, 1042, 700, 100);
		this.maxWind = map(maxWind, 8, 55, 2, 20);
		maxViento = map(maxWind, 8, 55, 300, 600);
		this.maxGust = map(maxGust, 26, 84, 0, 255);
		maxRafaga = map(maxGust, 26, 84, 103, 178);
		this.preci = map(preci, 0, 2108, 50, 270);
		preci2 = map(preci, 0, 2108, 100, 350);
		this.i = i;
		font = createFont("Myriad Pro", 32); // Se llama a una tipografia del
		// computador y se le dice el tamaño.

		// Se declaran textos para los datos de la columna M
		if (mes == 1) mesText = "Enero";
		if (mes == 2) mesText = "Febrero";
		if (mes == 3) mesText = "Marzo";
		if (mes == 4) mesText = "Abril";
		if (mes == 5) mesText = "Mayo";
		if (mes == 6) mesText = "Junio";
		if (mes == 7) mesText = "Julio";
		if (mes == 8) mesText = "Agosto";
		if (mes == 9) mesText = "Septiembre";
		if (mes == 10) mesText = "Octubre";
		if (mes == 11) mesText = "Noviembre";
		if (mes == 12) mesText = "Diciembre";
		// Se declaran textos para los datos de la columna Events
		if (eve == 0) evento = " ";
		if (eve == 1) evento = "Fog";
		if (eve == 2) evento = "Fog - Rain";
		if (eve == 3) evento = "Fog - Rain - Snow";
		if (eve == 4) evento = "Fog - Rain - Thunderstorm";
		if (eve == 5) evento = "Fog - Snow";
		if (eve == 6) evento = "Rain";
		if (eve == 7) evento = "Rain - Hail";
		if (eve == 8) evento = "Rain - Hail - Thunderstorm";
		if (eve == 9) evento = "Rain - Snow";
		if (eve == 10) evento = "Rain - Thunderstorm";
	}

	// Se crea la visualización de días
	void porDia() {
		fill(0); // Color de texto
		textSize(30); // Tamaño de texto de meses
		text(mesText, 20, 30); // Se llama a los textos de meses y posición.
		text(dia, 200, 30); // Se llaman a los días y su posición.
		textSize(9); // Tamaño de texto para leyenda.
		// Formación de leyendas.
		text("LEFT and RIGHT para cambiar de día", 1115, 15);
		text("k para ver meses", 1200, 25);
		text("l para ver trimestres", 1184, 35);
		noStroke(); // las figuras no estan dibujadas con borde.
		fill(maxHum2, 174, 110); // El color varía en R, respecto a la humedad.
		rect(0, 0, 640, 700); // Rectángulo derecho, humedad máxima.
		fill(minHum2, 174, 110); // El color varía en R, respecto a la humedad.
		rect(640, 0, 640, 700); // Rectángulo izquierdo, humedad mínima.
		fill(colores[10]);
		rect(0, maxSea, width, 10); // Rectángulo nivel del mar máximo.
		fill(colores[11]);
		rect(0, minSea, width, 10); // Rectágulo nivel del mar mínimo.
		fill(colores[9]);
		rect(0, height, 50, -tempMin); // Rectáguno temperatura mínima.
		fill(colores[8]);
		rect(width, height, -50, -tempMax); // Rectángulo temperatura máxima.
		fill(colores[7]);
		rect(100, height, 1080, -preci); // Rectángulo precipitación
		strokeWeight(2); // Grosor de línea
		stroke(colores[6]);
		line(maxGust, 0, maxWind, height); // Línea. extremo de arriba, ráfaga
		//extremo inferior, velocidad del viento.
		// Formación de leyenda.
		fill(0);
		textSize(30);
		text(mesText, 20, 30);
		textSize(30);
		text(dia, 200, 30);
		textSize(9);
		text("LEFT and RIGHT para cambiar de día", 1115, 15);
		text("k para ver meses", 1200, 25);
		text("l para ver trimestres", 1184, 35);
	}

	// Se crea la visualización de meses
	void meses(int j) {
		// Formación de Leyenda
		noStroke();
		fill(colores[12]);
		rect(0, 0, 200, 50); // rectángulos para que los meses y la leyenda no se
		// vean todos los días del mes
		rect(1020, 0, width, 55);
		textSize(30);
		fill(0);
		text(mesText, 20, 30);
		textSize(9);
		text("1,2,3,4,5,6,7,8,9,0,q,w para cambiar de mes", 1075, 15);
		text("a, s y d para cambiar de dato", 1143, 25);
		text("d para ver días", 1206, 35);
		text("l para ver trimestres", 1182, 45);
		if (n == 0) { // Se le designaron estados a cada tipo de dato, para verlos
			// por separado.
			// Formación de "estrellas"
			pushMatrix();
			strokeWeight(.5); // Grosor de línea.
			translate(width / 2, height / 2); // Se traslada el orígen a la mitad del
			// canvas.
			float qty = msE - msS; // Variable para que cada estrella tenga todos los
			// días de su respectivo mes.
			rotate(radians(i * 360 / qty)); // los datos giran en torno al nuevo
			// orígen. Estan partidos por la cantidad de días del mes.
			stroke(180); // Color de línea.
			line(x, 0, x + preci, 0); // Posición de línea y tamaño de acuerdo a la
			// precipitation
			fill(maxGust); // variación de grices respecto a la ráfaga.
			noStroke();
			ellipse(preci, x, maxWind, maxWind); // Círculos de tamaño relacionadas
			// con la velocidad del viento.
			fill(0);
			textSize(10);
			text(evento, preci + 15, 0); // Texto de evento en torno al círculo, pero
			// con posición de preci + 15 para estar radialmente más alejado y en
			// proporción a las líneas de precipitation.
			popMatrix();
		} else if (n == 1) {
			stroke(colores[2]);
			strokeWeight(2);
			rect(j, maxSea, 10, 0); // Rectángulos muy pequeños mostrar el nivel
			// máximo del mar.
			stroke(colores[0]);
			rect(j, minSea, 10, 0); //  Rectángulos nivel mínimo del mar.
		} else if (n == 2) {
			noStroke();
			fill(colores[2]);
			rect(j - 5, maxHum, 5, 20); // Rectángulos nivel máximo de humedad.
			fill(colores[0]);
			rect(j - 5, minHum, 5, 20); // Rectángulos nivel mínimo de humedad.
		}
	}

	// Se crea la visualización de trimestres
	void trimestres(int tr, int trE) {
		if (tr == 0) trimestre = "Primer trimiestre"; // El primer trimestre parte
		// en el dia 0 y escribe "Primer trimstre".
		if (tr == 90) trimestre = " Segundo trimestre";
		if (tr == 181) trimestre = "Tercer trimestre";
		if (tr == 273) trimestre = "Cuarto trimestre";
		float x = map(i, tr, trE, 0, width); // Map para cantidad de días del
		// trimestre.
		// Se crea la leyenda
		noStroke();
		fill(colores[12]);
		rect(0, 0, 310, 50);
		rect(1020, 0, width, 55);
		fill(0);
		textSize(30);
		text(trimestre, 20, 30);
		textSize(9);
		text("z, x, c y v para cambiar de trimestre", 1112, 15);
		text("a, s y d para cambiar de dato", 1143, 25);
		text("d para ver días", 1206, 35);
		text("k para ver meses", 1197, 45);
		if (n == 0) { // Se le designaron estados a cada tipo de dato, para verlos
			// por separado.
			strokeWeight(3);
			stroke(colores[4]);
			line(x + 6, 80, x + 6, preci2); // Línea para mostrar precipitación.
			stroke(colores[5]);
			line(x + 6, 6 + preci2, x + 6, maxViento); // Líneas para mostrar el
			// viento, su posicion es preciitacion + 6 para que empiece cuando termine
			// el dato de precipitation y deje un pequeño espacio.
			fill(207, maxRafaga, 199); // Cambia entre rosados según la ráfaga
			noStroke();
			ellipse(x + 6, 72, 8, 8); // Círculos para ráfaga. No cambia según dato.
		}
		if (n == 1) {
			fill(colores[0]);
			ellipse(x + 6, maxSea, 10, 10); // Círculos de máximo nivel del mar.
			fill(colores[1]);
			ellipse(x + 6, minSea, 10, 10); // Círculos de mínimo nivel del mar.
		}
		if (n == 2) {
			fill(colores[2]);
			rect(x + 2, maxHum, 5, 5); // Rectángulos de máximo nivel de humedad.
			fill(colores[3]);
			rect(x + 2, minHum, 5, 5); // Rectángulos de mínimo nivel de humedad.

		}
	}
}

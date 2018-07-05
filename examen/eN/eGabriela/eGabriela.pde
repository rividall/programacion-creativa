// Nombre
// Programación creativa - UDD
// Examen

/*
Descripción general y uso.
*/
Bruss[] objetos;
Table tabla;
int index, n;
int dias = 1;
int meses = 0;
int trimestres = 0;
int trS, msS, k;
int trE = 89;
int msE = 30;

void setup() {
	size(1280, 700);
	frameRate(5);
	//  Se cargar la base de datos con el parámetro de cabecera.
	tabla = loadTable("Brussels_Belgium_Examen.csv", "header");

	// Se inicia el array con la cantidad de filas del archivo.
	int total = tabla.getRowCount();
	objetos = new Bruss[total];

	// Con un contador podemos pasar por cada fila del archivo
	for (int i = 0; i < tabla.getRowCount(); i++) {
		// Creamos un nuevo objeto del tipo TableRow con la información de cada fila.
		TableRow row = tabla.getRow(i);
		// Una variable del constructor - por cada variable del dato.
		String dia = row.getString("D");
		int mes = row.getInt("M");
		int tempMax = row.getInt("Max TemperatureC");
		int tempMin = row.getInt("Min TemperatureC");
		int maxHum = row.getInt("Max Humidity");
		int minHum = row.getInt("Min Humidity");
		int maxSea = row.getInt("Max Sea Level PressurehPa");
		int minSea = row.getInt("Min Sea Level PressurehPa");
		int maxWind = row.getInt("Max Wind SpeedKm/h");
		int maxGust = row.getInt("Max Gust SpeedKm/h");
		int preci = row.getInt("Precipitationmm");
		int eve = row.getInt("Events");

		// Con esas variables construyo un objeto y llevo el index con i.
		objetos[i] = new Bruss(dia, mes, tempMax, tempMin, maxHum, minHum,
			maxSea, minSea, maxWind, maxGust, preci, eve, i);
	}
}

void draw() {
	background(243, 241, 241);
	if (meses == 1) {
		k = msS; // Se inicia con el comienzo del mes.
		for (int i = width / (msE - msS) - 20; i < width; i += width / (msE - msS)) {
			// Se declara la posición que tendran los objetos, contando los días de
			// su respectivo mes.
			objetos[k].meses(i); // Se llama al void meses.
			k++; // Se recorre por toda la lista del mes.
			if (k > msE) k = msS; // Si el número es mayor que el fin, se comienza a
			// contar de nuevo. Recorriendo todos los meses.
		}
	}

	if (dias == 1) {
		objetos[index].porDia(); // Se llama al void porDia.
	}

	if (trimestres == 1) {
		for (int i = trS; i < trE; i++) { // Se recorre entre todos los días de un
			// trimestre.
			objetos[i].trimestres(trS, trE); // Se llama al void trimestres.
		}
	}
}

// se cambia de visualizacion, a ver por dia, meses y trimestres
// Se ven todos los meses y trimestres por separado
// Hay 3 tipos de datos por meses y por trimestres.
void keyPressed() {
	if (key == 'k') {
		meses = 1;
		dias = 0;
		trimestres = 0;
	}
	if (key == 'j') {
		meses = 0;
		dias = 1;
		trimestres = 0;
	}
	if (key == 'l') {
		meses = 0;
		dias = 0;
		trimestres = 1;
	}
	if (key == 'a') {
		n = 0;
	}
	if (key == 's') {
		n = 1;
	}
	if (key == 'd') {
		n = 2;
	}
	if (key == 'z') {
		trS = 0;
		trE = 89;
	}
	if (key == 'x') {
		trS = 90;
		trE = 180;
	}
	if (key == 'c') {
		trS = 181;
		trE = 272;
	}
	if (key == 'v') {
		trS = 273;
		trE = 364;
	}

	if (key == '1') { // Enero
		msS = 0;
		msE = 30;
	}
	if (key == '2') { // Febrero
		msS = 31;
		msE = 58;
	}
	if (key == '3') { // Marzo
		msS = 59;
		msE = 89;
	}
	if (key == '4') { // Abril
		msS = 90;
		msE = 119;
	}
	if (key == '5') { // Mayo
		msS = 120;
		msE = 150;
	}
	if (key == '6') { // Junio
		msS = 151;
		msE = 180;
	}
	if (key == '7') { // Julio
		msS = 181;
		msE = 211;
	}
	if (key == '8') { // Agosto
		msS = 212;
		msE = 242;
	}
	if (key == '9') { // Septiembre
		msS = 243;
		msE = 272;
	}
	if (key == '0') { // Octubre
		msS = 273;
		msE = 303;
	}
	if (key == 'q') { // Noviembre
		msS = 304;
		msE = 333;
	}
	if (key == 'w') { // Diciembre
		msS = 334;
		msE = 364;
	}
	if (keyCode == RIGHT) { // Cuando index es mayor a 364 (Diciembre 31) parte
		//  desde el comenzo (Enero 1).
		if (index >= 364) {
			index = 0;
		} else {
			index++; // Avanza
		}
	}
	if (keyCode == LEFT) { // Cuando index es menor a 0 (Enero 1) recorre hacia
		//  atrás (Diciembre 31).
		if (index <= 0) {
			index = 364;
		} else {
			index--; // Retrocede
		}
	}
}

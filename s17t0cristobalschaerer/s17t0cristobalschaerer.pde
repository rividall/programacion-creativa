// Array de objetos
Clase[] objetos;
Table tabla;
int index;

void setup() {
	size(1280, 800);
	// cargar la base de datos con el parámetro de cabecera
	// no es necesario la ruta /data, Processing lee por defecto
	tabla = loadTable("Basedatosvaldivia.csv", "header");

	// inicalizamos el array con la cantidad de filas del archivo
	int total = tabla.getRowCount();
	objetos = new Clase[total];

	// lo mismo se puede escribir en una línea de código
	// objetos = new Clase[tabla.getRowCount()];

	// Con un contador podemos pasar por cada fila del archivo
	for (int i = 0; i < tabla.getRowCount(); i++) {
		// Creamos un nuevo objeto del tipo TableRow con la información de cada fila
		TableRow row = tabla.getRow(i);

		// Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor
		// La paridad debe ser exacta en caracteres
		// Una variable del constructor - por cada variable del dato (que queramos)
		String mes = row.getString("M");
		String dia = row.getString("D");
		int maxima = row.getInt("Max TemperatureC");
		int media = row.getInt("Mean TemperatureC");
		int minima = row.getInt("Min TemperatureC");
		int minHum = row.getInt("Min Humidity");
		int maxHum = row.getInt("Max Humidity");
		int meanHum = row.getInt("Mean Humidity");
		int promanualtmax = row.getInt("promATmax");
		int promanualtmin = row.getInt("promATmin");
		int promhummes = row.getInt("promhumes");
		int promtmeanmes = row.getInt("promtmeanmes");
 		int dirViento = row.getInt("WindDirDegrees");
		int dewmax = row.getInt("Dew PointC");
		int dewmean = row.getInt("MeanDew PointC");
		int dewmin = row.getInt("Min DewpointC");
		int meanviento = row.getInt("Mean Wind SpeedKm/h");

		// Con esas variables construyo un objeto
		objetos[i] = new Clase(mes, dia, maxima, media, minima,minHum, maxHum, meanHum,promanualtmax,promanualtmin, promtmeanmes, dirViento, dewmax, dewmean, dewmin, meanviento);
	}
	// String[] fontList = PFont.list();
	// printArray(fontList);
	background(253);
}

void draw() {
	background(0,0,244);
	// Uso de los objetos como siempre
	// for (int i = 0; i < objetos.length; i ++) {
	  objetos[index].funcion(index);
	// }


}

void keyPressed() {
    if(index > 365) {
        index = 0;
    } else if (index < 365){
        index++;
    }
}

// Array de objetos
Clase[] objetos;
Table tabla;
int index;

void setup() {
	size(600, 600);
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


		// Con esas variables construyo un objeto
		objetos[i] = new Clase(mes, dia, maxima, media, minima);
	}
	// String[] fontList = PFont.list();
	// printArray(fontList);
	background(253);
}

void draw() {
	background(0,255,0);
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

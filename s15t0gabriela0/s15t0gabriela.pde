// Array de objetos
Bruss [] objetos;
Bruss b;

Table tabla;
//int index;
int meses = 1;
int todos = 0;
int estaciones = 0;

void setup() {
	size(1400, 780);
	// cargar la base de datos con el parámetro de cabecera
	// no es necesario la ruta /data, Processing lee por defecto
	tabla = loadTable("Brussels_Belgium_Examen.csv", "header");

	// inicalizamos el array con la cantidad de filas del archivo
	int total = tabla.getRowCount();
	objetos = new Bruss[total];

	// lo mismo se puede escribir en una línea de código
	// objetos = new Clase[tabla.getRowCount()];

	// Con un contador podemos pasar por cada fila del archivo
	for (int i = 0; i < tabla.getRowCount(); i++) {
		// Creamos un nuevo objeto del tipo TableRow con la información de cada fila
		TableRow row = tabla.getRow(i);



		// Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor
		// La paridad debe ser exacta en caracteres
		// Una variable del constructor - por cada variable del dato (que queramos)
		String dia = row.getString("D");
		String mes = row.getString("M");
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


		// Con esas variables construyo un objeto
		objetos[i] = new Bruss (dia, mes, tempMax, tempMin, maxHum, minHum,
    maxSea, minSea, maxWind, maxGust, preci, eve, i);
	}
	// String[] fontList = PFont.list();
	// printArray(fontList);

}

void draw() {
	background(243, 241, 241);
	// Uso de los objetos como siempre
	// for (int i = 0; i < objetos.length; i ++) {

if(meses == 1){
  objetos[36].funcion();
}

if(todos == 1){
	for(int i = 0; i<30;i++){}
  objetos[2].porDia();
}
}
  //  objetos[index].dato();	asi se pueden llamar diferentes void
	// }


//}
/*
void keyPressed() {
    if(index > 3) {
        index = 0;
    } else if (index < 3){
        index++;
    }
}  */

// se cambia de visualizacion, a ver por dia, meses y estaciones del año
void keyPressed(){
	if (key == 'm'){
		meses = 1;
		todos = 0;
		estaciones = 0;
	}
	if (key == 't'){
		meses = 0;
		todos = 1;
		estaciones = 0;
	}
	if (key == 'e'){
		meses = 0;
		todos = 0;
		estaciones = 1;
	}

}

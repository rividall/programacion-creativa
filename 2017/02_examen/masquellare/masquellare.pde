// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Josefina Squella R.T
// Examen
/*El examen consiste en la visualización de datos del clima, específicamente una ciudad
(Bruselas) durante un período de un año. Desde lo más general como la visualización de
todo el año a través de una variable del dato, hasta lo más particular como cada día con
toda la información que contiene.*/
// No hay información de la interacción
//CLases
Variable[] objetos;
Mes[] m;
//Variables
int visualiza;
Table tabla;
PFont bulky,din;

void setup() {
  size(1300, 600);
  //Valorizan las variables.
  visualiza = 0;
  // Se llama a la Base de datos, y se ingresa a cada clase.
  tabla = loadTable("Brussels_Belgium.csv", "header");
  objetos = new Variable[tabla.getRowCount()];
  m = new Mes[tabla.getRowCount()];
  bulky = loadFont("Mathlete-Bulky-48.vlw");
  din = loadFont("DIN-RegularAlternate-48.vlw");

//Se declaran las columas que se utilizan.
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    float mes = row.getFloat("Mes");
    float maxima = row.getFloat("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");

    float humedad = row.getFloat("Max Humidity");
    float viento = row.getFloat(" Max Wind SpeedKm/h");
    float lluvia = row.getFloat("Precipitationmm");
    float dirviento = row.getFloat("WindDirDegrees");

//Se inician los array de las siguientes clases:
    objetos[i] = new Variable(mes, maxima, minima, humedad, viento, lluvia, i);
    m[i] = new Mes(mes, lluvia, i, viento, dirviento, humedad);
  }
}


void draw() {
  background(#E6D8C0);
  //Si el valor de la variable visualiza es 0 se inician las siguientes funciones:
  // Interacción con el keyPressed.
  if (visualiza == 0) {
    objetos[1].leyendaano();
    for (int i = 0; i < objetos.length; i++) {
      objetos[i].singular();
    }
  }
 //Si el valor de la variable visualiza es 2 se inician las siguientes funciones:
  // Interacción con el keyPressed.
  if (visualiza == 2) {
    m[1].leyendames();
    for (int i = 0; i < objetos.length; i++) {
      m[i].mes1();
    }
  }
 //Si el valor de la variable visualiza es 3 se inician las siguientes funciones:
  // Interacción con el keyPressed.
  if (visualiza == 3) {
    m[1].leyendasemestre();
    m[1].leyendaprimersem();
    for (int i = 0; i < objetos.length; i++) {
      m[i].semestre();
    }
  }
   //Si el valor de la variable visualiza es 4 se inician las siguientes funciones:
  // Interacción con el keyPressed.
  if (visualiza == 4) {
    m[1].leyendasemestre();
    m[1].leyendasegsem();
    for (int i = 0; i < objetos.length; i++) {
      m[i].segundos();
    }
  }

//Se escribe el título: Bruselas.

  textSize(50);
  fill(#8EB0A7);
  textFont(bulky);
  text("Bruselas", 1020, 90);
  textFont(din);
}

void keyPressed() {
  /*si la letra especificada se activa, una funcion especifica(declarada anteriormente
  se activa*/
  if (key == 'a') {
    background(#E6D8C0);
    visualiza = 0;
  }
  if (key == 's') {
    background(#E6D8C0);
    visualiza = 2;
  }
  if (key == 'd') {
    background(#E6D8C0);
    visualiza = 3;
  }
  if (key == 'f') {
    background(#E6D8C0);
    visualiza = 4;
  }
}

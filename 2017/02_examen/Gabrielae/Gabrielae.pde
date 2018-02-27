// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// Gabriela Navarro Risopatrón
// Gabrielae

/*El examen consiste en la visualización de datos del clima,
específicamente de Aruba durante el período de un año.
Lo más general es la visualización de datos de la temperatura,

Todo esto que está descrito, no ocurre.
No se supo escribir de correcta manera, constructores, y parear los tipos de variable con la base de datos.
Para luego crear un comentario para validar el error.

para luego
enfocarnos en la humedad por cada mes (mayor humedad, media humedad y menor humedad),
hay meses en los cuales no se manifiestan cambios tan bruscos y por esto no
aparecen en la visualización.*/


//Declacración de Clases
Aruba [] clima;
Meses [] humedad;

//Declaración de variables
Table tabla;
PFont grande, chico;
int   z2, z3, c;


void setup() {
  size(1000, 800);
  background(0);

  //Variables
  c= 1;

  tabla = loadTable("Aruba.csv", "header");
  clima = new Aruba[tabla.getRowCount()];
  humedad = new Meses[tabla.getRowCount()];


  //Tipografía
  grande= createFont("HelveticaNeue-Bold", 20);
  chico = createFont("HelveticaNeue-Light ", 15);

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int in = i;
    TableRow fila = tabla.getRow(i);
    // Fecha
    int dia = fila.getInt("AST");
    int mes = fila.getInt("AST");

    //Temperatura
    int maxT = fila.getInt("MaxT");
    int meanT = fila.getInt("MeanT");
    int minT = fila.getInt("MinT");

    //Humedad
    int minH = fila.getInt("MinH");
    int meanH = fila.getInt("MeanH");
    int maxH = fila.getInt("MaxH");

    //Nubes
    int nubes = fila.getInt("CloudCover");
    //Precipitación

    int prec = fila.getInt("Precipitation");

    z2 = 180;
    z3 = 51;

    clima[i] = new Aruba(dia, mes, in, maxT, meanT, minT);
    humedad[i] = new Meses(prec, in, minH, meanH, maxH, nubes, mes);
  }
}

void draw() {

  if (c == 2) {
    background(0);
    textFont(chico);
    fill(255);
    text("Meses", 30, 45);
    text("Humedad", 30, 60);
    text("Aruba, 2015", 30, 30);
    text("Teclas a, b", 500, 780);
    text("Gabriela Navarro", 850, 770);
    text("Turqueza : Máxima Humedad", 30, 740);
    text("Verde : Media Humedad ", 30, 760 );
    text("Blanco: Mínima Humedad ", 30, 780);
  }

  if (c == 1) {
    background(0);
    textFont(chico);
    fill(255);
    text("Año", 30, 45);
    text("Temperatura", 30, 60);
    text("Aruba, 2015", 30, 30);
    text("Teclas a, b", 500, 780);
    text("Gabriela Navarro", 850, 770);
    text("Líneas Blancas : Máxima Temperatura", 30, 740);
    text("Líneas Amarillas : Media Temperatura ", 30, 760 );
    text("Líneas Rojas : Mínima Temperatura ", 30, 780);
  }



  for (int i = 0; i < humedad.length; i++) {
    if (c == 2) {


      humedad[i].total();
    }
  }

  for (int j = 0; j < clima.length; j++) {
    if (c == 1) {
      clima[j].temperatura();
    }
  }
}

void keyPressed() {

  if (key == 'a') {
    c = 1;
    z3 = 51;
  }

  if (key == 'b') {
    c = 2;
    z2 = 180;
  }
}

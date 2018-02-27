//Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre
//Expresión Digital II - Eduardo García Cave.

//Programa: El programa consiste en la visualización de datos del clima en Nukus, Uzbekistan, durante un período de un año.
//Con la tecla '1' se observan las temperaturas de todo el año subiendo(temperaturas máximas) y bajando(temperaturas mínimas),
//cambiando su tamaño según la humedad media de cada día. Puedes ver toda la leyenda manteniendo clickeado.
//Con la tecla '2' tenemos una visualización detallada de cada día, avanzando y retrocediendo con las teclas 'a' y 'd' podemos
//ver el viento, humedades mínimas y máximas, fecha y evento representado por una animación de fondo.



ArrayList<Lluvia> particles;  // Se declaran los arrays de la lluvia y la niebla.
ArrayList<Niebla> nieblitas;

Datos[] objetos;             // Clase que contiene la base de datos.
int z;                       // Variables globales.
boolean a = true;
int quantity = 400;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] direction = new int[quantity];
int minFlakeSize = 2;
int maxFlakeSize = 6;

Table tabla;  // Se declara la tabla de la base de datos.

void setup() {

  size(700, 500);  // Tamaño canvas.
  smooth();

  particles = new ArrayList(); // Se llama al ArrayList de la lluvia.

  nieblitas = new ArrayList(); // Se llama al ArrayList de la niebla.


  tabla = loadTable("Nukus_Uzbekistan.csv", "header"); // Se llama a la tabla, la base de datos.


  objetos = new Datos[tabla.getRowCount()]; // Se lee la base de datos.

  for (int i = 0; i < quantity; i++) {      // Se inician las variables de la nieve.
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
  }


  for (int i = 0; i < tabla.getRowCount(); i++) {   // Se leyendo las filas de 1 en 1 cuando se acaban los datos este para de leer.

    TableRow row = tabla.getRow(i);  // Creamos un nuevo objeto del tipo TableRow con la información de cada fila.

    //Se vinculan los datos con el constructor.
    String fecha = row.getString("fecha");
    String eventos = row.getString(" Events");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int media = row.getInt("Mean TemperatureC");
    int nubes = row.getInt(" CloudCover");
    int humedad = row.getInt(" Mean Humidity");
    int viento = row.getInt(" Mean Wind SpeedKm/h");
    int minhumedad = row.getInt(" Min Humidity");
    int maxhumedad = row.getInt("Max Humidity");

    // Con esas variables construyo un objeto.
    objetos[i] = new Datos(fecha, maxima, minima, media, eventos, nubes, humedad, viento, minhumedad, maxhumedad);
  }
}

void draw() {

  background(255); // Color de fondo.

  if (a == true) {  //Si boolean a es verdadera ocurre...

    for (int i = 0; i < objetos.length; i ++) { // ... la lectura de todas las funciones que se
      //dibujan en la primera visualización.
      objetos[i].mediamantiene();  // la temperatura media se ve representada por lineas.
      objetos[i].minimacae();      // Se dibuja la mínima.
      objetos[i].maximasube();     // Se dibuja la máxima.
      objetos[i].run();            // Velocidad.
      objetos[i].simbolos();       // Se dibujan los símbolos de la leyenda.
      objetos[i].leyenda();        // Se ve manteniendo clickeado.
    }
  }


  if (z>364) {   //Si se llega al ultimo dato vuelve al primero.
    z=0;
  }

  if (z<0) {   //Si el primer dato resta 1, vuelve al último.
    z=364;
  }

  if ( a == false) {  //Si boolean a es falsa ocurre...
    objetos[z].clima();// ... se dibuja lo que se ve en la segunda visualización.
    textSize(10);  // tamaño de texto.
    fill(#4B00FF);
    text("Humedad Mínima", 5, 15); // Texto.
    fill(#FF0011);
    text("Humedad Máxima", 605, 15);
    stroke(#4B00FF);
    strokeWeight(1);
    for (int i = 0; i < 500; i = i+=50) {  //Se dibujan las líneas de la mínima.
      line(0, i, 20, i);
    }
    stroke(#FF0011);
    for (int i = 0; i < 500; i = i+=50) { //Se dibujan las líneas de la máxima.
      line(680, i, 700, i);
    }
  }
}


void keyPressed() {

  if (key =='1') { // Con tecla '1', boolean a es verdadero y se ve la primera visualización.
    a=true;
  }
  if (key =='2') { // Con tecla '2', boolean a es falso y se ve la segunda visualización.
    a= false;
  }

  if (key =='d') { // Con tecla '2', se avanza en un día en la segunda visualización.
    z++;
  }
  if (key =='a') { // Con tecla '2', se retrocede en un día en la primera visualización.
    z--;
  }
}

//Expresión Digital II - Diseño Digital UDD - 2017
//Paulina Descouvieres
//palyE

/*
Al ejecutar el programa se ve la pantalla inicial indicando la ciudad, país y año a
visualizar, Raduzhnyj, Russia y 2015, respectivamente.
En la parte inferior se indica qué tecla se debe apretar para seguir.
El programa cuenta con 5 visualizaciones, las cuales están dictadas por la interacción
con las teclas '1', '2', '3', '4' y '5'.

En la pantalla '1' se visualiza la temperatura durante el año.
En la pantalla '2' se visualiza la misma temperatura, pero separadas por mes.
En la pantalla '3' se visualiza la cobertura por nubes.
En la pantalla '4' se visualiza la visibilidad, separadas por semanas.
En la pantalla '5' se visualiza la humedad, separadas por estaciones.

Los colores rosa, verde y azul indican los valores máximos, medios y mínimos,
respectivamente, en las pantallas '1', '2', '4' y '5'.
*/


Russia [] r;

//Datos
Table tabla;
//Texto
PFont ciudad, pais, datos;

int fila;
int cambio;
int cd = 92;

void setup() {
  size(1200, 600);
  background(50);

  tabla = loadTable("RADUZHNYJ_Russia.csv", "header");
  ciudad = createFont("BebasNeueRegular", 54);
  pais = createFont("BebasNeueBook", 40);
  datos = createFont("BebasNeueLight", 20);

  //Inicio
  cambio = 0;

  r = new Russia[tabla.getRowCount()]; 

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int index = i;
    TableRow fila = tabla.getRow(i);

    //Temperatura
    int tmax = fila.getInt("Max TemperatureC");
    int tmean = fila.getInt("Mean TemperatureC");
    int tmin = fila.getInt("Min TemperatureC");

    //Visibilidad
    int vmax = fila.getInt(" Max VisibilityKm");
    int vmean = fila.getInt(" Mean VisibilityKm");
    int vmin = fila.getInt(" Min VisibilitykM");

    //Humedad
    int hmax = fila.getInt("Max Humidity");
    int hmean = fila.getInt(" Mean Humidity");
    int hmin = fila.getInt(" Min Humidity");

    //Nubes
    int nubes = fila.getInt(" CloudCover");

    r[i] = new Russia(index, tmax, tmean, tmin, vmax, vmean, vmin, hmax, hmean, hmin, nubes);
  }
}

void draw() {
  background(50);

  //Texto inicial
  pushMatrix();
  textFont(ciudad);
  textAlign(CENTER, CENTER);
  text("RADUZHNYJ", width / 2, height / 2);

  textFont(pais);
  textAlign(CENTER, CENTER);
  text("Russia, 2015", width / 2, (height / 2) + 40);

  textFont(datos);
  textAlign(CENTER, CENTER);
  text("(Presionar  'ESPACIO')", width / 2, height - 20);
  popMatrix();

  if (cambio == 1) {
    background(50);
    textFont(datos);
    fill(253);
    text("TEMPERATURA", 50, 20);
    text("Máxima = Rosa", 50, 40);
    text("Media = Verde", 50, 60);
    text("Mínima = Azul", 50, 80);

    textFont(datos);
    textAlign(CENTER, CENTER);
    text("(keyPressed = 1, 2, 3, 4, 5)", width / 2, height - 20);
  }

  if (cambio == 2) {
    background(50);
    textFont(datos);
    fill(253);
    text("TEMPERATURA", 50, 20);
    text("POR MES", 50, 40);
    text("Máxima = Rosa", 50, 60);
    text("Media = Verde", 50, 80);
    text("Mínima = Azul", 50, 100);

    textFont(datos);
    textAlign(CENTER, CENTER);
    text("(keyPressed = 1, 2, 3, 4, 5)", width / 2, height - 20);
  }

  if (cambio == 3) {
    background(50);
    textFont(datos);
    fill(253);
    text("NUBES", 50, 20);

    textFont(datos);
    textAlign(CENTER, CENTER);
    text("(keyPressed = 1, 2, 3, 4, 5)", width / 2, height - 20);
  }

  if (cambio == 4) {
    background(50);
    textFont(datos);
    fill(253);
    text("VISIBILIDAD", 50, 20);
    text("POR SEMANA", 50, 40);
    text("Máxima = Rosa", 50, 60);
    text("Media = Verde", 50, 80);
    text("Mínima = Azul", 50, 100);

    textFont(datos);
    textAlign(CENTER, CENTER);
    text("(keyPressed = 1, 2, 3, 4, 5)", width / 2, height - 20);
  }

  if (cambio == 5) {
    background(50);
    textFont(datos);
    fill(253);
    text("HUMEDAD", 50, 20);
    text("POR ESTACIÓN", 50, 40);
    text("Máxima = Rosa", 50, 60);
    text("Media = Verde", 50, 80);
    text("Mínima = Azul", 50, 100);

    textFont(datos);
    textAlign(CENTER, CENTER);
    text("(keyPressed = 1, 2, 3, 4, 5)", width / 2, height - 20);
  }


  for (int i = 0; i < r.length; i++) {

    //Visualización circular de temperatura
    if (cambio == 1) {
      r[i].tMAX();
      r[i].tMEAN();
      r[i].tMIN();
      r[i].dias(cd);
    }

    //Visualización de temperatura
    if (cambio == 2) {
      r[i].tMax();
      r[i].tMean();
      r[i].tMin();
      r[i].dias(cd);
    } 

    //Visualización circular de la cobertura de nubes
    if (cambio == 3) {
      r[i].nubes();
      r[i].dias(cd);
    }

    //Visualización de visibilidad
    if (cambio == 4) {
      r[i].vMax();
      r[i].vMean();
      r[i].vMin();
      r[i].dias(cd);
    }

    //Visualización de humedad
    if (cambio == 5) {
      r[i].hMax();
      r[i].hMean();
      r[i].hMin();
      r[i].dias(cd);
    }
  }
}

void keyPressed() {
  
  //Cambio del inicio a visualizaciones
  if (key == ' ') {
    cambio = 1;
    cd = 365;
  }

  //Tempertura circular
  if (key == '1') {
    cambio = 1;
    cd = 365;
  }

  //Temperatura
  if (key == '2') {
    cambio = 2;
    cd = 31;
  }

  //Nubes
  if (key == '3') {
    cambio = 3;
    cd = 360;
  }

  //Visibilidad
  if (key == '4') {
    cambio = 4;
    cd = 53;
  }

  //Humedad
  if (key == '5') {
    cambio = 5;
    cd = 92;
  }
}
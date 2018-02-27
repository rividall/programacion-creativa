// Expresión Digital II - Diseño Digital - UDD - 2017
// Nicolás Moreno

/*
(La meta es visualizar datos de manera distinta como los ejemplos de jer thorp ( Kepler ) generando un movimiento espiral en cada transición de las distintas visualizaciones)

Se crean tres visualizaciones de datos:

1. Presionando la tecla '1', se muestra una visualización con líneas en el contorno de un círculo. Las líneas que van hacia afuera son la temperatura máxima,
las líneas que van hacia dentro son la temperatura mínima, además se establece una línea para indicar el comienzo del año.

2. Presionando la tecla '2', se muestra una visualización de 3 elipses la cual estan ordenado de manera vertical y cada una de estas representa un día,
las elipses que están unidad por una línea son la máxima y mínima del viento y la elipse que está sola representa una ráfaga de viento máximo que hubo en el día.
Se puede controlar cuantos días pueden aparecer en la pantalla con la tecla w,q,a,s,d.

3. Presionando la tecla '3', se muestra una visualización de 3 elipses la cual esta ordenado de manera vertical y cada una de estas representa un día,
muestra la humedad del año consiste en mínima, media y máxima, se representa en opacidad y tamaño de elipses.(Ordenado por trimestre)
*/


import processing.opengl.*; // importar librería

Objetos [] objetos;
int  diasMax, diasMin, minDate, maxDate, a;
Table tabla;
//Tipografía
PFont titulo, cuerpo;
int fila, k, visualizacion ;
// min y max de viento ( etiqueta )
float yMax = 97;
float yMin = 0;
float wo= 1500;

// etiqueta
String yEtiqueta = "";

//Vectores de rotación,controlan el espacio 3D principal
PVector rot = new PVector();
PVector trot = new PVector();

// Este es un  cero-uno que controla la planicie
// plano (0) o no (1)

float Planicie = 0;
float tPlanicie = 0;


void setup() {

  colorMode(HSB, 360);
  size(displayWidth, displayHeight, OPENGL);
  background(0);
  smooth();


  //variable para if de variables
  visualizacion  = 1;

  tabla = loadTable("Seefeld_Austria.csv", "header");

  //Elección de tipografía
  titulo = createFont("HelveticaNeue-Bold", 12);
  cuerpo = createFont("HelveticaNeue-Light ", 10);

  objetos = new Objetos[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int index = i;
    TableRow fila = tabla.getRow(i);

    //viento y rafaga de viento
    int wind_gust = fila.getInt (" Max Gust SpeedKm/h");
    int wind_max = fila.getInt(" Max Wind SpeedKm/h");
    int wind_mean = fila.getInt(" Mean Wind SpeedKm/h");

    int w = i;

    //humedad
    int maxH = fila.getInt("Max Humidity");
    int meanH = fila.getInt(" Mean Humidity");
    int minH = fila.getInt(" Min Humidity");
    //temperatura
    int mint = fila.getInt("Min TemperatureC");
    int meant = fila.getInt("Mean TemperatureC");
    int maxt = fila.getInt("Max TemperatureC");

    k = 30;

    objetos[i] = new Objetos(index,maxt,meant,mint, maxH, meanH, minH,w,wind_max,wind_mean,wind_gust);

    diasMin = 0;

    diasMax = 7;
  }
  maxDate = 7;
  a = 360;
}


void draw() {
  line(0,0, displayWidth, displayHeight);
// Facilita los vectores de rotacion y el zoom
  rot.x += (trot.x - rot.x) * 0.1;
  rot.y += (trot.y - rot.y) * 0.1;
  rot.z += (trot.z - rot.z) * 0.1;

  // Facilita el peso de la planicie
  Planicie += (tPlanicie - Planicie) * 0.1;

 background(10);
  textFont(titulo);
  fill(255);
  text("Seefeld_Austria, 2015", 10, 30);


  // (texto)descripción general
  if (visualizacion  == 1) {
    textFont(cuerpo);
    fill(255);
    text("Temperatura", 20, 60);
    text("Líneas Azules : Las líneas que van hacia afuera son la temperatura máxima las líneas que van  ", 50, 920);
    text("hacia dentro son la temperatura mínimalas líneas que van hacia dentro son la temperatura mínima, ", 50, 950);
    text("además se establece una línea para indicar e2 comienzo del año.", 50, 980);

    text("visualizacion 1 : si apretas la tecla '1' puedes visualizar la temperatura.", 1400, 920);
    text("visualizacion 2 : si apretas la tecla '2' puedes visualizar el viento y ráfaga", 1400, 950);
    text("visualizacion 3 : si apretas la tecla '3' puedes visualizarla humedad ", 1400, 980);
  }
  // (texto)descripción general
  if (visualizacion  == 2) {
    textFont(cuerpo);
    fill(255);
    text("Humedad", 20, 60);
    text("Elipses tienen Opacidad y Tamaño representan: Humedad Máxima, Humedad Media, Humedad Mínima (Ordenado por trimestre)", 50, 920);
    text("(Ordenado por trimestre)", 50, 950);



    text("visualizacion 1 : si apretas la tecla '1' puedes visualizar la temperatura.", 1400, 920);
    text("visualizacion 2 : si apretas la tecla '2' puedes visualizar el viento y ráfaga", 1400, 950);
    text("visualizacion 3 : si apretas la tecla '3' puedes visualizarla humedad ", 1400, 980);
  }
  // (texto)descripción general
  if (visualizacion  == 3) {
    textFont(cuerpo);
    fill(255);

    text("Viento y rafaga", 20, 60);

    text("Se muestra una visualización de 3 elipses la cual estan ordenado de manera vertical y cada una de", 50, 730);
    text("estas representa un día,las elipses que están unidad por una línea son la máxima y mínima del viento", 50, 760);
    text("y la elipse que está sola representa una ráfaga de viento máximo que hubo en ese día.", 50, 790);

    text("visualizacion 1 : si apretas la tecla '1' puedes visualizar la temperatura.", 1400, 730);
    text("visualizacion 2 : si apretas la tecla '2' puedes visualizar el viento y ráfaga.", 1400, 760);
    text("visualizacion 2 : cada vez que aprietas 'w se le suma un dia.", 1400, 790);
    text("visualizacion 2 : cada vez que aprietas´'q' se le resta un dia.", 1400, 820);
    text("visualizacion 2 : cada vez que aprietas 'a' vuelves al dia 0.", 1400, 850);
    text("visualizacion 2 : cada vez que aprietas´'s' se visualiza hasta el dia 183.", 1400, 880);
    text("visualizacion 2 : cada vez que aprietas´'d' se visualiza hasta el dia 364.", 1400, 910);
    text("visualizacion 3 : si apretas la tecla '3' puedes visualizarla humedad.", 1400, 940);


  }



  for (int i = 0; i < objetos.length; i++) {
    //visualizacion de temperatura con los textos
    if (visualizacion  == 1) {
      objetos[i].dias(k);

    }
    //visualizacion de la humedad con los textos
    if (visualizacion  == 2) {
      objetos[i].dias(k);
      objetos[i].humedad();

    }
  }
 //visualizacion del viento con los textos
   if (visualizacion  == 3) {
  for (int i = diasMin; i < diasMax; i++) {
    objetos[i].viento();


  }
}


 // el centro esté esta centro pero cuando cambia , ligeramente cambia hacia abajo ( circulo con perspectiva )
  translate(width/2 - (250 * Planicie * 3.30), height/2 + (60 * rot.x));
  rotateX(rot.x);
  rotateZ(rot.z);


  // dibujar circulo
  strokeWeight(2);
  noFill();



  // dibujar circulo wo
  stroke(255, 50 - (40 * Planicie));
  ellipse(0, 0, wo, wo);



  //dibujar Y Axis
  stroke(255, 100);
  pushMatrix();

  rotateY(-PI/2);

  line(0, 0, 500 * Planicie ,0);

  // dibujar Y Axis max/min
  pushMatrix();
  fill(255, 100 * Planicie);
  rotateZ(PI/2);

  textSize(12);
 text(round(yMin), -textWidth(str(yMin)), 0);
 text(round(yMax), -textWidth(str(yMax)), -500);

  popMatrix();

  // dibujar Y Axis etiqueta
  fill(255, Planicie * 255);
  text(yEtiqueta, 250 * Planicie, -10);

  popMatrix();

  // dibujar X Axis etiqueta si no esta plano
  pushMatrix();
  rotateZ(PI/2);
  line(0, 0, 1500 * Planicie, 0);


  if (Planicie > 0.5) {
    pushMatrix();
    rotateX(PI/2);
    line(wo* 1.06, -10, wo* 1.064, 10);
    line(wo* 1.064, -10, wo* 1.068, 10);
    popMatrix();


  }

  // dibujar X Axis etiqueta
  fill(255, Planicie * 255);
  rotateX(-PI/2);


  // Dibujar X Axis min/max
  fill(255, 100 * Planicie);
  textFont(titulo);
   text(diasMax - diasMin, 800, 17);

    text("Dias  =", wo/2, 17);

  popMatrix();


// Se dibujan las visualizaciones provenientes de la clase a través de un for loop
for (int i = 0; i < tabla.getRowCount(); i++) {

    if (visualizacion  == 1) {
      objetos[i].Temp();
    }

  }

  }


void keyPressed() {


  if (key == '1') {
    tPlanicie = (tPlanicie == 0) ? (0):(0);
    CambiarPlanicie(tPlanicie);
  }


  if (key == '2') {

    tPlanicie = (tPlanicie == 1) ? (0):(1);
    CambiarPlanicie(tPlanicie);
    CambiarPlanicie(1);
    textFont(cuerpo);
    yEtiqueta = "Viento Km/h";
    visualizacion = 3;
  }


  else if (key == '3') {

      tPlanicie = 0 ;
      CambiarPlanicie(tPlanicie);
      trot.x = PI/2;
      textFont(cuerpo);


      yEtiqueta = "Humedad";
      visualizacion  = 2;
      k = 120; //separado por trimestres
  }


if (diasMax != 365) { // cada vez que aprietas "w" se le suma un dia
    if (key == 'w') {
      diasMax ++;
    }
  }


   if (diasMax != 365) { // cada vez que aprietas "q" se le resta un dia
    if (key == 'q') {
      diasMax --;
    }
  }


  if (key == 'a') { // si aprietas "a" vuelve al dia 0
    diasMin = 0;
    diasMax= 0;
  }
  if (key == 's') { // si aprietas "s" se visualiza hasta el dia 183
    diasMin = 0;
    diasMax = 183;
  }

  if (key == 'd') { // si aprietas "d" se visualiza hasta el dia 364
    diasMin = 0;
    diasMax = 364;
  }
}
void CambiarPlanicie(float f) {
  tPlanicie = f;
  k = 51;
     visualizacion  = 1;
  if (tPlanicie == 1) {
    trot.x = PI/2;
    trot.z = -PI/2;
  }
  else {
    trot.x = 0; // regresa a la posición inicial
    trot.z =0 ;
  }
}

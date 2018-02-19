import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class seasonfinaleMax extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Max Cordero
// seasonFinaleMax
/*Programa que muestra una visualizaci\u00f3n de datos de la cuidad de Miami durante el a\u00f1o 2005.
Se crearon 3 set de variables. Si se apreta 1 se Temperatura M\u00e1xima, Temperatura Media y Lluvia agrupados en d\u00edas con el fin de visualizar el a\u00f1o completo.
Si se apreta 2 se muestra la relaci\u00f3n entre humedad m\u00e1xima y nubes agrupados en semestre.
Por \u00faltimo, si se apreta 3 se muestra la relaci\u00f3n entre las r\u00e1fagas de viento, la humedad m\u00e1xima y el viento. */

/*
NIVEL: 3 visualizaciones (solo 2 funcionan bien) + 
*/

Miami2005 [] m;

//Llamar tabla
Table tabla;
PFont tipografia, light;



//Establecer relaci\u00f3n de filas
int fila, i, j;

int index;
int cd = 30;
int variable;

public void setup() {
  
  variable = 1;

  tipografia = createFont("HelveticaNeue-Bold", 16);
  light = createFont("HelveticaNeue", 16);

  tabla = loadTable("2005.csv", "header");
  m = new Miami2005[tabla.getRowCount()];


  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow fila = tabla.getRow(i);

    int index = i; // esto no es necesario, porque i e index son los mismos valores

    //relacionar datos con columnas
    String dia = fila.getString("EST");
    int tmax = fila.getInt("Max TemperatureC");
    int tmean = fila.getInt("Mean TemperatureC");
    int tmin = fila.getInt("Min TemperatureC");
    int vmax = fila.getInt("Max VisibilityKm");
    int vmean = fila.getInt("Mean VisibilityKm");
    int vmin = fila.getInt("Min VisibilitykM");
    int hmax = fila.getInt("Max Humidity");
    int hmean = fila.getInt("Mean Humidity");
    int hmin = fila.getInt("Min Humidity");
    int clouds = fila.getInt("CloudCover");
    int rain = fila.getInt("Precipitationmm");
    int gust = fila.getInt("Max Gust SpeedKm/h");
    int wind = fila.getInt("Max Wind SpeedKm/h");


    m[i] = new Miami2005(index, dia, tmax, tmean, tmin, vmax, vmean, vmin, hmax, hmean, hmin, clouds, rain, gust, wind);
  }
}

public void draw() {
  background(255);

  textFont(tipografia);
  fill(0, 0, 255);
  text("Miami, FL, 2005", 10, 20);
  textFont(light);
  fill(255, 0, 0);
  text("Temperatura y Lluvia anual : '1'", 250, 20);
  text("Humedad y Nubes : '2'", 600, 20);
  text("Vientos, Humedad y Lluvia : '3'", 930, 20);

//llamar funciones dentro del class
  for (int i = 0; i < m.length; i++) {
    if (variable  == 1) {
      m[i].tMax();
      m[i].leyenda1();
      m[i].meses(cd);
    }
    if (variable  == 2) {
      m[i].hMax();
      m[i].leyenda2();
      m[i].semestre(cd);
    }
    if (variable  == 3) {
      m[i].katrina();
      m[i].leyenda3();
      m[i].estacion(cd);
    }
  }
}

//crear voids para cambiar las visualizaciones
public void keyPressed() {
  if (key == '1') {
    variable = 1;
    cd = 30;
  }
  if (key == '2') {
    variable = 2;
    cd = 180;
  }
  if (key == '3') {
    variable = 3;
    cd = 90;
  }
}
class Miami2005 {

  //Declarar las variables del class
  String dia;

  int index;
  float x, y;

  int tmax, tmean, tmin, vmax, vmean, vmin, hmax, hmean, hmin, clouds, rain, gust, wind;
  int red = color(255, 0, 0);
  int green = color(0, 255, 0);
  int blue = color(0, 0, 255);

  Miami2005(int index, String dia, int tmax, int tmean, int tmin, int vmax, int vmean, int vmin, int hmax, int hmean, int hmin, int clouds, int rain, int gust, int wind) {

    //Iniciar variables
    this.index = index;
    this.dia = dia; // sin uso
    this.tmax = tmax;
    this.tmean = tmean;
    this.tmin = tmin;
    this.vmax = vmax;
    this.vmean = vmean;
    this.vmin = vmin;
    this.hmax = hmax;
    this.hmean = hmean;
    this.hmin = hmin;
    this.clouds = clouds;
    this.rain = rain;
    this.gust = gust;
    this.wind = wind;
  }

  //Funciones dentro de la clase
  public void meses(int paso) {
    for (int i = 0; i < m.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);
        float factor1 = map(paso, 7, 182, 1, .6f);
        float factor2 = map(paso, 7, 182, .01f, .3f);
        float factor3 = map(paso, 7, 182, .9f, 1.3f);

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  public void semestre(int paso) {
    for (int i = 0; i < m.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);
        float factor1 = map(paso, 7, 182, 7, .6f);
        float factor2 = map(paso, 7, 182, .08f, .03f);
        float factor3 = map(paso, 7, 182, 1.9f, .96f);

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map(i, 0, 365/paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  public void estacion(int paso) {
    //an = -PI/2;
    for (int i = 0; i < m.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .08f, .2f);
        float factor1 = map(paso, 7, 182, 1, .9f);
        float factor2 = map(paso, 7, 182, .06f, .05f);
        float factor3 = map(paso, 7, 182, .51f, 1.5f);

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }


  // falta descripci\u00f3n del bloque de c\u00f3digo
  public void tMax() {

    float d = map(tmax, 21, 34, 5, 25); //el map esta fuera de rango en el set de variable
    float mapmedTemp = map(tmean, 13, 31, 0, 255); //el map esta fuera de rango en el set de variable
    float maprain = map(rain, 0, 116, 0, 25);

    fill(red, mapmedTemp);
    noStroke();
    ellipse(x, y, d, d);
    fill(blue);
    ellipse(x, y, maprain, maprain);
  }

  // falta descripci\u00f3n del bloque de c\u00f3digo
  public void hMax() {

    float maphmax = map(hmax, 68, 100, 0, 255); // sin uso
    float maphmaxcolor = map(hmax, 68, 100, 0, 50);
    float mapclouds = map(clouds, 0, 8, 10, 255);


    fill(0, mapclouds, 0);
    noStroke();
    ellipse(x, y, maphmaxcolor, maphmaxcolor);

  }

  // falta descripci\u00f3n del bloque de c\u00f3digo
  public void katrina() {

    float maphmax = map(hmax, 68, 100, 255, 100);
    float mapgust = map(gust, 0, 148, 10, 30);
    float mapwind = map(wind, 14, 111, 100, 255); // sin uso
    float maprain = map(rain, 0, 116, 5, 155);


    fill(blue);
    rect(x - 6, y, maprain / 10, maprain);
    fill(maphmax, 0, 0);
    noStroke();
    ellipse(x, y, mapgust, mapgust);
  }

  // falta descripci\u00f3n del bloque de c\u00f3digo
  public void leyenda1() {

    fill(255);
    strokeWeight(2);
    stroke(0);
    rect(335, 820, 1200, 900);
    noStroke();
    fill(255, 0, 0);
    ellipse(380, 860, 10, 10);
    ellipse(410, 860, 20, 20);
    textFont(tipografia);
    fill(0);
    text("Temperatura M\u00e1xima", 430, 865);
    textFont(light);
    fill(255, 0, 0, 100);
    ellipse(660, 860, 20, 20);
    fill(255, 0, 0);
    ellipse(690, 860, 20, 20);
    fill(0);
    text("Temperatura Media", 730, 865);
    fill(0, 0, 255);
    ellipse(970, 860, 10, 10);
    ellipse(1000, 860, 20, 20);
    fill(0);
    text("Lluvia", 1020, 865);
  }


  // falta descripci\u00f3n del bloque de c\u00f3digo
  public void leyenda2() {

    fill(255);
    strokeWeight(2);
    stroke(0);
    rect(335, 820, 1200, 900);
    noStroke();
    rect(335, 820, 1200, 900);
    fill(0, 255, 0);
    ellipse(380, 860, 10, 10);
    ellipse(410, 860, 20, 20);
    textFont(tipografia);
    fill(0);
    text("Humedad M\u00e1xima", 430, 865);
    textFont(light);
    fill(0, 255, 0);
    ellipse(660, 860, 20, 20);
    fill(32, 51, 12);
    ellipse(690, 860, 20, 20);
    fill(0);
    text("Nubes", 730, 865);
  }
  
  
  // falta descripci\u00f3n del bloque de c\u00f3digo
  public void leyenda3() {

    fill(255);
    strokeWeight(2);
    stroke(0);
    rect(335, 820, 1200, 900);
    noStroke();
    rect(335, 820, 1200, 900);
    fill(255, 0, 0);
    ellipse(380, 860, 10, 10);
    ellipse(410, 860, 20, 20);
    textFont(tipografia);
    fill(0);
    text("Gust (r\u00e1fagas)", 430, 865);
    textFont(light);
    fill(255, 0, 0);
    ellipse(660, 860, 20, 20);
    fill(40, 0, 0);
    ellipse(690, 860, 20, 20);
    fill(0);
    text("Humedad M\u00e1xima", 730, 865);
    fill(0, 0, 255);
    rect(980, 850, 10, 20);
    rect(1000, 850, 10, 40);
    fill(0);
    text("Lluvia", 1020, 865);
  }
  
}
  public void settings() {  size(1200, 900); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonfinaleMax" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class seasonFinalePaly extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Paulina Descouvieres
// seasonFinale_paly

Hawai [] h;

//Tabla para almacenar datos
Table tabla;

//Tipograf\u00eda
PFont ciudad, datos;

//Navegaci\u00f3n entre filas
int fila, i, j;

// int variables keypressed
int cambio;

int index;
int cd = 31;

public void setup() {
  

  cambio = 1;
  ciudad = createFont("ArialNarrow-Bold", 15);
  datos = createFont("ArialNarrow", 15);

  tabla = loadTable("Hawai.csv", "header");
  h = new Hawai[tabla.getRowCount()];

  //Acceso a todas las filas de la tabla
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow fila = tabla.getRow(i);

    int index = i;

    //Acceso a cada columna de la tabla
    String dia = fila.getString("HST");

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
    int clouds = fila.getInt(" CloudCover");


    h[i] = new Hawai(index, dia, tmax, tmean, tmin, vmax, vmean, vmin, hmax, hmean, hmin, clouds);
  }
}

public void draw() {
  background(55);
  textFont(ciudad);
  fill(253);
  text("Hawai, 2015", 10, 20);

  if (cambio == 1) {
    textFont(datos);
    fill(253);
    text("MESES", 10, 40);
    text("- Todas las", 10, 60);
    text("variables", 10, 80);
  }

  if (cambio == 2) {
    textFont(datos);
    fill(253);
    text("ESTACIONES", 10, 40);
    text("- Temperatura", 10, 60);
    text("- Nubes", 10, 80);
  }

  if (cambio == 3) {
    textFont(datos);
    fill(253);
    text("SEMANAS", 10, 40);
    text("- Visibilidad", 10, 60);
    text("- Nubes", 10, 80);
  }

  if (cambio == 4) {
    textFont(datos);
    fill(253);
    text("D\u00cdAS", 10, 40);
    text("- Humedad", 10, 60);
    text("- Nubes", 10, 80);
  }

  if (cambio == 5) {
    textFont(datos);
    fill(253);
    text("A\u00d1O", 10, 40);
    text("- M\u00e1ximas", 10, 60);
  }

  if (cambio == 6) {
    textFont(datos);
    fill(253);
    text("SEMESTRES", 10, 40);
    text("- Medias", 10, 60);
  }

  if (cambio == 7) {
    textFont(datos);
    fill(253);
    text("TRIMESTRES", 10, 40);
    text("- M\u00ednimas", 10, 60);
  }

//Este c\u00f3digo si no va, no va.
  //Todas las funciones
  //h[i].tMax();
  //h[i].tMean();
  //h[i].tMin();
  //h[i].vMax();
  //h[i].vMean();
  //h[i].vMin();
  //h[i].hMax();
  //h[i].hMean();
  //h[i].hMin();
  //h[i].Clouds();
  //h[i].dias(cd);

  for (int i = 0; i < h.length; i++) {
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 1) {
      h[i].Clouds();// el nombre de la funci\u00f3n no puede ser con May\u00fascula ya que se refiere a una clase
      h[i].hMax();
      h[i].hMean();
      h[i].hMin();
      h[i].tMean();
      h[i].tMin();
      h[i].tMax();
      h[i].vMax();
      h[i].vMean();
      h[i].vMin();
      h[i].dias(cd);
    }
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 2) {
      h[i].tMean();
      h[i].tMin();
      h[i].tMax();
      h[i].Clouds();// el nombre de la funci\u00f3n no puede ser con May\u00fascula ya que se refiere a una clase
      h[i].dias(cd);
    }
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 3) {
      h[i].vMax();
      h[i].vMean();
      h[i].vMin();
      h[i].Clouds();// el nombre de la funci\u00f3n no puede ser con May\u00fascula ya que se refiere a una clase
      h[i].dias(cd);
    }
    /*
    Esta es la \u00fanica visualizaci\u00f3n que es posible entender un poco, el resto de las 6 
    son completamente ilegibles, lo que deja la entrega con una sola visualizaci\u00f3n
    */
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 4) {
      h[i].hMax();
      h[i].hMean();
      h[i].hMin();
      h[i].tMean();
      h[i].Clouds();// el nombre de la funci\u00f3n no puede ser con May\u00fascula ya que se refiere a una clase 
      h[i].dias(cd);
    }
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 5) {
      h[i].tMax();
      h[i].vMax();
      h[i].hMax();
      h[i].dias(cd);
    }
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 6) {
      h[i].tMean();
      h[i].vMean();
      h[i].hMean();
      h[i].dias(cd);
    }
    //Falta descripci\u00f3n del cuadro de texto
    if (cambio == 7) {
      h[i].tMin();
      h[i].vMin();
      h[i].hMin();
      h[i].dias(cd);
    }
  }
}

public void keyPressed() {
  //Meses
  if (key == '1') {
    cambio = 1;
    cd = 31;
  }

  //Estaciones
  if (key == '2') {
    cambio = 2;
    cd = 92;
  }

  //Semanas
  if (key == '3') {
    cambio = 3;
    cd = 53;
  }

  //D\u00edas
  if (key == '4') {
    cambio = 4;
    cd = 7;
  }

  //A\u00f1o
  if (key == '5') {
    cambio = 5;
    cd = 365;
  }

  //Semestres
  if (key == '6') {
    cambio = 6;
    cd = 183;
  }

  //Trimestres
  if (key == '7') {
    cambio = 7;
    cd = 123;
  }
}
class Hawai {

  //Variables globales de la clase
  String dia;

  int index;
  float x, y;

  int tmax, tmean, tmin, vmax, vmean, vmin, hmax, hmean, hmin, clouds;
  int red = color(0xffFF4F46);
  int green = color(0xff65E879);
  int blue = color(0xff34CAFF);
  int yellow = color(0xffF9FC47);
  int white = color(0xffE6E6E6);

  Hawai(int index, String dia, int tmax, int tmean, int tmin, int vmax, int vmean, int vmin, int hmax, int hmean, int hmin, int clouds) {

    //Inicializar variables desde el contructor
    this.index = index;
    this.dia = dia;
    
    //Temperatura
    this.tmax = tmax;
    this.tmean = tmean;
    this.tmin = tmin;
    
    //Visibilidad
    this.vmax = vmax;
    this.vmean = vmean;
    this.vmin = vmin;
    
    //Humedad
    this.hmax = hmax;
    this.hmean = hmean;
    this.hmin = hmin;
    
    //Nubes
    this.clouds = clouds;
  }

  //Funciones de la clase

  //D\u00edas
  public void dias(int paso) {
    //float an = -PI/2;
    for (int i = 0; i < h.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);
        float factor1 = map(paso, 7, 182, 1, .6f);
        float factor2 = map(paso, 7, 182, .09f, .1f);
        float factor3 = map(paso, 7, 182, .9f, .9f);

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365/paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  //Temperatura
  public void tMax() {

    float d = map(tmax, 21, 34, 5, 20);

    noStroke();
    fill(red, 80);
    ellipse(x, y, d, d);
  }
  //Falta descripci\u00f3n del cuadro de texto  
  public void tMean() {

    float d = map(tmean, 20, 29, 5, 20);

    noStroke();
    fill(green, 80);
    ellipse(x, y, d, d);
  }

  //Falta descripci\u00f3n del cuadro de texto  
  public void tMin() {

    float d = map(tmean, 15, 25, 5, 20);

    noStroke();
    fill(blue, 80);
    ellipse(x, y, d, d);
  }

  //Visibilidad
  public void vMax() {

    float m = map(vmax, 0, 16, 10, 100);

    pushMatrix();
    noStroke();
    fill(blue, m);
    rectMode(CENTER);
    rect(x, y, 8, 8);
    popMatrix();
  }

  //Falta descripci\u00f3n del cuadro de texto  
  public void vMean() {

    float m = map(vmean, 4, 16, 10, 100);

    pushMatrix();
    noStroke();
    fill(red, m);
    rectMode(CENTER);
    rect(x, y, 8, 8);
    popMatrix();
  }

  //Falta descripci\u00f3n del cuadro de texto  
  public void vMin() {

    float m = map(vmin, 0, 16, 10, 100);

    pushMatrix();
    noStroke();
    fill(green, m);
    rectMode(CENTER);
    rect(x, y, 8, 8);
    popMatrix();
  }

  ////Humedad
  public void hMax() {

    float h = map(hmax, 55, 100, 10, 100);

    pushMatrix();
    stroke(white, h);
    strokeWeight(3);
    line(x, y, x, y - (h / 5));
    popMatrix();
  }

  //Falta descripci\u00f3n del cuadro de texto  
  public void hMean() {

    float h = map(hmean, 45, 97, 10, 100);

    pushMatrix();
    stroke(white, h);
    strokeWeight(3);
    line(x, y, x + (h/5), y);
    popMatrix();
  }

  //Falta descripci\u00f3n del cuadro de texto  
  public void hMin() {

    float h = map(hmin, 0, 90, 10, 100);

    pushMatrix();
    stroke(white, h);
    strokeWeight(3);
    line(x, y, x, y + (h/5));
    popMatrix();
  }

  //Nubes
  // el nombre de la funci\u00f3n no puede ser con May\u00fascula ya que se refiere a una clase
  public void Clouds() {

    float c = map(clouds, 1, 8, i - 1, 40);

    pushMatrix();
    stroke(white, 80);
    strokeWeight(1);
    noFill();
    rectMode(CENTER);
    rect(x, y, c, c);
    popMatrix();
  }
}
  public void settings() {  size(1200, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonFinalePaly" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

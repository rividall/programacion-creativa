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

public class seasonFinaleBenja extends PApplet {

//Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
//Benjamin Gutierrez 

//Falta descripci\u00f3n general
/*
NIVEL: 5 visualizaciones solo 4 legibles + 4 set de variables 3 en buen uso
*/
Cuerpo[] c;
Table tabula;//una tabla para almacenar las datos
PFont titulo, bajada, instruc;
int cambio = 0;
//navegacion entre filas
int fila, index, i;
int u = 30;
boolean diaporanio;
int iteracion;


public void setup() {
  
  titulo = createFont("Helvetica-Bold", 30);
  bajada = createFont("Helvetica", 12);
  instruc =createFont("Helvetica", 20);
  tabula = loadTable("RADUZHNYJ_Russia.csv", "header");
  c = new Cuerpo[tabula.getRowCount()]; // de esta forma la lista de objetos sera del tama\u00f1o de la tabla
  iteracion = 1;

  //Acceder a todos las filas de la tabla
  for (int i = 0; i < tabula.getRowCount(); i++) {
    //paso por cada fila del CSV
    TableRow fila = tabula.getRow(i); // cambia i, baja una fila del CSV
    int index = i; // esto no es necesario, porque i e index son los mismos valores

    //para acceder a cada columna dentro de cada fila y crear una variable por cada columna con nombre del header
    String day = fila.getString("DAY");
    int maxt = fila.getInt("Max TemperatureC");
    int meant = fila.getInt("Mean TemperatureC");   
    int mint = fila.getInt("Min TemperatureC");
    int humx = fila.getInt("Max Humidity");
    int humean = fila.getInt(" Mean Humidity");
    int humn = fila.getInt(" Min Humidity");
    int wind = fila.getInt("WindDirDegrees");
    int wndspm = fila.getInt(" Mean Wind SpeedKm/h");
    int wndspx = fila.getInt(" Max Wind SpeedKm/h");

    // hago un objeto con la informacion de cada fila
    c[i] = new Cuerpo(index, day, maxt, meant, mint, humx, humean, humn, wind, wndspm, wndspx, i);
  }
} 
public void draw() {
  background(120); 
  if (!diaporanio) {
    pushMatrix();
    translate(width * .60f, height * .60f);
    textFont(titulo);
    fill(255);
    text("RADUZHNYJ Russia 2015", 0, 0);
    popMatrix();
    textFont(bajada);
    fill(255);
    text("Examen Expreci\u00f3n Digital II", 15, 25);
    text("Benjamin Gutierrez", 30, 45);
    text("1 de diciembre 2016", 27, 65);
  }

  if (diaporanio) {
// falta descripci\u00f3n de los bloques de texto
    if ( iteracion == 1) {
      pushMatrix();
      translate(width *.80f, height * .90f);

      textFont(bajada);
      fill(255);
      text("Mensual", 25, 25);
      text("Temperatura Maxima", 15, 45);
      popMatrix();
    }
    // falta descripci\u00f3n de los bloques de texto
    if ( iteracion == 2) {
      pushMatrix();
      translate(width *.80f, height * .90f);

      textFont(bajada);
      fill(255);
      text("Semanal", 25, 25);
      text("temperatura Minima", 15, 45);
      popMatrix();
    }
    // falta descripci\u00f3n de los bloques de texto
    if ( iteracion == 3) {
      pushMatrix();
      translate(width *.80f, height * .90f);

      textFont(bajada);
      fill(255);
      text("Semestral", 25, 25);
      text("Temperatura Media", 15, 45);
      popMatrix();
    }
    // falta descripci\u00f3n de los bloques de texto
    if ( iteracion == 4) {
      pushMatrix();
      translate(width *.80f, height * .90f);

      textFont(bajada);
      fill(255);
      text("Anual", 25, 25);
      text("Direcci\u00f3n del Viento", 15, 45);
      popMatrix();
    }
    // falta descripci\u00f3n de los bloques de texto
    if ( iteracion == 5) {
      pushMatrix();
      translate(width *.80f, height * .90f);

      textFont(bajada);
      fill(255);
      text("Semanal", 35, 25);
      text("Velocidad Maxima del viento", 15, 45);
      text("Velocidad Media del viento", 16, 65);
      popMatrix();
    }
    for (int i = 0; i < c.length; i++) {
// falta descripci\u00f3n de los bloques de texto
      if (iteracion == 1) {
        c[i].dias(u);
        c[i].tempx();
      }
// falta descripci\u00f3n de los bloques de texto
      if (iteracion == 2) {
        c[i].dias(u);
        c[i].tempn();
      }
// falta descripci\u00f3n de los bloques de texto
      if (iteracion == 3) {
        c[i].dias(u);
        c[i].meant();
      }

// falta descripci\u00f3n de los bloques de texto
      if (iteracion == 4) {
        c[i].dias(u);
        c[i].viento();
      }

// falta descripci\u00f3n de los bloques de texto
      if (iteracion == 5) {
        c[i].dias(u);
        c[i].wndrec();
        c[i].windsdp();
      }
    }
  }
}


// falta descripci\u00f3n de los bloques de texto
public void keyPressed() {
  if (key == 'q') {
    iteracion = 1;
    u = 30;
  }
  if (key == 'w') {// falta descripci\u00f3n de los bloques de texto
    iteracion = 2;
    u = 52;
  }
  if (key == 'e') {// falta descripci\u00f3n de los bloques de texto
    iteracion = 3;
    u = 182;
  }
  if (key == 'r') {// falta descripci\u00f3n de los bloques de texto
    iteracion = 4;
    u = 365;
  }
  if (key == 't') {// falta descripci\u00f3n de los bloques de texto
    iteracion = 5;
    u = 52;
  }
  if (key == ' ') {// falta descripci\u00f3n de los bloques de texto
    diaporanio = !diaporanio;
  }
}
class Cuerpo {
  // variables globales de la clase 
  float v, x, y, tm, velx, vely, a, tx, ty, maxh, meanh, minh, humx, humn, humean, mean, wndspm, wndspx;
  float amt, wind, wndsm, wndsx;
  int azul, rojo, morado, verde, blanco, celeste, midnightblue, p, celeste2, morado2;
  String dia;
  int index, i;
  float mtx, mtmn, mtn, mhx, mhmn, mhn, mw, mw2, wndx;


  Cuerpo(int index, String dia, float maxt, float meant, float mint, float humx, float humean, float humn, float wind, float wndspm, float wndspx, int i) {
    // inicializar varialbles con valores desde el constructor
    this.dia = dia; // no se usa
    this.tx = maxt;
    this.ty = meant;
    this.tm = mint;
    this.maxh = humx;
    this.meanh = humean;
    this.minh = humn; // no se usa
    this.wind = wind;
    this.index = index;
    this.wndsm = wndspm;
    this.wndsx = wndspx; // no se usa
    velx = 1; // no se usa
    vely = 1; // no se usa

    this.azul = color(39, 90, 252); // no se usa
    this.celeste = color(100, 149, 237);
    this.midnightblue = color(25, 25, 112);
    this.rojo = color(252, 68, 39);
    this.morado = color(152, 39, 252);
    this.verde = color(146, 224, 63);
    this.blanco = color(255, 255, 255); // no se usa
  }

  // temperatura maxima
  public void tempx() {

    pushMatrix();
    mtn = map(tm, 20, -40, 10, 50);
    float col = map(tx, -35, 25, 0, 1);
    p = lerpColor(morado, rojo, col);
    fill(p);
    noStroke();
    ellipse(x, y, mtn, mtn);
    popMatrix();
  }
  // temperatura minima
  public void tempn() {

    pushMatrix();
    mtx = map(tx, 28, -36, 10, 50);
    float col = map(ty, -35, 25, 0, 1);
    p = lerpColor(midnightblue, celeste, col);
    fill(p);
    noStroke();
    ellipse(x, y, mtx, mtx);
    popMatrix();
  }
  // velocidad media del viento
  public void windsdp() {

    pushMatrix();
    mhx = map(maxh, 100, 60, 5, 100);
    wndsm = map(wndspm, 29, 0, 50, 25);
    float col = map(meanh, 43, 98, 0, .99f);
    p = lerpColor(celeste, morado, col);
    noStroke();
    fill(p);
    rect(x, y, wndsm * .5f, wndsm);  
    popMatrix();
  }

  // direccion del viento
  public void viento() {

    pushMatrix();
    mw = map(wind, 359, 5, 100, 300);
    mw2 = map(wind, 359, 5, 7, 3);
    translate(width / 2, height / 2);
    float col = map(mw, 100, 300, 0, 1); // esto contradice la linea 78
    p = lerpColor(celeste, verde, col);
    strokeWeight(mw2);
    stroke(p);
    rotate(radians(TWO_PI / 365 * index * 100));
    line(100, 0, mw, 0);
    popMatrix();
  }


  // velocidad maxima viento
  public void wndrec() {

    pushMatrix();
    wndx = map(wndspx, 29, 0, 10, 3);
    mw = map(wind, 359, 5, 1, 100);
    float col = map(mw, 5, 359, 0, 1);
    p = lerpColor(rojo, verde, col);
    stroke(p);
    strokeWeight(wndx);
    line(x, y, x + 15, y);
    popMatrix();
  }

  // temperatura media
  public void meant() {

    pushMatrix();
    mtmn = map(ty, 25, -37, 10, 50);
    float col = map(ty, -35, 25, 0, .9f);
    p = lerpColor(celeste, verde, col);
    fill(p);
    noStroke();
    rect(x + 10, y +10, mtmn * .15f, mtmn); 
    popMatrix();
  }

  // todos los dias columnas

  public void dias(int paso) {

    for (int i = 0; i < c.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .1f, .001f);
        float factor1 = map(paso, 7, 182, .9f, .9f);
        float factor2 = map(paso, 7, 182, .1f, .001f);
        float factor3 = map(paso, 7, 182, .9f, .9f);

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365/paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  public void dia(int paso) {

    for (int i = 0; i < c.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .8f, .15f);
        float factor1 = map(paso, 7, 182, .9f, .9f);
        float factor2 = map(paso, 7, 182, .5f, .05f);
        float factor3 = map(paso, 7, 182, .9f, .9f);

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map(i, 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
}


//si el c\u00f3digo no va y est\u00e1 comentado, no debe ir escrito

// variables y maps listado

//  mtx = map(tx, 28, -36, 10, 50);
//  mtmn = map(ty, 25, -37, 30, 50);
//  mtn = map(tm, 20, -40, 10, 50);
//  mhx = map(maxh, 100, 60, 5, 100);
//  mhmn = map(meanh, 98, 43, 15, 50);
//  mhn = map(minh, 89, 14, 20, 60);
//  mw = map(wind, 359, 5, 1, 100);
//  wnds = map(wndspm. 29, 0, 1, 0);
//  wndx = map(wndspx. 29, 0, 1, 0);
  public void settings() {  size(1200, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonFinaleBenja" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

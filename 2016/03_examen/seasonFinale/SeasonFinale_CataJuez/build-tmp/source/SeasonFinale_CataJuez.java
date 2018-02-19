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

public class SeasonFinale_CataJuez extends PApplet {

//Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
//Catalina Juez
//Seasonfinale
//Falta descripci\u00f3n de c\u00f3mo funciona

Objeto [] e;
Table tabla;
int fila, d;

public void setup() {

  textSize(35);
  fill (0, 0, 0);
  text("Ttaly", 100, 30); 

  textSize(16);
  text("a = a\u00f1o ", 100, 50);
  text("s = semestre ", 250, 50);
  text("w = semana ", 400, 50);
  text("m = meses ", 550, 50);
  text("e = salir ", 700, 50);

   // buena decisi\u00f3n
  background(255, 255, 255);
  tabla = loadTable("Firenze_Peretola_Italy.csv", "header");
  e = new Objeto[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int index = i;
    TableRow fila = tabla.getRow(i);
    int mint = fila.getInt("Min TemperatureC");
    int maxt = fila.getInt("Max TemperatureC");

    d = 30;
    e[i] = new Objeto( index, mint, maxt, i);
  }
}

public void draw() {
  background(230);
  for (int i = 0; i < e.length; i++) {

    e[i].dias(d);
    e[i].cuadrado();
    e[i].cuadradodos();
  }
}

public void keyPressed() {
  if (key == 'a') {
    d = 30; //a\u00f1o
  }
  if (key == 's') {
    d = 180; //semestre
  }
  if (key == 'w') {
    d = 7; //semana
  }
  if (key == 'm') {
    d = 12; //meses
  }
  if ( key == 'e') {
    exit(); //salir
  }
}
class Objeto {
  int i, index, paso, mint, maxt;
  float x, y, meanv, maxv, angulo, angulodos, radius;
  String titulo;
  boolean Speed;

  Objeto(int t_index, int t_maxt, int t_mint, int t_i) {

    x = 0;
    y = 0;
    this.angulo = angulo;    
    this.angulodos = angulodos;
    rectMode(CENTER);
    mint = t_mint;
    maxt = t_maxt;
    i = t_i;
    index = t_index;
  }
//Falta descripci\u00f3n del cuadro de texto
  public void cuadrado() {
    float cuadrado = map(mint, -5, 23, 0, 10 );
    noStroke();
    fill (105, 150, 207);
    pushMatrix();
    translate(x, y);
    rotate(angulo);
    rect(radius, radius, cuadrado, cuadrado);
    popMatrix();
  }
//Falta descripci\u00f3n del cuadro de texto
  public void cuadradodos() {
    float cuadradodos = map(maxt, 5, 39, 10, 30);
    stroke(206, 106, 106);
    strokeWeight(5);
    fill (255, 255, 255, 0);
    pushMatrix();
    translate(x, y);
    // rotate(angulodos);
    rect(radius, radius, cuadradodos, cuadradodos);
    popMatrix();
  }
/*
Funciones en desuso

//Falta descripci\u00f3n del cuadro de texto
  void mover() {
    float mover = map(mint, 2, 40, 0, 0.2 );
    angulo += mover;
    ty++;
  }
//Falta descripci\u00f3n del cuadro de texto
  void moverdos() {
    float moverdos = map(maxt, 3, 47, 0, 0.3 );
    angulodos += moverdos;
    ty++;
  }
*/

//Falta descripci\u00f3n del cuadro de texto
  public void dias(int paso) {
    //angulo = -PI/2;
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);  
        float factor1 = map(paso, 7, 182, 1, .6f); 
        float factor2 = map(paso, 7, 182, .09f, .1f); 
        float factor3 = map(paso, 7, 182, .9f, .9f); 

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "SeasonFinale_CataJuez" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

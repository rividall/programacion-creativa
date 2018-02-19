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

public class s13c02ange extends PApplet {

//UDD - Expresi\u00f3n Digital II
//s13c02ange
//Visualizacion de datos a partir de una figura creada, del clima de lippstadt, Alemania en el 2010

int cols, filas, i;

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

String fecha, micumpleanos, tmaxima, tminima, vimed, vimin;
float x1, y1, tmax, tmin, hmax, hmin, visimed, visimin, vienmax, vienmed;

float angulo, conversion;

public void setup() {
  
  

  cols = 12;
  filas = 31;

  datos = loadStrings("alemaniaweather.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
  }
}


public void draw() {
  background(95, 95, 100);

  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {

        if (nums == 281) {
          ellipse(x1, y1, 30, 30);
        }

        micumpleanos = dia[281][0];
        fecha = dia[nums][0];
        tmax = PApplet.parseFloat(dia[nums][1]);
        tmaxima = dia[nums][1];
        tmin = PApplet.parseFloat(dia[nums][3]);
        tminima = dia[nums][3];
        hmax = PApplet.parseFloat(dia[nums][7]);
        hmin = PApplet.parseFloat(dia[nums][9]);
        visimed = PApplet.parseFloat(dia[nums][14]);
        vimed = dia[nums][14];
        visimin = PApplet.parseFloat(dia[nums][15]);
        vimin = dia[nums][15];
        vienmax = PApplet.parseFloat(dia[nums][16]);
        vienmed = PApplet.parseFloat(dia[nums][17]);
        alw(x1, y1, micumpleanos, fecha, tmax, tmaxima, tmin, tminima, hmax, hmin, visimed, vimed, visimin, vimin, vienmax, vienmed);
      }
    }
  }
}
public void alw(float x1, float y1, String micumpleanos, String fecha, float tmax, String tmaxima, float tmin, String tminima, float hmax, float hmin, float visimed, String vimed, float visimin, String vimin, float vienmax, float vienmed) {

  float angulo, conversion;
  int cel, azul, rojo, crema;

  cel = color(113, 156, 177);
  azul = color(49, 72, 91);
  rojo = color(200, 84, 67);
  crema = color(236, 220, 210);

  angulo = 0;
  conversion = angulo * (TWO_PI/360);

  //VIENTO MEDIO rotacion color azul
  pushMatrix();
  conversion = vienmed * 2 * (TWO_PI/360);
  translate(x1, y1);
  rotate(- conversion);
  noFill();
  strokeWeight(1);
  stroke(azul);
  rect(0, 0, vienmax * 4, vienmax * 4); //VIENTO MAXIMO 
  popMatrix();

  //TEMPERATURA MAXIMA color crema
  pushMatrix();
  angulo = 0;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);  
  fill(crema, 200);
  stroke(crema);
  strokeWeight(1);
  rectMode(CENTER);
  triangle(15, 0, - 15, 0, 0, - tmax);
  popMatrix();

  //VISIBILIDAD MEDIA color celeste
  angulo = 90;
  conversion = angulo * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);  
  fill(cel, 200);
  stroke(crema);
  strokeWeight(1);
  triangle(15, 0, - 15, 0, 0, visimed);
  popMatrix();

  //VISIBILIDAD MINIMA color azul
  pushMatrix();
  angulo = - 90;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);  
  fill(azul, 200);
  stroke(crema);
  strokeWeight(1);
  triangle(15, 0, -15, 0, 0, visimin);
  popMatrix();

  //TEMPERATURA MINIMA color rojo
  pushMatrix();
  angulo = 0;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);  
  fill(rojo, 200);
  strokeWeight(1);
  stroke(crema);
  triangle(15, 0, - 15, 0, 0, tmin);
  popMatrix();

  //HUMEDAD MINIMA rotacion color crema
  pushMatrix();
  conversion = hmin * (TWO_PI/360);
  translate(x1, y1);
  rotate(conversion);
  noFill();
  strokeWeight(1);
  stroke(cel);
  rect(0, 0, hmax/2, hmax/2); //HUMEDAD MAXIMA
  popMatrix();

  //MI CUMPLEA\u00d1OS
  pushMatrix();
  translate(350, 327);
  fill(255);
  textSize(10);
  text(micumpleanos, 0, 0);
  popMatrix();
}
  public void settings() {  size(480, 1300);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "s13c02ange" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

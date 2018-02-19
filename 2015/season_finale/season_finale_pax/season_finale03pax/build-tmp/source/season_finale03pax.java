import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.pdf.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class season_finale03pax extends PApplet {



int cols, filas;
int  ctt, cro, con, b;
String datos [];
String dia [][];




public void setup() {
  
    
  datos = loadStrings("seul_2002.csv"); 
  dia = new String[datos.length][24];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
  

  cols = 36;
  filas = 10;

  ctt = color(56,84,110);
  cro = color(219,108,80);
  con = color(163,11,2);
  b = color(255);
 


  
  
}

public void draw() {
//beginRecord(PDF,"seul_2002.pdf");
  background(b);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums =1+ y+x*filas;
      if ((nums >= 0) && (nums <= 366)) {
      String fecha = dia [nums] [0];
      float tempmax = PApplet.parseFloat(dia[nums] [1]);
      float tempmed = PApplet.parseFloat(dia[nums] [2]);
      float tempmin = PApplet.parseFloat(dia[nums][3]);
      float hummin = PApplet.parseFloat(dia[nums] [9]);
      float hummed = PApplet.parseFloat(dia[nums] [8]);
      float hummax = PApplet.parseFloat(dia[nums] [7]);
      float maxvis = PApplet.parseFloat(dia[nums] [13]);
      float minvis = PApplet.parseFloat(dia[nums] [15]);
      float maxpresion = PApplet.parseFloat(dia[nums] [10]);
      float minpresion = PApplet.parseFloat(dia[nums] [12]);

      
      seoul(x1, y1, fecha, hummax, hummed, hummin, tempmin, tempmed, tempmax, maxvis, minvis, maxpresion, minpresion);
    }
    }
  }
   
//endRecord();
 //exit();
 
 
}
public void seoul(float x1, float y1, String fecha, float hummed, float tempmed, float hummax, float hummin, float tempmin, float tempmax, float maxvis, float minvis, float maxpresion, float minpresion) {

  pushMatrix();
  translate(x1, y1); 
  float mapmaxvis = map (maxvis, 0, 10, 1, 60); 
  float mapminvis = map (minvis, 0, 10, 1, 50); 
  float maptempmax = map (tempmax, -7, 34, 5, 100);
  float maptempmax2 = map (tempmax, -7, 34, 0, 255);
  float maptempmin = map (tempmin, -15, 26, 5, 100);  
  float maphummax = map (hummax, 61, 100, 0, 20);
  float maphummin = map (hummin, 14, 89, 0, 20);
  float mapmaxpresion = map (maxpresion, 998, 1041, 0, 25);
  float mapminpresion = map (minpresion, 990, 1037, 0, 25);
  

  // fill(24,214,205,maptempmax2);
  // noStroke();
  // rectMode(CENTER);
  // rect(0, 0, mapmaxvis, mapminvis);//cuadrados

  // stroke(ctt);
  // strokeWeight(15);
  // line(maptempmax, 0, maptempmin, 0 );//lienas verdes

  // stroke(cro);
  // strokeWeight(6);
  // line(0,mapmaxpresion,0,maphummax);
  
  stroke(con);
  strokeWeight(4);
  line(mapminpresion,0,maphummin,0);
  stroke(255);
  point(0, 0);
  popMatrix();
}
  public void settings() {  size(1920, 400);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "season_finale03pax" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

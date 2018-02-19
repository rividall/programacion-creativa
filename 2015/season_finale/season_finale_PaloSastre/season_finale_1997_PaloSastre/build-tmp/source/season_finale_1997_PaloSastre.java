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

public class season_finale_1997_PaloSastre extends PApplet {



String datos[];
String dia[] [];
int r, t, n, a, g;

int cols, filas;
int i;

String eventos;
float tempmax, tempmin, humedadmax, visibmax, velrafagas;

public void setup(){
  
  
  datos = loadStrings("clima1997beijing.csv");
  dia = new String[datos.length][22];
  
  cols = 120;
  filas = 3;
  
  i = 0;
  
  r = color (255, 151, 161); //rosado
  t = color (61, 177, 171); //turquesa
  n = color (0); //negro
  a = color (218, 232, 29); //amarillo
  g = color (230, 230, 229); //gris
  
  for (int i = 0; i < datos.length; i ++) {
    dia[i]=datos[i].split(",");
  }
}

public void draw(){
  beginRecord(PDF, "Beijing_1997.pdf");
  
  background(255);
  
  for (int x = 0; x < cols; x++){
    for (int y = 0; y < filas; y++){
      float x1 = x * (width/cols) + (width/(cols*2)); //posicion relativa con el ancho
      float y1 = y * (height/filas) + (height/(filas*2)); //posicion relativa con el alto
      int nums = 1 + y + x * filas;
      if ((nums >= 0)&& (nums <= 365)){
        tempmax = PApplet.parseFloat (dia[nums][1]);
        tempmin = PApplet.parseFloat (dia[nums][3]);
        humedadmax = PApplet.parseFloat (dia[nums][7]);
        visibmax = PApplet.parseFloat (dia[nums][13]);
        velrafagas = PApplet.parseFloat (dia[nums][18]);
        eventos = dia[nums][21];
        
        beijing1997(x1, y1, tempmax, tempmin, humedadmax, visibmax, velrafagas, eventos);
 
      }
    }
  }
  endRecord();
  //exit();
}
public void beijing1997(float x1, float y1, float tempmax, float tempmin, float humedadmax, float visibmax, float velrafagas, String eventos){

  pushMatrix();
    translate(x1,y1);
    float maphumedadmax = map (humedadmax, 23, 100, 2, 40);
    float maptempmin = map (tempmin, -13, 27, 50, 2);
    float maptempmax = map (tempmax, -2, 42, 2, -50);
    float mapvisibmax = map (visibmax, 2, 31, 150, 1);
    float mapvelrafagas = map (velrafagas, 0, 93, 0, 35); 
    
  //Circulos amarillos   
    if (eventos.equals("Nieve")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Lluvia")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla-Nieve")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla-Lluvia")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Lluvia-Tormenta")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Tormenta")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla-Lluvia-Tormenta")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    } 
    
  //circulos grises
    stroke(g);
    strokeWeight(mapvelrafagas);
    if (mapvelrafagas <= 20){
      // noStroke();
      strokeWeight(4);
      stroke(255, 0, 255);
    }
    fill(156, 156, 156, mapvisibmax);
    ellipse(0, 0, maphumedadmax, maphumedadmax);
    
   //lineas turquesas
     stroke(t);
     strokeWeight(2);
     line(0, 0, 0, maptempmin);
     
   //lineas rosadas
   stroke(r);
   strokeWeight(2);
   line(0, 0, 0, maptempmax);

  popMatrix();
}
  public void settings() {  size(1200,400);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "season_finale_1997_PaloSastre" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

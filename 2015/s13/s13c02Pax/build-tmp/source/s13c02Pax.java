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

public class s13c02Pax extends PApplet {

//UDD - Expresion Digital II
//s13c02Pax
//Creaci\u00f3n de una visualizaci\u00f3n de datos con una base de datos del clima de Seoul en el a\u00f1o 2014.


int cols, filas;
int ct, cr, cg, cb, ctt, cro, crr, croo, con, lecolor, fcolor, cc, ncolor, cto, ce;
String datos [];
String dia [][];
float amt, al;
PFont f, fo;



public void setup() {
  
  
  f = createFont("Vulpes", 11);
  fo = createFont("Vulpes", 14);
  
  datos = loadStrings("seoul_korea_weather04.csv"); 
  dia = new String[datos.length][24];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
  
  al = 100;
  cols = 12;
  filas = 31;
  fcolor = color(250,250,245);
  cto = color(0, 176, 135);
  ct = color(6,255,192);
  cr = color(232,1,20);
  cg = color(210); 
  cb = color(255);
  ctt = color(28,153,109);
  cro = color(255,51,130);
  crr = color(153,47,78);
  croo = color(232,180,196);
  con = color(255,144,51,180);
  ce = color (185,255,250);
  cc = color(100, 255, 250, 180);
  lecolor = lerpColor(cr,ctt,amt);
  ncolor = lerpColor(cc,croo,amt);
  amt = 1;
  
  
}

public void draw() {
 // beginRecord(PDF,"pruebacertamen16.pdf");
  background(fcolor);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums =1+ y+x*filas;
      if ((nums >= 0) && (nums <= 365)) {
      String fecha = dia [nums] [0];
      float tempmax = PApplet.parseFloat(dia[nums] [1]);
      float tempmed = PApplet.parseFloat(dia[nums] [2]);
      float tempmin = PApplet.parseFloat(dia[nums][3]);
      float hummin = PApplet.parseFloat(dia[nums] [9]);
      float hummed = PApplet.parseFloat(dia[nums] [8]);
      float hummax = PApplet.parseFloat(dia[nums] [7]);
      float maxvis = PApplet.parseFloat(dia[nums] [13]);
      float minvis = PApplet.parseFloat(dia[nums] [15]);
      float lluvias = PApplet.parseFloat(dia[nums] [19]);
      float maxviento = PApplet.parseFloat(dia[nums] [16]);
      float minviento = PApplet.parseFloat(dia[nums] [17]);
      float maxpresion = PApplet.parseFloat(dia[nums] [10]);
      float minpresion = PApplet.parseFloat(dia[nums] [12]);
    
      
      
  
      /*fill(cg);
      noStroke();
      ellipse(x1, y1, 5, 5);
      fill(cr);
      textAlign(CENTER);
      text(nums, x1, y1);*/
      
      seoul(x1, y1, fecha, hummax, hummed, hummin, tempmin, tempmed, tempmax, maxvis, minvis, lluvias, maxviento, minviento, maxpresion, minpresion);
    }
    }
  }
}


 
  
public void seoul(float x1, float y1, String fecha, float hummed, float tempmed, float hummax, float hummin, float tempmin, float tempmax, float maxvis, float minvis, float lluvias, float maxviento, float minviento, float maxpresion, float minpresion) {
  float ap = tempmed * (TWO_PI *360); // es dividido
  float apm = maxvis * (TWO_PI *360); // es dividido

 pushMatrix();
  translate(x1, y1);
  fill(ctt);
  triangle(x1, y1, maxviento/al, maxvis/al, minviento/al, minvis/al); 
  stroke(crr);
  
  // fill(cg);
  // ellipse(x1,y1, maxpresion/al, minpresion/al);
  popMatrix();
  
  // pushMatrix();
  // translate(x1, y1);
  // rotate(apm);

  // fill(ncolor);
  // stroke(croo);
  // ellipse(minviento, maxviento, 5*tempmed*0.1, 5*hummed*0.1);
  // popMatrix();
  
  // pushMatrix();
  // translate(x1, y1);
  // rotate(ap);
  // stroke(crr);
  // line (0, 0, tempmin, tempmax); 

  // popMatrix();

  // pushMatrix();
  // translate(x1, y1);
  // rotate(apm);

  // stroke(con);
  // strokeWeight(3*hummax*0.1);
  // line (0, 0, minvis, 0);
  // popMatrix();
}
  public void settings() {  size(576, 1560);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "s13c02Pax" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

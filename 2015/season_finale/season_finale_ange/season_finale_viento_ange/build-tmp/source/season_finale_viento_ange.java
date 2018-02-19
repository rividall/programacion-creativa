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

public class season_finale_viento_ange extends PApplet {

//UDD - Expresi\u00f3n Digital II
//season_finale_viento_ange
//Velocidad del viento maximo y medio en el 2014 en algunos paises de Europa

//import processing.pdf.*;
int cols, filas, i;

String lisb[], mad[], pari[], rom[], berl[], bern[], vien[], amst[], brus[], lond[]; //lista con un elemento
String dlisb[] [], dmad[] [], dpari[] [], drom[] [], dberl[] [], dbern[] [], dvien[] [], damst[] [], dbrus[] [], dlond[] [];
; //lista con dos elementos

String fecha;
float x1, y2, vmaxlisb, vmaxmad, vmaxpari, vmaxrom, vmaxberl, vmaxbern, vmaxvien, vmaxamst, vmaxbrus, vmaxlond;
float vmedlisb, vmedmad, vmedpari, vmedrom, vmedberl, vmedbern, vmedvien, vmedamst, vmedbrus, vmedlond;

public void setup() {
  
  //beginRecord(PDF, "2.pdf");
  

  cols = 73;
  filas = 5;

  lisb = loadStrings("lisboa.csv"); //archivo con los datos
  dlisb = new String[lisb.length] [22]; //largo y ancho
  for (int i = 0; i < lisb.length; i++) {
    dlisb[i] = lisb[i].split(","); //elemtos separados por comas
  }
  mad = loadStrings("madrid.csv"); //2
  dmad = new String[mad.length] [22]; 
  for (int i = 0; i < mad.length; i++) {
    dmad[i] = mad[i].split(",");
  }
  pari = loadStrings("paris.csv"); //3
  dpari = new String[pari.length] [22]; 
  for (int i = 0; i < pari.length; i++) {
    dpari[i] = pari[i].split(",");
  }
  rom = loadStrings("roma.csv"); //4
  drom = new String[rom.length] [22]; 
  for (int i = 0; i < rom.length; i++) {
    drom[i] = rom[i].split(",");
  }
  berl = loadStrings("berlin.csv"); //5
  dberl = new String[berl.length] [22];
  for (int i = 0; i < berl.length; i++) {
    dberl[i] = berl[i].split(",");
  }
  bern = loadStrings("berna.csv"); //6
  dbern = new String[bern.length] [22];
  for (int i = 0; i < bern.length; i++) {
    dbern[i] = bern[i].split(",");
  }
  vien = loadStrings("viena.csv"); //7
  dvien = new String[vien.length] [22]; 
  for (int i = 0; i < vien.length; i++) {
    dvien[i] = vien[i].split(",");
  }
  amst = loadStrings("amsterdam.csv"); //8
  damst = new String[amst.length] [22]; 
  for (int i = 0; i < amst.length; i++) {
    damst[i] = amst[i].split(",");
  }
  brus = loadStrings("bruselas.csv"); //9
  dbrus = new String[brus.length] [22]; 
  for (int i = 0; i < brus.length; i++) {
    dbrus[i] = brus[i].split(",");
  }
  lond = loadStrings("londres.csv"); //10
  dlond = new String[lond.length] [22]; 
  for (int i = 0; i < lond.length; i++) {
    dlond[i] = lond[i].split(",");
  }
}


public void draw() {
  background(47, 53, 73);

  for (int x = 5; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas-150) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {

        vmaxlisb = PApplet.parseFloat(dlisb[nums][16]);
        vmaxmad = PApplet.parseFloat(dmad[nums][16]);
        vmaxpari = PApplet.parseFloat(dpari[nums][16]);
        vmaxrom = PApplet.parseFloat(drom[nums][16]);
        vmaxberl = PApplet.parseFloat(dberl[nums][16]);
        vmaxbern = PApplet.parseFloat(dbern[nums][16]);
        vmaxvien = PApplet.parseFloat(dvien[nums][16]);
        vmaxamst = PApplet.parseFloat(damst[nums][16]);
        vmaxbrus = PApplet.parseFloat(dbrus[nums][16]);
        vmaxlond = PApplet.parseFloat(dlond[nums][16]);

        vmedlisb = PApplet.parseFloat(dlisb[nums][17]);
        vmedmad = PApplet.parseFloat(dmad[nums][17]);
        vmedpari = PApplet.parseFloat(dpari[nums][17]);
        vmedrom = PApplet.parseFloat(drom[nums][17]);
        vmedberl = PApplet.parseFloat(dberl[nums][17]);
        vmedbern = PApplet.parseFloat(dbern[nums][17]);
        vmedvien = PApplet.parseFloat(dvien[nums][17]);
        vmedamst = PApplet.parseFloat(damst[nums][17]);
        vmedbrus = PApplet.parseFloat(dbrus[nums][17]);
        vmedlond = PApplet.parseFloat(dlond[nums][17]);

        vmax(x1, y1, vmaxlisb, vmaxmad, vmaxpari, vmaxrom, vmaxberl, vmaxbern, vmaxvien, vmaxamst, vmaxbrus, vmaxlond);
        // vmed(x1, y1, vmedlisb, vmedmad, vmedpari, vmedrom, vmedberl, vmedbern, vmedvien, vmedamst, vmedbrus, vmedlond);
      }
    }
  }
  //endRecord();
}
public void vmax(float x1, float y1, float vmaxlisb, float vmaxmad, float vmaxpari, float vmaxrom, float vmaxberl, float vmaxbern, float vmaxvien, float vmaxamst, float vmaxbrus, float vmaxlond) {


  float angulo, conversion;

  angulo = 0;
  conversion = angulo * (TWO_PI/360);

  pushMatrix();
  angulo = vmaxlisb *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 - 65);
  rotate(conversion);  
  fill(250, vmaxlisb*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxmad *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 5);
  rotate(conversion);  
  fill(250, vmaxmad*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxpari *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 75);
  rotate(conversion);  
  fill(250, vmaxpari*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxrom *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 145);
  rotate(conversion);  
  fill(250, vmaxrom*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxberl *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 215);
  rotate(conversion);  
  fill(250, vmaxberl*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxbern *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 285);
  rotate(conversion);  
  fill(250, vmaxbern*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxvien *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 355);
  rotate(conversion);  
  fill(250, vmaxvien*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxamst *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 425);
  rotate(conversion);  
  fill(250, vmaxamst*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxbrus *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 495);
  rotate(conversion);  
  fill(250, vmaxbrus*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmaxlond *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 565);
  rotate(conversion);  
  fill(250, vmaxlond*5);
  noStroke();
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();
}
public void vmed(float x1, float y1, float vmedlisb, float vmedmad, float vmedpari, float vmedrom, float vmedberl, float vmedbern, float vmedvien, float vmedamst, float vmedbrus, float vmedlond) {

  float angulo, conversion;
  int cel;
  cel = color(120, 164, 187);

  pushMatrix();
  angulo = vmedlisb *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 - 65);
  rotate(conversion);  
  noFill();
  strokeWeight(0.5f);
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedmad *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 5);
  rotate(conversion);  
  noFill();
  stroke(cel);
  ;
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedpari *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 75);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedrom *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 145);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedberl *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 215);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedbern *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 285);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedvien *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 355);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedamst *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 425);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedbrus *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 495);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();

  pushMatrix();
  angulo = vmedlond *2;
  conversion = angulo * (TWO_PI/360);
  translate(x1, y1 + 565);
  rotate(conversion);  
  noFill();
  stroke(cel);
  triangle(5, 0, -5, 0, 0, -15);
  popMatrix();
}
  public void settings() {  size(1000, 800);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "season_finale_viento_ange" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

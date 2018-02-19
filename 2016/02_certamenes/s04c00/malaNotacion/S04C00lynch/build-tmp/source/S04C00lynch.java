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

public class S04C00lynch extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Ricardo Vidal Lynch
// s04c00lynch00

/*
No hay descripci\u00f3n general de lo que se ver\u00e1 al correr el programa, tampoco de c\u00f3mo se usa en el caso de haber interacci\u00f3n 
*/

int lin2 = width / 6; // esto pasa porque width no est\u00e1 con el valor, este valor lo toma en la l\u00ednea 18, cuando entras par\u00e1metros al size
int colT[] = {0, 100, 200}; // array para los colores del patr\u00f3n de tri\u00e1ngulos
int colRay = 42; //variable para degradado colores de l\u00ednea de encima
int a = 0; // variables para tener estados de presi\u00f3n
int q = 0; // de las teclas a y q
int click = 0; // variable estado del click
  // inicializar funci\u00f3n pdf

public void setup() { 
   //la relaci\u00f3n era de 4x5 y no de 5x4
  background(0);
}

public void draw() {
  int lin = width / 6; // luego de size puedes hacer esto, y as\u00ed no tener que declarar e inicalizar a cada ciclo del draw
  println(lin2); // debug del error anterior
  int rayL[] =  {lin, lin * 2, lin * 3, lin * 4, lin * 5}; // definido aca para poder tomar valos de lin
  // array que divide la l\u00ednea en 5 partes exactas
  // beginRecord(PDF, "s04c00LYNCH01.pdf"); // begin record
  
  background(0); 
  for (int i = 0; i < width; i += 10) {
    for (int j = 0; j < height; j += 10) {
      noStroke();
      //si esta l\u00ednea no va, no va escrita
      //fill(i/2, j/2, 255);    // doble for loop que rellena el fondo de cuadrados tipo 
      if(click == 0){            // hormiguitas de tele de 2 opciones de color, relacionado al click
        fill(random(255));
      } else if(click == 1) {
        float colF = random(255);
        fill(colF, colF, 255);
      }
      rect(i, j, random(10, 20), random(10, 20));
    }
  }



  for (int i = 0; i < width; i += 40) {
    for (int j = 0; j < height; j += 40) {  // este otro doble for dibuja el patr\u00f3n 
      patron(i, j);                    // de tri\u00e1ngulos, definido en una funci\u00f3n
    }                                  // en la otra pesta\u00f1a
  }
  /* aca se dibuja la l\u00ednea en degrade que va encima */
  strokeWeight(50);
  stroke(colRay * 6, q, colRay * 6);
  line(0, mouseY / 2.5f, rayL[0], mouseY * 1.5f);
  stroke(colRay * 5, q, colRay * 5);
  line(rayL[0], mouseY * 1.5f, rayL[1], mouseY / 2);
  stroke(colRay * 4, q, colRay * 4);
  line(rayL[1], mouseY / 2, rayL[2], mouseY);
  stroke(colRay * 3, q, colRay * 3);
  line(rayL[2], mouseY, rayL[3], mouseY / 1.5f);
  stroke(colRay * 2, q, colRay * 2);
  line(rayL[3], mouseY / 1.5f, rayL[4], mouseY * 2);
  stroke(colRay, q, colRay);
  line(rayL[4], mouseY * 2, width, mouseY / 2.5f);
  
  /* el color esta definido por el array */
  
  noLoop();
  // endRecord();
}

/* aca estan todas las funciones de teclado, varias letras */
public void keyPressed(){
  if(key == 'a'){
    if(a == 0){  // esto lo uso para generar un estado de variable
      a = 1;       // que cambie con la presi\u00f3n de la tecla
      redraw();
    } else {
      a = 0;
      redraw();
    }
  }
  
  if(key == 'q'){
    if(q == 0){
      q = 255;
      redraw();
    } else {
      q = 0;
      redraw();
    }
  } 
  if(key=='p'){
   redraw();
  }
}

/*  evento de mouse */
public void mousePressed(){
  if (click == 0) {   
    click = 1;
    redraw();
  } else {
    click = 0;
    redraw();
  }
}
/* dibujo del patron de triangulos  */
public void patron(int p, int o) {
  noStroke();
  stroke(80);
  strokeWeight(random(4));
  if (a == 0) {
    fill(colT[2], colT[0], colT[1]);
  } else if (a == 1) {
    fill(colT[0], colT[1], colT[2]);
  }
  triangle(p, o + 20, p + 10, o, p + 20, o + 20);
  
  if (a == 0) {
    fill(colT[0], colT[1], colT[2]);
  } else if (a == 1) {
    fill(colT[1], colT[2], colT[0]);
  }
  triangle(p + 10, o, p + 20, o + 20, p + 30, o);
  
  if (a == 0) {
    fill(colT[1], colT[2], colT[0]);
  } else if (a == 1) {
    fill(colT[2], colT[0], colT[1]);
  }
  triangle(p + 20, o + 20, p + 30, o, p + 40, o + 20);
  
  if (a == 0) {
    fill(colT[0], colT[2], colT[2]);
  } else if (a == 1) {
    fill(colT[2], colT[1], colT[0]);
  }
  triangle(p, o + 20, p + 10, o + 40, p + 20, o + 20);
  
  if (a == 0) {
    fill(colT[2], colT[2], colT[0]);
  } else if (a == 1) {
    fill(colT[1], colT[2], colT[0]);
  }
  triangle(p + 20, o + 20, p + 10, o + 40, p + 30, o + 40);
  
  if (a == 0) {
    fill(colT[2], colT[0], colT[2]);
  } else if (a == 1) {
    fill(colT[1], colT[2], colT[0]);
  }
  triangle(p + 20, o + 20, p + 40, o + 20, p + 30, o + 40);
}
  public void settings() {  size(1200, 1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "S04C00lynch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

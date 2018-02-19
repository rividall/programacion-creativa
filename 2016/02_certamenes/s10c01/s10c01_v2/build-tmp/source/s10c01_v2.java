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

public class s10c01_v2 extends PApplet {

// Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
// Francisco Barr\u00eda
// s10c01

/*
Carrusel doble cruzado de l\u00edneas blancas, con variaci\u00f3n en \u00e1ngulo y forma seg\u00fan per\u00edodos distintos (T1 = 2,5, T2 = 7,5).
 Adicionalmente el fondo es una grilla de esferas sin fondo de color arco\u00edris oscilante, que pulsan cambiando su tama\u00f1o.
 Se intent\u00f3 usar class para trabajar los voids, pero el c\u00f3digo se volvi\u00f3 muy complejo y la conversi\u00f3n a class se volvi\u00f3 muy hostil.
 */


int i, j;                                 // i&j corresponden a las coordenadas para la grilla de esferas.
float a, b, e, k, x, y, x1, y1, y2;      
boolean d, h;                             // On/Off que producen las variaciones.

Objeto o;

public void setup() {
  
  colorMode(HSB, 100);                     // HSB para facilitar el cambio del color c1.
  o = new Objeto();                        // Indicar que o, corresponde a Objeto.
}

public void draw() {

  background(0, 0, 35);
  noFill();

  o.aumen();                          // Aqui estan las variables que crean el movimiento de las figuras y grillas.
  o.grilla();                         // Grilla de esferas de colores arcoiris.
  o.lineas();                         // Grilla de las lineas blancas en constante movimiento.
  o.timer1();                         // Contiene las variables de cambio para (d).
  o.timer2();                         // Contiene las variables de cambio para (h).


  if (frameCount % 150 == 0) {              // Gatillante para cambio cada 2,5 seg (Tama\u00f1o).

    d=!d;
  }
  if (frameCount % 450 == 0) {              // Gatillante para cambio cada 7,5 seg (Cono).

    h=!h;
  }
}
class Objeto {
  int f;                                           
  float a, b, e, k, x1, y1, y2;                                                                    
  int c1, c2;

  Objeto() {
    x = 0;  
    y = 0;    
    a = 0;     
    b = 0;   
    c2 = color (0, 0, 100);
  }
  public void aumen() {                    // a y b son variables que crean el movimiento y cambian el color.
    a++;                                                            
    b++;
    x1= -e;                         // Variacion en las lineas blancas (leve diagonalidad).
    y1 = 50+ e;                     // Cima grilla lineas blancas, con variacion periodica.                                             
    y2 = 550- e;                    // Sima grilla lineas blancas, con variacion periodica.
    if (b>200) {                    // Necesitaba que b siguiera un ciclo de (0-200) para cambiar el color.
      b*=0;
    }
  }
  public void grilla() {                   // Doble for de elipses creciendo en tama\u00f1o y cambiando de color.
    strokeWeight(8);
    for (i= 0; i<= width; i+= 120) {
      for (j= 0; j<= height; j+= 120) {
        c1= color (b/2, 100, 70);   
        stroke(c1);
        ellipse (i, j, 40+14*sin(a/30), 40+14*sin(a/30));
      }
    }
  }


  public void lineas() {           /* Malla de lineas blancas en una grilla, con dos funciones,
                               con sus parametros invertidos para formar una cruz.*/
    stroke(c2);
    strokeWeight(5);
    for (x = 0; x < width; x+=50) {
      line(y1, (width/2)-260*sin(((a/20)+x)), 
        y2, (width/2)-260*sin(((a+x1)/20)+x));
    }

    for (x = 0; x<width; x+=50) {
      line((width/2)-260*sin(((a/20)+x)*k), y1, // La variable (k) logra el cono.
        (width/2)-260*sin(((a+x1)/20)+x), y2);
    }
  }

  public void timer1() {                // Movimiento suave del cambio de grilla.
    if (d == true) {
      f = 0;
      e = lerp(e, f, .05f);
    }
    if (d == false) {
      f = 150;
      e = lerp(e, f, .05f);
    }
  }
  public void timer2() {                // Cambio a cono.
    if (h == true) {
      k = 0;
    }
    if (h == false) {
      k = 1;
    }
  }
}
  public void settings() {  size (600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "s10c01_v2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

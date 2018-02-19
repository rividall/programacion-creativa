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

public class s05t00anamaria extends PApplet {

//Expresi\u00f3n Digital 2 - Dise\u00f1o Digital - UDD - 2016
//Ana Mar\u00eda Ortiz
//s05t00anamaria

/* El c\u00f3gigo muestra una grilla de 12 x 9 columnas, en la que en sus intersecciones se dibujar\u00e1n las figuras.
El c\u00f3digo consta de 4 funciones distintas (rombo, punto, tri\u00e1ngulo y flecha), todas con una letra del teclado 
determinada para hacer aparecer y desaparecer la figura, y con distintas variaciones a trav\u00e9s del movimiento 
horizontal o vertical del mouse.*/ 

boolean rombo, punto, triangulo, flecha;                 //declarar que las figuras funcionar\u00e1n como boolean


int w = 20;                                              //declarar valor para entero w    
int q = 10;                                              //declarar valor para entero q
int h = 5;                                               //declarar valor para entero h

int am, cal;                                                //declarar variable color amarillo y calipso

public void setup() {

                                          //tama\u00f1o del canvas
  rectMode(CENTER);                                      //las figuras se comenzar\u00e1n a dibujar desde el centro
  rombo = true;                                          //al ejecutar el programa el rombo comenzar\u00e1 en verdadero por lo que se ver\u00e1 desde un principio
  punto = true;                                          //al ejecutar el programa el punto comenzar\u00e1 en verdadero por lo que se ver\u00e1 desde un principio
  triangulo = true;                                      //al ejecutar el programa el tri\u00e1ngulo comenzar\u00e1 en verdadero por lo que se ver\u00e1 desde un principio
  flecha = false;                                        //al ejecutar el programa la flecha comenzar\u00e1 en falso por lo que no se ver\u00e1

  am = color(251, 234, 46);                              //inicializar color amarillo
  cal = color(46, 215, 251);                             //inicializar color calipso
}  

public void draw() {
  background(255);                                       //color fondo blanco
  for (int x = 0; x <= width; x += width/11) {           //grilla de 12 columnas en el eje x
    for (int y = 0; y <= height; y += height/8) {        //grilla de 9 columnas en el eje y
      if (rombo == true) {                               //si el rombo es verdadero, se dibujar\u00e1 de a cuerdo a la funci\u00f3n siguiente
        rombo(x, y, 20, 10);
      } /*else {                                           //de lo contrario (si es falso), se borrar\u00e1
        rombo = false;
      }*/
      if (punto == true) {                               //si el punto es verdadero, se dibujar\u00e1 de a cuerdo a la funci\u00f3n siguiente
        punto(x, y, q);
      } /*else {                                           //de lo contrario (si es falso), se borrar\u00e1
        punto = false;
      }*/
      if (triangulo == true) {                           //si el tri\u00e1ngulo es verdadero, se dibujar\u00e1 de a cuerdo a la funci\u00f3n siguiente
        triangulo(x, y, 15);
      }/* else {                                           //de lo contrario (si es falso), se borrar\u00e1
        triangulo = false;
      }*/
      if (flecha == true) {                              //si la flecha es verdadera, se dibujar\u00e1 de a cuerdo a la funci\u00f3n siguiente
        flecha(x, y, q, h);
      }/* else {                                           //de lo contrario (si es falso), se borrar\u00e1
        flecha = false;
      }*/
    }
  }
}

public void rombo(int posiX, int posiY, int w, int q) {         //funci\u00f3n del rombo
  float rom = map(mouseX, 0, width, 2, 5);               //si se mueve el mouse en el eje x, el ancho del stroke del rombo variar\u00e1 entre 2 y 5
  noFill();                                             //sin relleno
  strokeWeight(rom);                                     //el stroke variar\u00e1 de a cuerdo a la funci\u00f3n rom, es decir entre 2 y 5
  stroke(am);                                            //stroke color amarillo
  quad(posiX + q, posiY, posiX + w, posiY + q, posiX + q, posiY + w, posiX, posiY + q); //rombo en el centro del m\u00f3dulo
}

public void punto(int posiX, int posiY, int q) {                //funci\u00f3n del punto
  float punt = map(mouseX, 0, width, 5, 0);              //si el mouse se mueve en el eje x, el ancho del stroke variar\u00e1 entre 5 y 0
  strokeWeight(punt);                                   //el stroke variar\u00e1 seg\u00fan la funci\u00f3n punt, es decir, entre 5 y 0
  stroke(cal);                                          //stroke color calipso
  point(posiX + q, posiY + q);                          //punto en el centro del rombo
}

public void triangulo(int posiX, int posiY, int size) {         //funci\u00f3n del tri\u00e1ngulo
  float trian = map(mouseY, 0, height, size / 2, size);  //si el mouse se mueve en el eje y, el fill cambiar\u00e1 de tama\u00f1o entre la mitad y su tama\u00f1o completo
  fill(am);                                             //relleno color amarillo que variar\u00e1 seg\u00fan la funci\u00f3n trian
  noStroke();                                           //sin stroke
  triangle(posiX, posiY - trian, posiX - trian, posiY - trian, posiX - trian, posiY); //tri\u00e1ngulo esquina superior izquierda
}

public void flecha(int posiX, int posiY, int q, int h) {        //funci\u00f3n de la flecha
  float fle = map(mouseY, 0, height, 0, 255);             //si el mouse se mueve en el eje y, la opacidad de la flecha variar\u00e1 
  fill(cal, fle);                                       //relleno color calipso que variar\u00e1 su opacidad seg\u00fan la funci\u00f3n fle
  noStroke();                                           //sin stroke
  triangle(posiX + q, posiY, posiX + q, posiY + q, posiX, posiY + q); //tri\u00e1ngulo de la flecha 

  strokeWeight(2);                                      //stroke grosor 2px
  stroke(cal, fle);                                     //stroke color calipso que variar\u00e1 su opacidad seg\u00fan la funci\u00f3n fle
  line(posiX - q, posiY - q, posiX + h, posiY + h);     //l\u00ednea de la flecha 
}

public void keyPressed() {                                      

  if (key == 'a') {                                      //si se apreta en el teclado la letra a
    rombo = !rombo;                                      //el rombo ser\u00e1 verdadero o falso, es decir se dibujar\u00e1 o desaparecer\u00e1
  } 
  if (key == 's') {                                      //si se apreta en el teclado la letra s
    punto = !punto;                                      //el punto ser\u00e1 verdadero o falso, es decir se dibujar\u00e1 o desaparecer\u00e1
  } 
  if (key == 'd') {                                      //si se apreta en el teclado la letra d
    triangulo = !triangulo;                              //el tri\u00e1ngulo ser\u00e1 verdadero o falso, es decir se dibujar\u00e1 o desaparecer\u00e1
  } 
  if (key == 'f') {                                      //si se apreta en el teclado la letra f
    flecha = !flecha;                                    //la flecha ser\u00e1 verdadera o falsa, es decir se dibujar\u00e1 o desaparecer\u00e1
  }
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s05t00anamaria" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

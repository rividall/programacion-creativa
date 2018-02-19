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

public class s04c00Javiera extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Javiera Ram\u00edrez
// s04c00

/* Una vez que corra el programa lo que se ver\u00e1 ser\u00e1 una serie de figuras 
 (elipses, cuadrados y l\u00edneas) que forman un patr\u00f3n que consta de un fondo 
 blanco, sobre eso hay c\u00edrculos grises repartios equitativamente a lo largo 
 y ancho del canvas. Sobre los c\u00edrculos grises se encuentran l\u00edneas blancas
 que en conjunto crean cruces con un vac\u00edo al medio. En estos vac\u00edos ha c\u00edrculos
 rosados y celestes, que comparten su centro con c\u00edrculos m\u00e1s peque\u00f1os y de 
 colores m\u00e1s oscuros. Adem\u00e1s, sobre cada l\u00ednea y en el centro de cada 
 c\u00edrculo hay cuadrados negros a los cuales se les aplic\u00f3 canal alpha para
 darles transparencia, y un random en tama\u00f1o que hace variar sus radios entre 
 1 y 15 pixeles*/
 
 

public void setup() {
  colorMode(HSB, 360, 100, 100); // Cambia el modo de color del documento de
                                 // de rgb a hsb
  int blanco = color(337, 0, 99); // Variable de color HSB color blanco
  //size(1200, 600); [libreta]
   // [p\u00f3ster] // Se determina el tama\u00f1o del canvas de 900 px de 
  // el canvas no es de relaci\u00f3n 4 x 5
                               // ancho y 1500 px a alto
  background(blanco); // Se determina que el color del fondo es blanco
}

public void draw () {
beginRecord(PDF, "s04c00Javiera_###.pdf");
  noLoop();
  //C\u00cdRCULOS GRISES
  for (int i = 25; i < height; i += 100) {
    for (int h = 25; h < width; h += 100) { // Se declara la posici\u00f3n de las
                                            // figuras con una separaci\u00f3n de 100
                                            // px cada a lo largo y ancho
      int gris = color(337, 0, 85); // Variable de color gris
      //error de sintaxis
      noStroke(); // Se declara que la figura no tiene borde
      fill(gris); // Se declara que el color de fondo de la figura es gris
      ellipse(i, h, 100, 100); // Se crean los c\u00edrculos de 100 px de di\u00e1metro
    }
  }
  //L\u00cdNEAS
  for (int i = 0; i < height; i += 100) {
    for (int h = 0; h < width; h += 100) {
      int blanco = color(337, 0, 99); // Variable de color blanco
      //error de sintaxis
      strokeWeight(3); // Ancho de borde de la l\u00ednea de 3 px
      stroke(blanco); // Color del borde de la l\u00ednea blanco
      strokeCap(ROUND); // Terminaciones de las l\u00edneas son redondas
      line(i-7, h-7, i+7, h+7);
    }
  }

  for (int i = 50; i < height; i += 100) {
    for (int h = 0; h < width; h += 100) {
      int blanco = color(337, 0, 99); // Variable de color blanco
      //error de sintaxis
      strokeWeight(3); // Ancho de borde de la l\u00ednea de 3 px
      stroke(blanco); // Color del borde de la l\u00ednea blanco
      strokeCap(ROUND); // Terminaciones de las l\u00edneas son redondas
      line(i+7, h-7, i-7, h+7);
    }
  }

  for (int i = 0; i < height; i += 100) {
    for (int h = 50; h < width; h += 100) {
      int blanco = color(337, 0, 99); // Variable de color blanco
      //error de sintaxis
      strokeWeight(3); // Ancho de borde de la l\u00ednea de 3 px
      stroke(blanco); // Color del borde de la l\u00ednea blanco
      strokeCap(ROUND); // Terminaciones de las l\u00edneas son redondas
      line(i+7, h-7, i-7, h+7);
    }
  }

  for (int i = 50; i < height; i += 100) {
    for (int h = 50; h < width; h += 100) {
      int blanco = color(337, 0, 99); // Variable de color blanco
      //error de sintaxis
      strokeWeight(3); // Ancho de borde de la l\u00ednea de 3 px
      stroke(blanco); // Color del borde de la l\u00ednea blanco
      strokeCap(ROUND); // Terminaciones de las l\u00edneas son redondas
      line(i-7, h-7, i+7, h+7);
    }
  }
  //C\u00cdRCULOS
  for (int i = 75; i < height; i += 100) {
    for (int h = 75; h < width; h += 100) {
      int celeste = color(199, 85, 57); // Variable de color celeste
      //error de sintaxis
      noStroke(); // Se declara que la figura no tiene borde
      fill(celeste, 200); // Se declara que el color de las elipses es celeste
                          // con un canal alpha de 200
      ellipse(i, h, 50, 50); // Se crean los c\u00edrculos equidistantes entre s\u00ed
                             // de 50 px de di\u00e1metro
      int azul = color(248, 81, 34); // Variable de color azul
      //error de sintaxis
      noStroke(); // se declara que la figura no tiene borde
      fill(azul); // se declara que el color de las elipses es azul
      ellipse(i, h, 30, 30); // Se crean los c\u00edrculos equidistantes entre s\u00ed
                             // de 30 px de di\u00e1metro sobre los c\u00edrculos celestes
    }
  }

  for (int i = 25; i < height; i += 100) {
    for (int h = 25; h < width; h += 100) {
      int rclaro = color(337, 91, 81); // Variable de color rosado claro
      //error de sintaxis
      noStroke(); // Se declara que la figura no tiene borde
      fill(rclaro, 200); // Se declara que la figura es de color rosado claro
      ellipse(i, h, 35, 35); // Se crean los c\u00edrculos equidistantes entre s\u00ed
                             // de 35 px de di\u00e1metro
      int rosado = color(331, 79, 57); // Variable de color rosado
      //error de sintaxis
      noStroke(); // Se declara que la figura no tiene borde
      fill(rosado); // Se declara que el color de la figura es rosado
      ellipse(i, h, 20, 20); // Se crean los c\u00edrculos equidistantes entre s\u00ed
                             // de 20 px de di\u00e1metro sobre los c\u00edrculos 
                             // rosado claro
    }
  }

  //CUADRADOS
  for (int i = 0; i < height; i += 50) {
    for (int h = 0; h < width; h += 50) { // Se distribuyen los puntos centrales
                                          // de los cuadrados que van sobre las
                                          // l\u00edneas blancas
      int negro = color(338, 1, 1); // Variable de color negro
      //error de sintaxis
      float r = random(15); // Se crea un random de m\u00e1ximo 15
      noStroke(); // se declara que la figura no tiene borde
      fill(negro, 100); // Se declara que la figura es de color negro
      rectMode(CENTER); // Se declara que la figura crece desde el centro
                        // en vez de el v\u00e9rtice
      rect(i, h, r, r); // Se crean los cuadrados sobre cada l\u00ednea
                        // con un random de tama\u00f1o que los hace variar entre
                        // 1 y 15 px
    }
  }

  for (int i = 25; i < height; i += 100) {
    for (int h = 25; h < width; h += 100) { // Se distribuyen los puntos centrales
                                            // de los cuadrados que van sobre
                                            // los c\u00edrculos rosados
      int negro = color(338, 1, 1); // Variable de color negro
      //error de sintaxis
      float r = random(15); // Se crea un random de m\u00e1ximo 15
      noStroke(); // se declara que la figura no tiene borde
      fill(negro, 100); // Se declara que la figura es de color negro
      rectMode(CENTER); // Se declara que la figura crece desde el centro
                        // en vez de el v\u00e9rtice 
      rect(i, h, r, r); // Se crean los cuadrados sobre cada c\u00edrculo rosado
                        // con un random de tama\u00f1o que los hace variar entre
                        // 1 y 15 px
    }
  }

  for (int i = 75; i < height; i += 100) {
    for (int h = 75; h < width; h += 100) { // Se distribuyen los puntos centrales
                                            // de los cuadrados que van sobre
                                            // los c\u00edrculos azules
      int negro = color(338, 1, 1); // Variable de color negro
      //error de sintaxis
      float r = random(15); // Se crea un random de m\u00e1ximo 15
      noStroke(); // Se declara que las figuras no tienen borde
      fill(negro, 100); // Se declara que la figura es de color negro
      rectMode(CENTER); // Se declara que la figura crece desde el centro
                        // en vez de el v\u00e9rtice 
      rect(i, h, r, r); // Se crean los cuadrados sobre cada c\u00edrculo azul
                        // con un random de tama\u00f1o que los hace variar entre
                        // 1 y 15 px
    }
  }
}

public void keyPressed(){
  if(key == 's') {
    saveFrame("s04c00Javiera_###.pdf");
  }
}
  public void settings() {  size(500, 100); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s04c00Javiera" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

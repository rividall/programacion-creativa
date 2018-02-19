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

public class s10c01Javiera extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD
// Javiera Ram\u00edrez
// s10c01Javiera

/* Cuando corra el programa se ver\u00e1 un fondo azul y una grilla de 625 objetos que var\u00edan entre elipses y l\u00edneas de borde cuadrado que rotan al rededor de un punto
fijo (individual para cada objeto). La distancia a la que rotan con respecto al punto central va variando cada cierto tiempo, aumentando y disminuyendo constantemente.
Al igual que el radio de giro, el grosor de la figura tambi\u00e9n va cambiando, aumentando y disminuyendo constantemente, pero a un ritmo distinto, lo que crea la ilusi\u00f3n de
que la grilla realiza diferentes movimientos*/

// Declaraci\u00f3n de variables
float  f, g, amt; //amt no est\u00e1 en uso de forma global debe ser declarados en el Constructor
boolean b;
// int nuevovalor, i; //nuevovalor, i no est\u00e1 en uso de forma global
int c1, c2, c3; // no est\u00e1n en uso de forma global deben ser declarados en el Constructor
float radioGiro = 0.01f;
float grosor    = 0.001f;  


Javi[] v = new Javi [625]; 
// Se crea el array con 625 espacios para rellenar con informaci\u00f3n

public void setup() {
/* Aqu\u00ed se crea el canvas de 600x600 px y se crea la grilla de 625 elementos por 
medio de un doble for loop, cada elemento tiene una separaci\u00f3n con el otro de 18 px*/
  
  f = 15;
  g = 10;
  for (int i = 0; i < 25; i++) {
    for (int j = 0; j < 25; j++) {
      int total = j + i * 25;
      float ix = i * 18; //distancia entre los elementos 
      float jy = j * 18; //distancia entre los elementos
      v[total] = new Javi(ix, jy, ix + 5, jy + 5, (int)random(-2, 2), (int)random(-2, 2), total);
    }
  }

  b = true;
}

/* Se dibujan el color de fondo y los objetos de la grilla al por medio de las 
funciones generadas en el class*/
public void draw() {
  background(0xff42405F); // Azul
  translate(width * .15f, height * .15f);


  for (int i = 0; i < v.length; i++) {
    v[i].mover();
    v[i].bordes();
    v[i].linea(f, g);

    if (frameCount % 10 == 0) {radioGiro *= -1;}
    if (frameCount % 30 == 0) {grosor *= -1;}
    if (frameCount % 90 == 0) {b = !b;}

    f+= radioGiro;
    g+= grosor;

    if (b) {
      strokeCap(SQUARE);
    } else {
      strokeCap(ROUND);
    }
  }
}
class Javi { // Se crea la clase
  float x, y, tx, ty, velx, vely, angulo;

  Javi(float x, float y, float tx, float ty, float velx, float vely, float angulo) {
    /*Se conectan las variables del c\u00f3digo principal con las de la clase*/
    this.x = x;
    this.y = y;
    this.tx = tx;
    this.ty = ty;
    this.velx = velx * 0; //velocidad para que se muevan
    this.vely = vely * 0;
    this.angulo = angulo;
    
    c1 = color (0xffFFA7DB); // Rosado 
    c2 = color (0xffFFFCAA); // Amarillo
  }

  public void linea(float nuevovalor, float grosor) { // se crean las figuras
    pushMatrix();
    translate(x, y);
    rotate(angulo);
    amt = map(x, 0, width, 0, 1.5f);
    c3 = lerpColor(c1, c2, amt);
    strokeWeight(grosor);
    stroke(c3, 150); // Colores en degrad\u00e9
    line(nuevovalor, -3, nuevovalor, 3);
    popMatrix();
  }

  public void cap() {
    strokeCap(SQUARE);
  }

  public void mover() { // Se genera el movimiento
    x += velx;
    y += vely;
 // angulo += 0.09; // las l\u00edneas de c\u00f3digo que no se dibujen, no deben ir
    angulo -= 0.09f; // Se determina la velocidad con la que giran los objetos y el sentido (cambia seg\u00fan si el n\u00famero es positivo o nogativo)
  }

 public void bordes() { // instala la grilla en el canvas
    if (x > tx || x < tx) {
      velx *= -1;
    }
    if (y > ty || y < ty) {
      vely *= -1;
    }
  } 
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s10c01Javiera" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class s05t00CataJuez extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Catalina Juez
// s05t00CataJuez
/*
Esta composici\u00f3n consta de m\u00faltiples objetos con opacidad que ese dibujan 
 constantemente, al apretar el bot\u00f3n \u201ca\u201d aparecer\u00e1 un c\u00edrculo blanco lo 
 suficientemente grande como para tapar la pantalla y al volver a apretarlo 
 este desaparecer\u00e1, lo que har\u00e1 que esta composici\u00f3n se vuelva a dibujar. 
 Adem\u00e1s al apretar el bot\u00f3n \u201cz\u201d desaparecen todos los c\u00edrculos de la composici\u00f3n 
 y solo quedar\u00e1n los cuadrados de esta, y al volver a apretar \u201cz\u201d los c\u00edrculos 
 volver\u00e1n a aparecer. Y el \u00faltimo uso del boolean es cuando el mouse pasa la mitad 
 de la pantalla en relaci\u00f3n al eje \u201cy\u201d, este cambia sus colores.
 */

//definir variables
int a;
int c = color(132, 87, 232, 1);
int e = color(78, 90, 229, 1);
int f = color(250, 0, 0, 1);
int g, h; 

//definici\u00f3n de boolean
boolean b;
boolean z;
boolean j;
boolean o = true;
int col, fil, stepx, stepy, t;


public void setup() {
  //tama\u00f1o de la composici\u00f3n y su color de fondo
    
  frameRate(10);
  background(255);

  //cuadrado se dibuja desde el centro
  rectMode(CENTER);

  //explico que mis boolean coresponden a "true", 
  //ademas que mi valor g es igual al mi color c, como h es igual a mi color e
  b = true;
  z = true;
  j = true;
  g = c;
  h = e;
}


public void draw() { 
  background(255);
  //cantidad de fotogramas por segundo
  // esta funci\u00f3n se usa en el void setup frameRate(10);
  for (int x = 0; x <  width; x += width / 12) {
    for (int y = 0; y < height; y += height / 9) {
      noStroke();

      //primer boolean "z", para que parezcan solamente los cuadrados al apretar mi tecla "z"
      if (z == true) {
        fill(g);
        // los colores debr\u00edan est\u00e1r dentro de cada funci\u00f3n
        circulodos(x * 3, y * 3, t, t);
        fill(h);
        // los colores debr\u00edan est\u00e1r dentro de cada funci\u00f3n
        circulo(x * 2, y * 2, height / 2, height / 2);

        fill(255);
        // los colores debr\u00edan est\u00e1r dentro de cada funci\u00f3n
        cuadrado(x * 3, y * 3, t, t); //cuadrado m\u00e1s grande de color blanco

        fill(g);
        // los colores debr\u00edan est\u00e1r dentro de cada funci\u00f3n
        cuadradodos(x * 3, y * 3, t, t); 

        cuadradotres(x * 3, y * 3, t, t); //cuadrado m\u00e1s peque\u00f1o
      }
      if (z == false) {
        fill(255);
        // los colores debr\u00edan est\u00e1r dentro de cada funci\u00f3n
        cuadrado(x * 3, y * 3, t, t); //cuadrado m\u00e1s grande de color blanco

        fill(g);
        // los colores debr\u00edan est\u00e1r dentro de cada funci\u00f3n
        cuadradodos(x * 3, y * 3, t, t); 

        cuadradotres(x * 3, y * 3, t, t); //cuadrado m\u00e1s peque\u00f1o
      }


      //Segundo boolean, al apretar latecla "a", aparece un c\u00edrculo blanco que tapa toda la composici\u00f3n
      if (b == true) {
        fn1();
      }
      if (b == false) {
        fn2();
      }


      //En este ultimo boolean, cuando el mouse pasa la mitad del eje "y" de nuestra composici\u00f3n este cambia de color
      if (mouseY < height/2) {
        o = false;
      } else {
        o = true;
      }

      //defino mis valores g y h como son cuando est\u00e1n en "true"
      if (o == true) {
        g = c; //defino que g es igual a c 
        h = e; //defino que h es igual a e
      }

      //
      if (o == false) {
        g = f; // defino que g cambia a f
        h = f; //defino que h cambia a f
      }
    }
  }

  //for de los puntos que aparecen en mi composici\u00f3n 
  for (int x = 0; x <width; x += width/50) {
    for (int y = 0; y <height; y += height/50) {
      strokeWeight(8); 
      stroke (e); 
      p(x, y, 2, x);
    }
  }
}

//void de mis puntos
public void p(int posX, int posY, float tam, float sw) { 
  float colorp = map(mouseX, 0, width, 60, 255); // el color del stroke de mis puntos cambia de gris a blanco (de izquierda a derecha)
  float t = map(mouseX, 0, width, 0, 2); //cambia el tama\u00f1o de mis puntos de 0 a 2 (de izquierda a derecha)
  strokeWeight(t);
  stroke(colorp);
  point(posX, posY);
}

//void de mi primer c\u00edrculo
public void circulo(int posX, int posY, float t, float sw) {
  ellipse(posX, posY, t, t);
}

//void de mi segundo c\u00edrculo, el cual no aparece ni se nota siempre, puesto que es tapado muchas veces por el cuadrado blanco
public void circulodos(int posX, int posY, float tam, float sw) {
  float t = map(mouseX, 0, width, 2, 100); //El tama\u00f1o de este circulovaria de 0 a 200, de izquierda a derecha
  ellipse(posX, posY, t, t);
}

//void de mi segundo cuadrado
public void cuadrado(int posX, int posY, float tam, float sw) {
  float t = map(mouseY, 0, width, 2, 263); //el tama\u00f1o de este cuadrado varia de abajo hacia arriba (relaci\u00f3n al eje y)
  rect(posX, posY, t, t);
}

public void cuadradodos(int posX, int posY, float tam, float sw) {
  float t = map(mouseX, 0, width, 50, 200); //el tama\u00f1o de este cuadrado varia de eje x, de 50 a 200 (izquierda derecha)
  rect(posX, posY, t, t);
}

public void cuadradotres(int posX, int posY, float tam, float sw) {
  //float c = map(mouseX, 0, width, 78, 132); 
  //float d = map(mouseX, 0, width, 229, 232);
  float t = map(mouseX, 0, width, 0, 100); //el tama\u00f1o de este rect\u00e1ngulo varia de izquierda derecha ( de 0 a 100)
  //fill(c, 87, d, 30); //cambio del valor de color de izquierda derecha (al final esto no se usa debido a que el uso del boolean "o" hace que esto no sea perceptible)
  fill(c); 
  rect(posX, posY, t, t);
}

public void keyPressed() {
  // definici\u00f3n de boolean seg\u00fan el keyPressed
  if (key == 'a') {
    b = !b; // si aprietas "a" tu boolean "true" cambia  "false" (llamado desde el void draw para que la pantalla se ponga blanca)
  }

  if (key == 'z') {
    z = !z; // si aprietas "z" tu boolean "true" cambia  "false"
  }
}

// Void que es llamado por el void draw a trav\u00e9s de un if (donde tambi\u00e9n es llamado el boolean "b" donde se usa la tecla "a")
public void fn1() {
  fill(0);
  ellipse(400, 300, 0, 0);
}

public void fn2() {
  fill(255);
  ellipse(400, 300, 1000, 1000);
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s05t00CataJuez" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

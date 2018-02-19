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

public class s03e02ange extends PApplet {
  public void setup() {
size(400, 400);

background(234, 89, 32);

strokeWeight(4);
stroke(2);
noStroke(); // aqu\u00ed hay un error de sintaxis, dos l\u00edneas antes escribiste funciones para dibujar la l\u00ednea que \u00e9sta funci\u00f3n elimina, para pro
fill(32, 198, 234);
//noFill();
ellipse(width/2, heigth/2, 100, 100); //bien en el uso de variables incluidas en Processing para la ubicaci\u00f3n de la ellipse

/*

Para las entregas solo se necesita el c\u00f3digo necesario,
las l\u00edneas de c\u00f3digo comentadas sirven para prototipar
y debes borrarlas al momento de la entrega, en el caso de la linea 9 //noFill();

Tu c\u00f3digo tiene un error de ortograf\u00eda y no corre, por lo tanto est\u00e1 malo.
El error est\u00e1 en la l\u00ednea 10 al escribir heigth, la variable es height.

Debiste correr el programa antes de hacer el commit, un commit hecho con un programa que no corre, invalida la entrega.

*/
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s03e02ange" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

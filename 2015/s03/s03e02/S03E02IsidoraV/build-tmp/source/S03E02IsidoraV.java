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

public class S03E02IsidoraV extends PApplet {
  public void setup() {
/*
errores
2 entrega: negro y blanco
2 sintaxis: funciones opuestas
2 variables: tama\u00f1o ellipse
1 linea: funciones comentadas
1 notaci\u00f3n: nombre de archivo
*/
size(400, 400);

background(0, 72, 156);

strokeWeight(4);
stroke(2);
noStroke(); // aqu\u00ed hay un error de sintaxis, dos l\u00edneas antes escribiste funciones para dibujar la l\u00ednea que \u00e9sta funci\u00f3n elimina, no deber\u00edan est\u00e1r
fill(103, 155, 53);
//noFill();

ellipse(width/2, height/2, 100, 100);  //bien en el uso de variables incluidas en Processing para la ubicaci\u00f3n de la ellipse.


/*

Para las entregas solo se necesita el c\u00f3digo necesario,
las l\u00edneas de c\u00f3digo comentadas sirven para prototipar
y debes borrarlas al momento de la entrega, en el caso de la linea 9 //noFill();


El uso de variables: palabras que tienen asiganado valores num\u00e9ricos, es lo que haremos constantemente desde las siguientes clases
es muy importante que dirijas el foco a ese tiempo de pensamiento.

Hay un error en la notaci\u00f3n de la ruta de entrega tu archivo debi\u00f3 llamarse s03e02IsidoravColores.pde

*/
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "S03E02IsidoraV" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

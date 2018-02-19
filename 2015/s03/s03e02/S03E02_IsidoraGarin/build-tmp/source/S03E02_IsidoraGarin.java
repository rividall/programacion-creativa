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

public class S03E02_IsidoraGarin extends PApplet {
  public void setup() {
/*
errores
1 entrega: negro 
2 linea: funciones comentadas
2 variables: tama\u00f1o ellipse
1 notaci\u00f3n: nombre de archivo
*/
size(400, 400);

background(27, 204, 167);

strokeWeight(10);
stroke(250);
//noStroke();
fill(128, 255, 130);
//noFill();
ellipse(width/2, height/2, 100, 100); //bien en el uso de variables incluidas en Processing para la ubicaci\u00f3n de la ellipse

/*

Para las entregas solo se necesita el c\u00f3digo necesario,
las l\u00edneas de c\u00f3digo comentadas sirven para prototipar
y debes borrarlas al momento de la entrega, en el caso de la linea
7 //noStroke();
9 //noFill();

Hay un error en la notaci\u00f3n de la ruta de entrega tu archivo debi\u00f3 llamarse s03e02IsidoraGarinColores.pde

*/

    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "S03E02_IsidoraGarin" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

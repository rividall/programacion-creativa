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

public class s03e02palosastre extends PApplet {
  public void setup() {
/*
errores
1 entrega: negro 
8 ortograf\u00eda: espacio entre variables
2 variables: tama\u00f1o ellipse
1 notaci\u00f3n: nombre de archivo
*/
size(500,500);

background(255,151,161);

strokeWeight(30);
stroke(255);
fill(61,177,171);
ellipse(width/2,height/2,100,100); //bien en el uso de variables incluidas en Processing para la ubicaci\u00f3n de la ellipse.


/*

Si bien tu programa corre hay peque\u00f1os detalles de ortograf\u00eda que te diferenciar\u00e1n de una entrega buena a una entrega excelente. 
tuviste el mismo error en 4 l\u00edneas del programa el 66% 

size(500,500);	y deb\u00edo estar escrito  
size(500, 500);	un espacio hace la diferencia

background(255,151,161);
background(255, 151, 161); aqu\u00ed tambi\u00e9n dos espacios

fill(61,177,171);
fill(61, 177, 171); y ac\u00e1 dos m\u00e1s

ellipse(width/2,height/2,100,100);
ellipse(width/2, height/2, 100, 100); tres!

8 espacios que te faltaron, es como si en la vida real escribierastodojuntosinimportarnada.
C\u00f3mo est\u00e1 escrito el c\u00f3digo tiene la misma importancia que el resultado gr\u00e1fico final.

Hay un error en la notaci\u00f3n de la ruta de entrega tu archivo debi\u00f3 llamarse s03e02PalosastreColores.pde

*/

    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s03e02palosastre" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

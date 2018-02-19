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

public class s03e02coloreslaura extends PApplet {
  public void setup() {
/*
errores
1 entrega: negro 
1 ortograf\u00eda: espacio entre funcion
2 variables: posici\u00f3n ellipse
2 variables: tama\u00f1o ellipse
1 notaci\u00f3n: nombre de archivo
*/
size (500, 500);
background(255, 140, 239);
strokeWeight(10);
stroke(255);
fill(251, 255, 158);
rect(125, 125, 200, 200); //no usaste las variables incluidas en Processing para la posici\u00f3n del rect\u00e1ngulo

/*
Si bien tu programa corre hay peque\u00f1os detalles de ortograf\u00eda que te diferenciar\u00e1n de una entrega buena a una entrega excelente. 
en el caso de la linea 6 en d\u00f3nde escribiste:

rect(125, 125, 200, 200); y debi\u00f3 est\u00e1r escrito
rect(width/2-100, height/2-100, 200, 200); de esta manera usas las variables que trae Processing y al restar 100 dejas el rect\u00e1ngulo centrado.

El uso de variables que son palabras que tienen asiganado valores num\u00e9ricos es lo que haremos constantemente desde las siguientes clases
es muy importante que dirijas el foco a ese tiempo de pensamiento.

Otro detalle es en la linea 1

size (500, 500); y debi\u00f3 ser
size(500, 500); un espacio hace la diferencia

Hay un error en la notaci\u00f3n de la ruta de entrega tu archivo debi\u00f3 llamarse s03e02LauraColores.pde

*/
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s03e02coloreslaura" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

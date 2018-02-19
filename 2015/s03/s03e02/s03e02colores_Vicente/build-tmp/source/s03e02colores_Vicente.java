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

public class s03e02colores_Vicente extends PApplet {
  public void setup() {
/*
errores
2 entrega: negro y blanco
1 ortograf\u00eda: espacio entre variables
2 variables: tama\u00f1o ellipse
1 notaci\u00f3n: nombre de archivo
*/
size(400, 400);

background(69, 119, 232);

fill(232, 182, 71);
ellipse(width/2,height/2, 100, 100); //bien en el uso de variables incluidas en Processing para la ubicaci\u00f3n de la ellipse.


/*

Si bien tu programa corre hay peque\u00f1os detalles de ortograf\u00eda que te diferenciar\u00e1n de una entrega buena a una entrega excelente. 
en el caso de la linea 6 en d\u00f3nde escribiste:

ellipse(width/2,height/2, 100, 100);  y deb\u00edo estar escrito
ellipse(width/2, height/2, 100, 100); un espacio hace la diferencia

Otro detalle es al momento de elegir los elementos que tendr\u00edan los colores que elegiste,
el fondo tiene un color y la ellipse est\u00e1 llena con el segundo color, 

pero,

el stroke de la ellipse no lo tomaste encuenta, no est\u00e1 declarado stroke(0); y tampoco est\u00e1 eliminado noStroke();

nuevamente, peque\u00f1os detalles que Processing no da por hecho y que debes tener en cuenta en cada l\u00ednea. 

Hay un error en la notaci\u00f3n de la ruta de entrega tu archivo debi\u00f3 llamarse s03e02VicenteColores.pde
*/
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s03e02colores_Vicente" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class Colores_Max extends PApplet {
  public void setup() {
/*
errores
2 entrega: negro y blanco
2 variables: posici\u00f3n ellipse
2 variables: tama\u00f1o ellipse
1 notaci\u00f3n: nombre de archivo
*/
size(400, 400);

background(41, 128, 185);
noStroke();
fill(46, 204, 113);
ellipse(200, 200, 100, 100); //no usaste las variables incluidas en Processing para la posici\u00f3n de la ellipse

/*

Si bien tu programa corre hay peque\u00f1os detalles de ortograf\u00eda que te diferenciar\u00e1n de una entrega buena a una entrega excelente. 
en el caso de la linea 6 en d\u00f3nde escribiste:

ellipse(200, 200, 100, 100); y debi\u00f3 est\u00e1r escrito
ellipse(width/2, height/2, 100, 100); 
de esta manera usas las variables que trae Processing y te aseguras que al cambiar el tama\u00f1o del canvas siempre est\u00e9 centrado
El uso de variables: palabras que tienen asiganado valores num\u00e9ricos, es lo que haremos constantemente desde las siguientes clases
es muy importante que dirijas el foco a ese tiempo de pensamiento.

Hay un error en la notaci\u00f3n de la ruta de entrega tu archivo debi\u00f3 llamarse s03e02MaxColores.pde
*/

    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Colores_Max" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

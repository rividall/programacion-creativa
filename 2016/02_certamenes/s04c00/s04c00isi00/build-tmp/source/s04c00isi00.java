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

public class s04c00isi00 extends PApplet {

//Expresi\u00f3n digital II - Dise\u00f1o Digital - UDD- 2016
//Isidora Ordo\u00f1ez
//s04c00isi.

/*
Con un doble for loop generar un patr\u00f3n, en este caso el m\u00f3dulo a repetir es
 una figura compuesta de cuatro tri\u00e1ngulos, que en su conjunto forman un cuadrado,
 estos tri\u00e1ngulos no tienen l\u00ednea de contorno y tienen un relleno random dentro de
 un array que se compone por 7 colores distintos. Tambi\u00e9n el patr\u00f3n contiene un 
 for loop para una serie de elipses blancas, todas del mismo tama\u00f1o y con opacidad
 random en un margen de 40% a 100% de opacidad. Luego vemos un segundo doble for loop
 para el cual creamos una elipse de un tercio del tama\u00f1o de la anterior y que se ubicar\u00e1
 al centro del primer conjunto de elipses y dibuj\u00e1ndose elipse por medio. 
 Todos los randoms son solo de n\u00fameros enteros. Por \u00faltimo el c\u00f3digo posee un void 
 Keypressed que logra volver a dibujar el patr\u00f3n al presionar la tecla 'a', guardar 
 como imagen al presionar 's' y salir del programa al presionar cualquier otra tecla.
 */

     //voy a trabajar con pdf,

float q = 25;     //variable 'q' igual a 20.
float w = 50;     //variable 'w' igual a 50.
int c;            //creo variable 'c'.
int blanco; 

int[] colarray = new int[7];   //creo array


public void setup() {
  println("certamen01");
  colorMode(HSB, 360, 100, 100);    //modo de color a HSB.

                   //tama\u00f1o canvas.

  background(0, 0, 100);           //color canvas.

  c = color(colarray[(int)random(0, 4)]);      //variable 'c' es igual al color array.

  blanco = color(52, 0, 100);       //asigno color blanco a "blanco".

  colarray[0] = color(11, 46, 98);    //rosado.
  colarray[1] = color(173, 76, 72);   //celeste.
  colarray[2] = color(129, 77, 69);   //verde.
  colarray[3] = color(33, 92, 98);    //naranjo.
  colarray[4] = color(196, 26, 10);   //negro azulado.
  colarray[5] = color(56, 100, 95);   //amarillo.
  colarray[6] = color(52, 27, 98);    //blanco amarillento.
}

public void draw() {
  //beginRecord(PDF, "s04/s04c00isi00###.pdf");        //comienza a grabar.
  // for (int x = 0; x < width; x += w) {                   //for loop para eje x.
  //   for (int y = 0; y < height; y += w) {                //for loop para eje y.
  //     noStroke();                                        //las figuras pr\u00f3ximas no tenr\u00e1n contorno.

  //     //tri\u00e1ngulo 1 (arriba):
  //     fill(c);                                          //asigno valor random a relleno.
  //     triangle(x, y, x + q, y + q, x + w, y);           // creo tri\u00e1ngulo 1.

  //     //tri\u00e1ngulo 2 (izquieda):  
  //     c = colarray [ (int) random(7) ];                  //llamo nuevamente variable color random.
  //     fill(c);                                          //asigno valor random a relleno.
  //     triangle(x, y, x + q, y + q, x, y + w);           // creo tri\u00e1ngulo 2.

  //     //tri\u00e1ngulo 3 (derecha):    
  //     c = colarray [ (int) random(7) ];                  //llamo nuevamente variable color random.
  //     fill(c);                                          //asigno valor random a relleno.
  //     triangle(x + w, y, x + q, y + q, x + w, y + w);  // creo tri\u00e1ngulo 3.

  //     //tri\u00e1ngulo 4 (abajo):    
  //     c = colarray [ (int) random(7) ];                    //llamo nuevamente variable color random.
  //     fill(c);                                            //asigno valor random a relleno.
  //     triangle(x, y + w, x + q, y + q, x + w, y + w);   // creo tri\u00e1ngulo 4.


  //     //elipse 
  //     // se llama a c para elegir entre colores y luego no se usa. 
  //     c = colarray [ (int) random(6) ];             //llamo nuevamente variable color random.
  //     fill(blanco, (int) random(40, 100));         // asigno valor random a relleno.
  //     ellipse(x + q, y + q, w, w);                  //creo una elipse.
  //   }
  // }

  // for (int x = 0; x < width; x += w + w) {           //for loop para eje x.
  //   for (int y = 0; y < height; y += w + w) {        //for loop para eje y.
  //     //elipse 
  //     c = colarray [ (int) random(6) ];             //llamo nuevamente variable color random.
  //     fill(blanco, (int) random(40, 100));         // asigno valor random a relleno.
  //     ellipse(x + q, y + q, w / 3, w / 3);          //creo una elipse.
  //   }
  // }

  for (int x = 50; x < width; x += w + w) {           //for loop para eje x.
    for (int y = 50; y < height; y += w + w) {        //for loop para eje y.
      //elipse 
      c = colarray [ (int) random(6) ];              //llamo nuevamente variable color random.
      fill(blanco, (int) random(20, 50));           // asigno valor random a relleno.
      ellipse(x + q, y + q, w / 3, w / 3);           //creo una elipse.
    }
  }
  noLoop();    //imagen fija.
  //endRecord();  //termina de grabar.
}


public void keyPressed() {
  //condicional 1:  
  if ( key == 'a' ) {    //si apreto la tecla 'a'...
    redraw();            //se vuelve a dibujar.
    //condicional 2:
  } else if ( key == 's' ) {              //si apreto la tecla 's' se guarda.
    saveFrame( "s04/s04c00isi###.pdf" );   //se guarda con este nombre.
    //condicional 3:
  } else {               // si no se cumple la condicional 1 o 2...
    exit();              //cierro el programa.
  }
}


  public void settings() {  size(600, 750); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s04c00isi00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

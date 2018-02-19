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

public class s04c01margaux00 extends PApplet {

//Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
//Margaux Leroy
//s04c00margaux00

 //registrar el pdf en la carpeta

/*
Falta una descripci\u00f3n general del resultado gr\u00e1fico final y 
los cambios que ocurren con el teclado
*/

public void setup(){            //anunciaci\u00f3n de los predeterminados
  background(0xff00BC9C);   //color del fondo
          //tama\u00f1o del canvas
} 

  //declaraci\u00f3n de variables

  int c = color(random(250), random(250), random(250));
  int i = 50;
  int j = 80;
  float r = random(20);

public void draw() {            //formas en todo el canvas 
  // beginRecord(PDF, "s04c01margaux01.pdf");      //empieza el registro del pdf en la carpeta
  for (int y = 0; y < height; y += 20) {       //distancia de 20px en la altura
    for (int x = 0; x < width; x += 20) {      //distancia de 20px en la anchura
      stroke(c);                              //color del contorno
      strokeWeight(1);                        //espesor del contorno
      noFill();                               //sin relleno
      rect(x, y, i, j);                       //rect\u00e1ngulo que forma una cuadr\u00edcula
 }
}
 
  for (int y = 0; y < height; y += 40) {      //distancia de 40px en la altura
    for (int x = 0; x < width; x += 120) {    //distancia de 120px en la anchura
      stroke(0xffEEEEEE);                      //color del contorno
      line(x + 20, y - 20, x - 20, y + 20);
 }
}
  
  for (int y = 0; y < width; y += 120) {    //distancia de 120px en la anchura
    for (int x = 0; x < height; x += 40) {  //distancia de 40px en la altura
      line(x - 10, y + 10, x + 10, y - 10);
 }
}

//cambio de las variables
 
  i = 20;    
  j = 40;    


  // existe un error de sintaxis, la variable X y la variable Y est\u00e1n siendo
  // usadas al rev\u00e9s, X para Y, Y para X, es por eso que no 
  for (int y = 0; y < height; y += 20) {    //distancia de 20px en la altura
    for (int x = 0; x < width; x += 20) {   //distancia de 20px en la anchura
      c = color(random(250), random(250), random(250));  //precisi\u00f3n del color
      strokeWeight(2);      //espeso del contorno 
      stroke(c);            //color del contorno
      noFill();             //no fundo
      if (x > 100){                         //si x superior a 100px
        ellipse(y + 20, x + 20, i, j);          //cambio de los predeterminados de la elipse
      }
      else{
        noStroke();                        //no espeso
        fill(c);                            //fundo con variable c
        ellipse(y + 20, x + 20, 10, 10);
  }
}

noLoop();            //no se ejecutan la bucle
endRecord();         //terminar el registro del PDF
  }
}

public void keyPressed(){      //funci\u00f3n que permite de cambiar los random con una letra
  if (key == 'b') {   
    redraw();
   } else if (key == 'c') {
     exit();
  }    
}
  public void settings() {  size(400, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s04c01margaux00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

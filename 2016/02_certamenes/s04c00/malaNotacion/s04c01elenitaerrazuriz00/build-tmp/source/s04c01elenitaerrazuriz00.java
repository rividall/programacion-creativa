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

public class s04c01elenitaerrazuriz00 extends PApplet {

//Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// M. Elena Err\u00e1zuriz
//s03c00elenaerrazuriz00

/* Este c\u00f3digo presenta una grilla de 40 x 40, donde cada posici\u00f3n es ocupada
 aleatoriamente por cuadrados con otro cuadrado dentro, por un espiral cerrado o
 un espacio vac\u00edo. Los cinco colores elegidos tamb\u00eden son usados aleatoriamente.*/

//Variables globales
                                         //variable para transformar a PDF el documento 

 
  
int [] colarray = {                                          //Array o biblioteca de los colores usados, para llamarlos despu\u00e9s 
  color(21, 84, 92),                                             //Naranjo
  color(5, 76, 91),                                              //Sand\u00eda 
  color(334, 81, 62),                                            //Fucsia 
  color(293, 41, 42),                                            //Morado
  color(170, 74, 54)                                             //Sea green
  };



int update = 40;                                                 //Variable para el update dentro del for, la suma de cuanto en cuanto para la grilla

public void setup() {
                                                 //Tama\u00f1o del canvas o mesa de trabajo
  colorMode(HSB, 360, 100, 100);                                 //Modo de color del documento, para poder imprimirlo
  background(360);                                              //Fondo blanco
 
  
}

/*Funci\u00f3n que determina todo lo que se va a mostrar
gr\u00e1ficamente, ya sean las figuras o c\u00f3mo van dispuestas.*/
public void draw() {
  
  beginRecord(PDF, "folder/s04c01elenaerrazuriz_###.pdf");
  

  for (int x = 0; x <= width; x += update) { 
    for (int y = 0; y <= height; y += update) {                 //Dos for juntos dan las coordenadas de x e y en un plano cartesiano para determinar el tama\u00f1o de la grilla.
      float e = random(2);                                      //Random de posici\u00f3n entre rangos de 0 a 2
      if (e < 10) {                                              //Determinar lo que va a pasar entre 0 y 1
/*Todo lo escrito dentro de estos corchetes
est\u00e1 atado a la condici\u00f3n anterior*/
        noFill();                                               //Figuras sin relleno                                             
        strokeWeight(2);                                        //Bordes de 2 pixeles de grosor.
        stroke( colarray [(int)random(5)]);                  //Color de bordes pintados aleatoriamente con los colores previamente seleccionados
        rect(x, y, 34, 34);                                     //Rect\u00e1ngulo inicial de 34 x 34 pixeles                          
        line(x - 4, y + 9, x + 16, y + 9);                      //l\u00ednea horizontal conectada al lado derecho del cuadrado
        line(x - 4, y + 9, x - 4, y - 8);                       //L\u00ednea vertical originada de la anterior
        line(x - 4, y - 8, x + 10, y - 8);                      //L\u00ednea horizontal originada de la anterior vertical
        line(x + 10, y - 8, x + 10, y + 3);                     //L\u00ednea vertical 
        line(x + 10, y + 3, x - 12, y + 3);                     //L\u00ednea horizontal final, interior del espiral
        line(x - 12, y + 3, x - 12, y - 16);                    //L\u00ednea vertical hacia arriba, hasta llegar al borde superior del cuadrado
      } else {                                                  //Indicador que todo lo que no fue abarcado por la condici\u00f3n anterior puede tener otra acci\u00f3n.
        drawTarget(x + 40, y + 2, 25, 2);                           //Funci\u00f3n que ocurre, el resultado visible
      }  
    }
  }
  
  noLoop();                                                     //Dejar la composici\u00f3n quieta en un fotograma de tiempo
  endRecord();
}

/*Funci\u00f3n para crear figuras proporcionales, que nazcan
del centro de la m\u00e1s grande y vayan decreciendo regularmente*/
public void drawTarget(float xloc, float yloc, int size, int num) {    //Definir comportamiento de cada coordenada dentro de los \u00edndices para cada figura

  float steps = size / num;                                       //Definir la misma variable para el porte y la cantidad de figuras dentro de una
  for (int i = 0; i < num; i++) {                               //De cuando en cuando ya a avanzar una variable
  

    int [] color2 = {                                              //Array o biblioteca de los colores usados, para llamarlos despu\u00e9s 
      color(21, 84, 92, 80),                                         //Naranjo, m\u00e1s opacidad
      color(5, 76, 91, 80),                                          //Sand\u00eda, m\u00e1s opacidad
      color(334, 81, 62, 80),                                        //Fucsia, m\u00e1s opacidad
      color(293, 41, 42, 80),                                        //Morado, m\u00e1s opacidad
      color(170, 74, 54, 80)                                         //Sea green, m\u00e1s opacidad
    };

    noStroke();                                                 //Figuras sin bordes
    fill(color2 [(int)random(5)]);                           //Color de relleno pintado aleatoriamente con los colores previamente seleccionados
    rectMode(CENTER);                                           //Definir que las figuras nacen del centro
    rect(xloc, yloc, size - i * steps, size - i * steps);           //La ecuaci\u00f3n para determinar el comportamiento de la funci\u00f3n
  }
}

/*Determinar funciones de teclado, asignar
una tecla del computador para alguna acci\u00f3n
determinada. Todo lo que ocurre aqu\u00ed afecta al void draw*/
public void keyPressed() {      

  if (key == 'a') {                                             //Si la tecla 'a' es apretada en el computador
    redraw();                                                   //La composici\u00f3n se vuelve a dibujar en un nuevo orden
  } else if (key == 's') {                                      //Si la tecla 's' es apretada
    exit();                                                     //Salir programa
  } else if (key == 't') {
    saveFrame("fils/fotos_##.pdf");
  }
}
  public void settings() {  size(800, 1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s04c01elenitaerrazuriz00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class s04c00pancho00 extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Francisco Barr\u00eda
// s04c00pancho00

/*
Molinos Rojos en unos cuadrados de cafes claros, en un canvas de puntos rojos con opacidad suave. */
 


public void setup() {          
  

}

public void draw() {          
  // beginRecord(PDF, "s04c00pancho00.pdf");
  colorMode(HSB, 360, 100, 100);
  
  int i;
  int j;
  
  //Colores
  
  int pal = color (42, 9, 100);        //  Palido.
  int sal = color (41, 49, 99);        //  Salsa de ajo.
  int car = color (352, 81, 84);        //  Carmesi.
  int tre = color (343, 92, 60);        //  Tres cuartos.
  
  int bla = color (0, 0, 100);        //  Blanco.
  int neg = color (0, 0, 0);        //  Negro.
  
 int [] back = {bla, pal, sal};  //Array de colores cafes.
 int [] oxi = {car, tre};      //Array de colores carmesi.
  
  translate(width/2, height/2);    //Vestigio de que empiezo mis trabajos como espirales.

  background(back[(int)random(3)]);    //El fondo cambia de colores seg\u00fan el Loop.

  noStroke();

  for (i = -(width/2); i < width; i += 15) {      // Puntos al fondo.
    for (j = -(height/2); j < height; j += 15) {
    
      int e = (int) random(4);
    
      if (e >= 2){
        fill(back[(int)random(2)], random(100));  
        ellipse(i, j, 10 - e, 10 - e);
      }
      else {
        fill(oxi[(int)random(2)], random(100));
        ellipse(i, j, 10 - e,10 - e);
      }
    }
  }


  for (i = -(width/2); i < width; i += 80) {
    for (j = -(height/2); j < height; j += 80) {    //Doble for para crear grilla.
     
        
      fill(back[(int)random(3)]);      //Colores cafes.
      
      quad(i + 40, j, i, j - 40, i - 40, j, i, j + 40);       //Cuadrados
      quad(i + 40, j, i, j - 40, i, j + 40, i - 40, j); 
      
      fill(oxi[(int)random(2)], 255 - random(200));    //Tri\u00e1ngulos del molino
      triangle(i, j, i + 40, j, i + 15, j - 15);     
      fill(oxi[(int)random(2)], 255-random(200));    
      triangle(i, j, i - 40, j, i - 15, j + 15);    
      fill(oxi[(int)random(2)], 255-random(200));    
      triangle(i, j, i, j - 40, i - 15, j - 15);  
      fill(oxi[(int)random(2)], 225-random(200));    
      triangle(i, j, i, j + 40, i + 15, j + 15);
    }
    noLoop();
  }


  // endRecord();
}
public void keyPressed() {
  if  (key == 'a')  {
    // saveFrame("s04c00pancho00.pdf");
    loop();
  }
}
  public void settings() {  size(800, 1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s04c00pancho00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

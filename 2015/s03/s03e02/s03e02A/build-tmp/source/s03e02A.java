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

public class s03e02A extends PApplet {
  public void setup() {
// El c\u00f3gido ideal es el que mostrar\u00e1 los colores elegidos
// tanto en blanco como en negro.

size(500, 500);
background(0);

fill(255);
rect(0, height/2, width, height);

noStroke();

fill(255, 0, 255);
ellipse(width/2 - width/4, height/2, width/2, height/2);

fill(255, 255, 0);
ellipse(width/2 + width/4, height/2, width/2, height/2);
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "s03e02A" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

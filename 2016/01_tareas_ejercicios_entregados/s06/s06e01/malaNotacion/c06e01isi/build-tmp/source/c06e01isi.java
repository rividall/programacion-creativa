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

public class c06e01isi extends PApplet {

//Expresi\u00f3n digital - Dise\u00f1o Digital - UDD- 2016.
//Isidora Ordo\u00f1ez.
//s06t01isi.

/*
En este c\u00f3digo se ve como una ellipse cambia de color a medida que se mueve en el eje x
gracias a un lerpColor.
 */

float x, y, amt;
int d;
int c1, c2, c3;

public void setup() {
  colorMode(HSB, 360, 100, 100);
  
  d = 20;
  x = 0;
  y = height / 2;

  c1= color(86, 26.5f, 74.1f);
  c2= color(41, 93.7f, 98.8f);
  float amt= 0.99f;

}
public void draw() {
  amt = map(x,0,width,0,1);
   c3=lerpColor(c1,c2,amt);
  background(0);
  fill(c3);
  noStroke();
  ellipse(x, y, d, d);
  x++;
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "c06e01isi" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

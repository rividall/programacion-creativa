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

public class s06t01 extends PApplet {

//Expresi\u00f3n digital II - Dise\u00f1o Digital - UDD - 2016
//Catalina Juez
//s06t01
float x, y, amt;
int c1, c2, c3;

public void setup() {
  
  x = 0 ;
  y = height / 2;

  c1 = color (132, 87, 232, 50);
  c2 = color (78, 9, 229);
}

public void draw() {

  amt = map(x, 0, width, 0, 1);
  c3 = lerpColor(c1, c2, amt);
  background(0);
  fill (c3);
  noStroke();
  ellipse(x, y, 40, 40);
  x++;
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s06t01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

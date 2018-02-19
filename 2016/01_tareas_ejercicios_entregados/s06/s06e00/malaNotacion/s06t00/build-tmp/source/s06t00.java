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

public class s06t00 extends PApplet {

//Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
//Catalina Juez
//s02t00
float vx;
float vy;
int x, y, d, u, r;
int color1;
int color2;
int  b, n, g;

public void setup() {
  
  vx = 2;
  vy = 3;
  x = (int)random(width);
  d = 40;
  u = 10;
  y = height / 2;
  color1 = color(132, 87, 232);
  color2 = color(78, 9, 229);
  b = 255;
  g = 60;
  n = 0;
  
}

public void draw() {
  background(255);
  fill(color1);
  ellipse(x, y, d, d);
  x += vx;
  y += vy;

  if (x > width - d / 2 || x < d /2) {
    vx *=1;
    r = (int)random(4);

    if (r==0) {
      color1 = color2;
    }

    if (r==1) {
      color1 = b;
    }

    if (r==2) {
      color1 = n;
    }
    
    if (r==3) {
      color1 = g;
    }
  }
  
  
  if (y > width - d / 2 || y < d /2) {
    vy *=1;
    r = (int)random(4);

    if (r==0) {
      color1 = color2;
    }

    if (r==1) {
      color1 = b;
    }

    if (r==2) {
      color1 = n;
    }
    
    if (r==3) {
      color1 = g;
    }
  }
}
  public void settings() {  size (400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s06t00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

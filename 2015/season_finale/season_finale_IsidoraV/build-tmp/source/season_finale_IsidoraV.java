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

public class season_finale_IsidoraV extends PApplet {

String pkm[];
String list[] [];
int n, b, r, v, na, a, az, ro, tot, cc;

PFont f;

int cols, filas, i;

float t;


public void setup(){

  textMode(MODEL);
  
  cols = 37;
  filas = 20;

  n = color(0); //negro
  b = color(230); //blanco
  v = color(120,200,80);//verde
  r = color(255, 0, 0); //rojo
  na = color(240, 128, 48); //naranjo
  a = color(212, 178, 43); //amarillo
  az = color(104, 144, 240); //azul
  ro = color(248, 88, 136); //rosado
  tot = color(198, 198, 167); //color total
  
  cc = v; //cambio color
  
  pkm = loadStrings("Pokedex.csv");
  list = new String[pkm.length] [11];
  
  for (int i=0; i < pkm.length; i++) {
    list[i] = pkm[i].split(",");
  }
  
}

public void draw(){
   background(b);
   
  for(int x = 0; x < cols; x++){
    for(int y = 0; y < filas; y++){
      
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      
      int nums = 1+ y + x * filas;  
      
      if((nums >= 1) && (nums <=721)) {
         
  float total = PApplet.parseFloat(list[nums] [4]);
  float hp = PApplet.parseFloat(list[nums] [5]);
  float atk = PApplet.parseFloat(list[nums] [6]);
  float def = PApplet.parseFloat(list[nums] [7]);
  float spatk = PApplet.parseFloat(list[nums] [8]);
  float spdef= PApplet.parseFloat(list[nums] [9]);
  float sp= PApplet.parseFloat(list[nums] [10]);
  
  t = hp;
  
  if (key == 'h'){
    t = hp;
    cc = r;
  }
  
  if (key == 'a'){
    t = atk;
    cc = na;
  }
  
   if (key == 'd'){
    t = def;
    cc = a;
  }
  
   if (key == 'z'){
    t = spatk;
    cc = az;
  }
  
   if (key == 'x'){
    t = spdef;
    cc = v;
  }
  
   if (key == 's'){
    t = sp;
    cc = ro;
  }
  
  pokebola (x1, y1, t, total);
  
      }
    }
  }
}

public void keyPressed(){
  
  if( key == 'e'){
    exit();
  }
  
}
    
public void pokebola(float x, float y, float t, float total){
  
  noStroke();
  fill(tot, 50);
  ellipse(x, y, total/5, total/5);
  
  stroke(cc);
  strokeWeight(3);
  fill(cc, 100);
  ellipse(x, y, t/5, t/5);  
  
  strokeWeight(3);
  line(x- (t/5)/2, y, x+ (t/5)/2, y);
  
  fill(cc, 200);
  stroke(cc);
  strokeWeight(3);
  ellipse(x, y, (t/5)/4, (t/5)/4);
}
  public void settings() { 
fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "season_finale_IsidoraV" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

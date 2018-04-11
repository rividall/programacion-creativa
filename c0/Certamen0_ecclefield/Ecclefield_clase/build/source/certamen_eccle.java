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

public class certamen_eccle extends PApplet {

//ArrayList<randm> puente =  new ArrayList<randm> ();

////////////////////////////////////////////////////////////////////////////////////////////
//trabajar con colores
//cambio
//al iniciar el programa los valores empiezan en 0 plq aplica los ejercicios respectivos a 0
ArrayList<Particula> lista = new ArrayList<Particula>();
Particula p;
int n,m;
public void setup(){
  
  for (int i=0; i<20;i++) {
    p = new Particula(i);
    lista.add(p);
  }
}

public void draw(){
  background(255);
  for (Particula a :lista){
    a.show(n);
    a.mover(m);
a.denuevo();
  }

  if(frameCount % 60==0){// cuando el resto de la division sea 0
  //  m=int(random(2));
  }
}
public void keyPressed( ){
  if (key == '1'){
    n = 1;
  }
  else if(key =='0'){
    n = 0;
}
else if(key =='d'){
  m = 0;
}
else if(key =='i'){
  m = 1;
}
}
class Particula{
  int[] colores;
  int propioDelObjeto;
  int randomColor;

float x;
float y;
float velx;
float vely;
float tamano;

  Particula(int i){
    this.randomColor = PApplet.parseInt(random(3));// hara un random entre los 3 colores que hay
    colores = new int[3];//el numero es la cantidad que sale en i<3
    colores[0] = color(255,0,0);
    colores[1] = color(0,255,0);
    colores[2] = color(0,0,255);
    propioDelObjeto= color(127);
x= width/2;
y= height/2;

velx=random(-10,10);
vely=random(-10,10);

x += velx;
y += vely;

tamano = random(10,30);
  //  x = i*25 + 50;//posicion de x
  }

public void show(int eleccion){

  if(eleccion== 0){
  fill(colores[randomColor]);
  ellipse(x,y,tamano,tamano);
}
else if (eleccion ==1){
//cuadrs rojos
  fill(colores[0]);
  rect(x,height/2,30,30);
}
}
public void mover(int eleccion){
  if (eleccion == 0){
    x += velx;
    y += vely;
  }
  else if(eleccion == 1){
    x--;
  }
}
public void denuevo(){
  if(x>width || x<0||y>height||y<0){
x = width/2;
y=height/2;
tamano = random(10,30);
propioDelObjeto = colores[PApplet.parseInt(random(3))];
 }
}
}
  public void settings() {  size(600,400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "certamen_eccle" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class s10c01Benja extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
//Benjamin Gutierrez 
//s10c01benja


/* declaramos la clase, dandole nombre y creando un array con el numero total de objetos*/
Body[] b = new Body[400];

/*en el void setup donde doy el tama\u00f1o del canvas, e iniciamos la clase
a traves del for loop, y asi creando la grilla*/
public void setup () {
  
  background(253);
  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 20; j++) {
      int total = j + i * 20;
      float ix = i * 20;
      float jy = j * 20;
      b[total] = new Body(ix, jy, ix + 5, jy + 5, (int)random(-2, 2), (int)random(-2, 2), total * .001f);
      println(total);
    }
  }
}

/* en el void draw, damos un fondo, y use la funcion de translate
para centrar la grilla, y con el for loop del void draw, traemos las 
funciones de la clase, como lmor, o rotar, que traen las lineas y las hacen girar
generando una grilla de lineas que crean cuadrados al girar*/
public void draw() {
  background(255);
  translate(width * .20f, height * .20f);

  for (int i = 0; i < b.length; i++) {

    b[i].lmor();
    b[i].lmor2();
    b[i].lver();
    b[i].lver2();
    b[i].rotar();
  }
}
/* la clase esta declarada, junto con sus varialbes*/
class Body {
  float x, y, rx, ry, angle;
  Body (float x, float y, float rx, float ry, float mx, float my, float angle) {

    this.x = x;
    this.y = y;
    this.rx = rx;
    this.ry = ry;
    // this.mx = mx * .5;
    // this.my = my * .5;
    this.angle = angle;
  }

/* en este primer void se generan lineas de color morado que giran sobre su origen
en sentido contrario al horario por la funcion rotate*/
  public void lmor() {

    pushMatrix();
    translate(x, y);
    rotate(angle * -1);
    stroke(96, 59, 133);
    line(0, 0, 10, 0);
    popMatrix();
  }
/*genera lineas verdes que rotan sobre su origen en sentido contrario*/
  public void lver() {
    pushMatrix();
    translate(x, y);
    rotate(angle * -1);
    stroke(174, 236, 65);
    line(0, 0, 0, 10);
    popMatrix();
  }
/* se generan lineas moradas pero estas giran en sentido del horario*/
  public void lmor2() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    stroke(96, 59, 133);
    line(0, 0, 10, 0);
    popMatrix();
  }
/*esta corresponde a la segunda linea verde que gira contrario de la otra linea verde*/
  public void lver2() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    stroke(174, 236, 65);
    line(0, 0, 0, 10);
    popMatrix();
  }
  
  /*este void genera la velocidad de la rotacion de las lineas*/
  public void rotar() {
    angle += 0.05f;
  }
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s10c01Benja" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

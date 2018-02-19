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

public class s10c01Margaux extends PApplet {

//Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
//Margaux Leroy
//s10c01margaux
// prueba
/*
El certamen debe contener 5 grillas con 3 formas y movimientos diferentes.
*/

// Creaci\u00f3n de dos objetos para creer 2 grillas diferentes. Una de 625 elementos y una de 25 elementos.
Margaux[] e = new Margaux [625];  
Gomar[] f = new Gomar [25];  

// Inicializaci\u00f3n.
public void setup(){
                         // tama\u00f1o del canvas
// Inicializaci\u00f3n de la loop del primer objeto, de las distancias y posiciones.
  for (int i = 0; i < 25; i++) {
    for (int j = 0; j < 25; j++) {
      int total = j + i * 25;
      float x = i * 30;                 // distancia entre cada elemento
      float y = j * 30;                 // distancia entre cada elemento
      e[total] = new Margaux(x, y, x + 5, y + 5, (int)random(-10, 10), (int)random(-10, 10), total * 0.05f);
    }
  }
  
// Inicializaci\u00f3n de la loop del segundo objeto, de las distancias y posiciones.
  for (int l = 0; l < 5; l++) {
    for (int k = 0; k < 5; k++) {
      int total = l + k * 5;
      float x = l * 20;                 // distancia entre cada elemento
      float y = k * 20;                 // distancia entre cada elemento
      f[total] = new Gomar(x, y, total * 0.05f);
    }
  }
}

// Lanzamiento del programo
public void draw(){
  background(0xff242541);                   // color de fondo
// Posici\u00f3n de la grilla del primer objeto.
  translate(width * .02f, height * .02f);  
  for (int i = 0; i < e.length; i++) {   
// Creaci\u00f3n de 4 formas y 3 movimientos.
    e[i].formaUno();
    e[i].formaDos();
    e[i].formaTres();
    e[i].formaCuatro();
    e[i].movimientoUno();
    e[i].movimientoDos();
    e[i].movimientoTres();
  }
// Posici\u00f3n de la grilla del segundo objeto.
  translate(width * 0.3f, height * 0.3f);  
   for (int l = 0; l < f.length; l++) {
// Creaci\u00f3n de 1 forma y 1 movimiento
    f[l].formaCinco();
    f[l].movimientoCuatro();
  }
}
// Llamada del primer objeto.
class Margaux {
// Creaci\u00f3n de variables.
  float x, y, tx, ty, velx, vely, angulo, a, rotation, tercero;
  
// Declaraci\u00f3n de las variables.
  Margaux (float x, float y, float tx, float ty, float velx, float vely, float angulo) {
    this.x = x;
    this.y = y;
    this.tx = tx;
    this.ty = ty;
    this.velx = velx * 0.5f; 
    this.vely = vely * 0.5f;
    this.angulo = angulo;
    // this.r = 10; // variables sin uso
  }
  
// Dibujo de la primera forma, una l\u00ednea de 4px que vibra.
    public void formaUno() {
    pushMatrix();
    translate(x, y);
    strokeWeight(4);
    stroke(0xff00BC9C);
    // noFill(); //la funci\u00f3n line por defecto no tiene fill
    line(0, 0, 10, 10);    
    popMatrix();
  }
  
// Dibujo de la segunda forma, una elipse que vibra al mismo tiempo que la linea.
  public void formaDos() {
    pushMatrix();
    translate(x * 2, y * 2);
    strokeWeight(2);
    stroke(0xff00BC9C);
    noFill();
    ellipse(x, y, 20, 20);    
    popMatrix();
  }

// Ajuste del primer movimiento.
 public void movimientoUno() {
    x += velx; // anteriormente velx y vely se estaban aumentando en cada loop por si mismas.
    y += vely; // de esta forma velx y vely llegan a tener valores mayores a la funci\u00f3n movimientoTres
    rotation += 0.1f;
  }
  
// Dibujo de la tercera forma, una otra linea que realiza una rotaci\u00f3n continua a la izquierda.
 public void formaTres() {
    pushMatrix();
    translate(x, y);
    rotate(rotation);
    strokeWeight(2);
    stroke(0xff00BC9C);
    // noFill(); //la funci\u00f3n line por defecto no tiene fill
    line(0, 0, 15, 15);    
    popMatrix();
  }

// Ajuste del segundo movimiento, una rotaci\u00f3n rapida a la izquierda.
   public void movimientoDos() {
    rotation += 0.1f;
    }
    
// Dibujo de la cuarta forma, un rect\u00e1ngulo .
   public void formaCuatro() {
    pushMatrix();
    translate(x, y);
    rotate(angulo);
    strokeWeight(2);
    stroke(0xffFBC430);
    noFill();
    rect(x, y, 5, 5);    
    popMatrix();
  }
  
// Ajuste del tercer movimiento que es diferente dependiendo de la posici\u00f3n x e y del rect\u00e1ngulo.
   public void movimientoTres() {
    if (x > tx || x < tx - 25) {
      velx *= -1; //antes el valor dejaba en 0 luego de un tiempo. dejar en -1 cambiar el valor
    }             // y entonces su direcci\u00f3n.
    if (y > ty || y < ty - 25) {
      vely *= -1;
    }
    angulo += 0.05f;
  } 
}

// Llamada del segundo objeto.
 class Gomar {
// Creaci\u00f3n de variables
  float x, y, tercero;
  
// Declaraci\u00f3n de las variables.
  Gomar (float x, float y, float tercero) {
    this.x = x;
    this.y = y;
    this.tercero = tercero;
  } 
  
// Dibujo de la quinta forma, un diamante que que realiza una rotaci\u00f3n continua a la derecha.
  public void formaCinco() {
    pushMatrix();
    translate(x * 2, y * 2);
    rotate(tercero);
    strokeWeight(1);
    stroke(0xffEEEEEE);
    fill(0xffFFFFFF);
    quad(x, y, x + 5, y + 5, 10, 10, 10, 10);    
    popMatrix();
  }

// Ajuste del cuarto movimiento que realiza una rotaci\u00f3n a la derecha.
   public void movimientoCuatro() {
    tercero -= 0.1f;
  } 
}
 
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "s10c01Margaux" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

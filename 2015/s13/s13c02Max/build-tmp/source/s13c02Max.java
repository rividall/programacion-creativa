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

public class s13c02Max extends PApplet {

//UDD - Representacion Digital 2
//s13c02Max
//Visualizaci\u00f3n de datos - Acciones empresas tecno\u00f3gicas



int cols, filas;
int i;
String datos[], dia[][];
int white, yahoo, facebook, apple, microsoft, adobe, ibm, amazon, oracle, avg;

public void setup() {
  // size(480, 1300);
  

//  beginRecord(PDF, "stockcharts.pdf");

  

  cols = 12;
  filas = 31;

  datos = loadStrings("stocks.csv");
  dia = new String[datos.length][9];
  for (int i = 0; i < datos.length; i ++) {
    dia[i] = datos[i].split(",");
  }

  //color definido segun color predominante en logo
  white = color(255);
  yahoo = color(100, 15, 108);
  facebook = color(59, 89, 153);
  apple = color(166, 177, 183);
  microsoft = color(128, 204, 40);
  adobe = color(237, 28, 36);
  ibm = color(0);
  amazon = color(247, 155, 54);
  oracle = color(255, 132, 132);
  avg = color(34, 255, 1);
}

public void draw() {
  background(white);

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      // int nums = 1 + y+x*filas;
      int nums = 1 + x+y*cols;
      if ((nums >= 0) && (nums < 365)) {

        //variables de las acciones
        float Yahoo = PApplet.parseFloat(dia[nums][0]);
        float Facebook = PApplet.parseFloat(dia[nums][1]);
        float Apple = PApplet.parseFloat(dia[nums][2]);
        float Microsoft = PApplet.parseFloat(dia[nums][3]);
        float Adobe = PApplet.parseFloat(dia[nums][4]);
        float IBM = PApplet.parseFloat(dia[nums][5]);
        float Amazon = PApplet.parseFloat(dia[nums][6]);
        float Oracle = PApplet.parseFloat(dia[nums][7]);

        //variable promedio
        float Avg = ((Yahoo + Facebook + Apple + Microsoft + Adobe + IBM + Amazon + Oracle)/8);


        //funcion definida
        stocks(x1, y1, Yahoo, Facebook, Apple, Microsoft, Adobe, IBM, Amazon, Oracle, Avg);
      }
    }
  }
    endRecord();
}
public void stocks(float x1, float y1, float Yahoo, float Facebook, float Apple, float Microsoft, float Adobe, float IBM, float Amazon, float Oracle, float Avg) {

  float rotstocks = Avg* (TWO_PI/360);

  // //Valor Yahoo - circulo morado
  // noStroke();
  // fill(yahoo, 50);
  // ellipse(x1, y1, Yahoo, Yahoo);

  // //valor microsoft - circulo verde
  // noStroke();
  // fill(microsoft, 200);
  // ellipse(x1, y1, Microsoft/4, Microsoft/4);

  // //Valor Adobe - circulo rojo
  // noStroke();
  // fill(adobe, 90);
  // ellipse(x1, y1, Adobe/4, Adobe/4);

  // //Valor amazon - circulo naranjo
  // fill(amazon, 30);
  // noStroke();
  // ellipse(x1, y1, Amazon/6, Amazon/6);


  // //Valor Oracle - circulo rosado
  // fill(oracle, 60);
  // strokeWeight(2);
  // stroke(oracle, 100);
  // ellipse(x1, y1, Oracle/2, Oracle/2);

  // //valor apple - circulo gris
  // fill(apple, 30);
  // noStroke();
  // ellipse(x1, y1, Apple/12, Apple/12);

  // //valor IBM - circulo negro
  // fill(ibm, 10);
  // ellipse(x1, y1, IBM/1.5, IBM/1.5);

  // //valor facebook - circulo azul
  // fill(facebook, 100);
  // ellipse(x1, y1, Facebook/1.5, Facebook/1.5);

  //Triangulo verde que apunta al valor promedio de acciones
  pushMatrix();
  translate(x1, y1);
  rotate(rotstocks);
  strokeWeight(1);
  stroke(avg, Avg*3);
  line(0, 0, 0, Avg/6);
  // fill(avg, Avg*3);
  triangle(-5, 5, 0, -Avg/6, 3, 3);
  popMatrix();
}
  public void settings() {  size(1000, 480);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "s13c02Max" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

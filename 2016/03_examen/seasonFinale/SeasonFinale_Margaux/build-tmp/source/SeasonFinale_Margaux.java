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

public class SeasonFinale_Margaux extends PApplet {

//Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
//Margaux Leroy
//seasonfinalemargaux

/*
Este c\u00f3digo representa la temperatura m\u00e1xima, m\u00ednima y media 
de la ciudad de Jakarta en Indonesia. 
La temperatura m\u00e1xima se representa como el c\u00edrculo m\u00e1s grande que amplia o reduce
en funci\u00f3n del d\u00eda. Es lo mismo para el c\u00edrculo m\u00e1s peque\u00f1o que representa la temperatura m\u00ednima.
Para la mediana, es la l\u00ednea en el medio que crece o decrece.
No tuve \u00e9xito con mi programa. Vale un 1, pero lo subo de todas formas.
*/

//Declaraci\u00f3n de variables
Temperatura[] e;
Table t;
int fila, d, n;

public void setup() {  
  background(0xff151927);  // color del fundo
         // tama\u00f1o del canvas
  
  //Inicializaci\u00f3n table 
  t = loadTable("Jakarta_Indonesia.csv", "header");
  e = new Temperatura[t.getRowCount()];
  
  for (int i = 0; i < t.getRowCount(); i++) {
    int index = i;
    TableRow fila = t.getRow(i);
    //Importaci\u00f3n de los datos de temperatura
    int tmax = fila.getInt("Max TemperatureC");
    int tmin = fila.getInt("Min TemperatureC");
    int tmean = fila.getInt("Mean TemperatureC");

    d = 30;      
    
    //Objeto con datos
    e[i] = new Temperatura(index, tmax, tmin, tmean);
   }
   n = 1;
 }
  
public void draw() {
    for (int i = 0; i < e.length; i++) { 
      if (n == 1) {
        e[i].dias(frameCount);
        e[i].TempMax();
        e[i].TempMin();
        e[i].TempMean();
      }
   }
}

public void keyPressed() {
  if(key == 'a') {
    n = 1;
    d = 1; //d\u00eda
  }
  if(key == 'b') {
    n = 2;
    d = 7; //semana
  }
  if(key == 'c') {
    n = 3;
    d = 30; //mes
  }
  if(key == 'd') {
    n = 4;
    d = 365; //a\u00f1o
  }
}
class Temperatura {
  float x, y, an, i;
  int tmax, tmin, tmean, d, paso, index;
  
  Temperatura (int index, int tmax, int tmin, int tmean) {
    x = 0;
    y = 0;
    this.index = index;
    this.tmax = tmax;
    this.tmin = tmin;
    this.tmean = tmean;
  }
  
  public void TempMax() { // las funciones deben ser con min\u00fasculas, porque sino, hacen referencia a una posible clase
    //Maxima
    pushMatrix();
    fill(0xffD6B9B8);
    ellipse(400, 440, 400, 400); 
    ellipse(400, 440, index, tmax);
    popMatrix();
  }
  
  public void TempMin() { // las funciones deben ser con min\u00fasculas, porque sino, hacen referencia a una posible clase
    //Minima
    noStroke();
    fill(0xffFA5C5F);
    ellipse(400, 440, 200, 200);
    ellipse(400, 440, index, tmin);
  }
  
  public void TempMean() { // las funciones deben ser con min\u00fasculas, porque sino, hacen referencia a una posible clase
    //Mediana
    strokeWeight(5);
    stroke(0xff151927);
    line(200, 440, 600, 440); 
  }
  
   public void dias(int paso) {
    an = -PI/2;
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);  //distancia Y
        float factor1 = map(paso, 7, 182, 1, .6f); //distancia Y
        float factor2 = map(paso, 7, 182, .09f, .1f); // distancia x
        float factor3 = map(paso, 7, 182, .9f, .9f); //distancia x

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365/paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
  
}
  public void settings() {  size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "SeasonFinale_Margaux" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

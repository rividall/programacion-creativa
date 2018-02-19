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

public class seasonfinale_francisco extends PApplet {

// Expresi\u00f3n Digital - Dise\u00f1o Digital - UDD - 2016
// Francisco Barr\u00eda
// seasonfinale_francisco

/*
Visualizaci\u00f3n de data, mostrando las caracter\u00edsticas del clima en Tromso, Noruega. Cada elemento vertical corresponde a un d\u00eda, siendo la caracter\u00edstica principal,
 la temperatura que va del mas m\u00ednimo registrado (azul), al m\u00e1s c\u00e1lido registrado (rojo). Adem\u00e1s se agreg\u00f3 el viento en un formato hom\u00f3logo a la temperatura.
 */

 /*
NIVEL: 1 visualizaci\u00f3n (4.5) + 3 set de variables (7.5)
 */

Objeto[] o; 
Table table; 

int fila, weekMax, weekMin, minDate, maxDate, a;
boolean flip;


public void setup() {
  

  rectMode(RADIUS);
  colorMode(HSB, 360);

  noStroke();
  table = loadTable("Tromso_Norway.csv", "header");
  o = new Objeto [table.getRowCount()]; 
  // de esta forma la lista de objetos ser\u00e1 del tamano de la tabla

  // Acceder a todas las filas de la tabla
  for (int i = 0; i < table.getRowCount(); i++) {
    
    TableRow fila = table.getRow(i); 

    int x = fila.getInt("Max TemperatureC");
    int y = fila.getInt("Min TemperatureC");
    int z = fila.getInt("Mean TemperatureC");

    int h = fila.getInt("Max Humidity");
    int j = fila.getInt(" Mean Humidity");
    int k = fila.getInt(" Min Humidity");

    int wind_max = fila.getInt(" Max Wind SpeedKm/h");
    int wind_mean = fila.getInt(" Mean Wind SpeedKm/h");

    int w = i;

    o[i] = new Objeto(x, y, z, w, wind_max, wind_mean, h, j, k);

    weekMin = 0;
    weekMax = 7;
  }
  maxDate = 7;
  a = 360;
}

public void draw() {
  background(100);

  // todos juntos
  for (int i = weekMin; i < weekMax; i++) {
    o[i].display();
    o[i].texto();
  }
}
public void keyPressed() {                                        // Botones para controlar los datos.
  if (key == 'p') {
    weekMin = 0;
    weekMax = 365;
  }
  if (key == 'o') { // falta titulo descriptivo del bloque de texto
    weekMin = 0;
    weekMax = 183;
  }
  if (key == 'i') { // falta titulo descriptivo del bloque de texto
    weekMin = 0;
    weekMax = 30;
  }
  if (key == 'u') { // falta titulo descriptivo del bloque de texto
    weekMin = 0;
    weekMax = 7;
  }
  if (key == 'y') { // falta titulo descriptivo del bloque de texto
    weekMin = 0;
    weekMax = 1;
  }
  if (key == 'r') { // falta titulo descriptivo del bloque de texto
    weekMin = 0;
    weekMax = 7;
    minDate = 0;
    maxDate = 7;
  }

  if (minDate > 0) { // falta titulo descriptivo del bloque de texto
    if (key == 'v') {
      minDate --;
    }
  }
  if (minDate < maxDate) { // falta titulo descriptivo del bloque de texto
    if (key == 'b') {
      minDate ++;
    }
  }
  if (maxDate > minDate) { // falta titulo descriptivo del bloque de texto
    if (key == 'n') {
      maxDate --;
    }
  }
  if (maxDate < 365) { // falta titulo descriptivo del bloque de texto
    if (key == 'm') {
      maxDate ++;
    }
  }
  if (key == 'g') { // falta titulo descriptivo del bloque de texto
    weekMin = minDate;
    weekMax = maxDate;
  }
  if (weekMax != 365) { // falta titulo descriptivo del bloque de texto
    if (key == 'k') {
      weekMax ++;
    }
  }
  if (key == 'a') { // falta titulo descriptivo del bloque de texto
    a *= -1;
  }
  if (key == 's') { // falta titulo descriptivo del bloque de texto
    flip =! flip;
  }
}
class Objeto {
  int  x, y, z, w, wind_max, wind_mean, h, j, k;                              // Estos corresponden a los valores de la T\u00b0(c\u00b0), el n\u00famero del valor en la tabla, humedad y los valores del viento.
  float posX, posY_1, posY_2, posY_3, posY_Wmean, posY_Wmax, t1, t2, e1, e2;  // Las coordenadas, horizontales y verticales, tanto para temperatura y viento.
  float posH_1, posH_2, posH_3;
  int c0_5, c1, c1_5, c2, c2_5, c3, c3_5;                                   // Colores del azul al rojo, promedi\u00e1ndose y cambiando. Los enteros estan en las formas, los decimales en las l\u00edneas.
  
  Objeto(int x, int y, int z, int w, int wind_max, int wind_mean, int h, int j, int k) {
    // Inicializar variables con valores desde el constructor
    this.x = x;
    this.y = y;
    this.w = w;
    this.z = z;
    this.h = h;
    this.j = j;
    this.k = k;
    this.wind_max = wind_max;
    this.wind_mean = wind_mean;
  }

  // sus funciones
  public void display() {

    posX = map(w, weekMin - 1, weekMax, 0, width);                                        // Posiciones de la data en el canvas.
    posY_1 = map(y, -15, 13, 0, height);                                                // Para temperatura.
    posY_2 = map(z, -15, 13, 0, height);
    posY_3 = map(x, -15, 13, 0, height);

    posY_Wmean = map(wind_mean, 3, 95, 0, height);                                      // Para el viento m\u00e1ximo y su mediana.
    posY_Wmax = map(wind_max, 3, 95, 0, height);

    c0_5 = color(map(posY_1 / 2, 0, height, 240, 360), 360, 360);                        // Mapeo de colores, seg\u00fan sus elementos cercanos y el tama\u00f1o del canvas.
    c1 =   color(map(posY_1, 0, height, 240, 360), 360, 360);
    c1_5 = color(map((posY_1 + posY_2) / 2, 0, height, 240, 360), 360, 360);
    c2 =   color(map(posY_2, 0, height, 240, 360), 360, 360);
    c2_5 = color(map((posY_2 + posY_3) / 2, 0, height, 240, 360), 360, 360);
    c3 =   color(map(posY_3, 0, height, 240, 360), 360, 360);    
    c3_5 = color(map((posY_3 + height) / 2, 0, height, 240, 360), 360, 360);

    if (flip == true){

    strokeWeight(4);

    stroke(c0_5);                                                                       // Cada l\u00ednea conectando un elemento comienza donde la otra termina, o desde el margen del canvas.
    line(posX, 0, posX, posY_1);                                                        // Cada una con su color espec\u00edfico.
    stroke(c1_5);
    line(posX, posY_1, posX, posY_2);
    stroke(c2_5);    
    line(posX, posY_2, posX, posY_3);
    stroke(c3_5);
    line(posX, posY_3, posX, height);

    noStroke();

    pushMatrix();
    fill(c1);
    translate(posX, posY_1);
    rotate(PI);
    triangle(0, 10 * sqrt(3), 
      10 * sqrt(3), -10 * sqrt(3), 
      -10 * sqrt(3), -10 * sqrt(3));  
    popMatrix();         

    pushMatrix();
    fill(c2);
    translate(posX, posY_2);             
    rect(0, 0, 15, 15);
    popMatrix();    

    pushMatrix();
    fill(c3);
    translate(posX, posY_3);
    ellipse(0, 0, 30, 30);
    popMatrix();

    pushMatrix();
    stroke(0, 0, 360);
    translate(posX, posY_Wmean);
    line(-7, 0, 7, 0);
    popMatrix();

    pushMatrix();
    stroke(0, 0, 360);
    translate(posX, posY_Wmax);
    line(-7, 0, 7, 0);
    popMatrix();
    }
    
   if (flip == false){                                // Funci\u00f3n correspondiente a los cuadrados de la humedad m\u00e1xima, mediana y m\u00ednima. "Cuadrados azules"
    posH_1 = map(k, 21, 100, 0, height);                                              
    posH_2 = map(j, 21, 100, 0, height);
    posH_3 = map(h, 21, 100, 0, height);

    stroke(360);
    line(posX, posH_1, posX, posH_3);
    
    noStroke();
    fill(180, 360, 360);
    rect(posX, posH_1, 10, 20);
    fill(202, 360, 360); 
    rect(posX, posH_2, 10, 20);
    fill(225, 360, 360);
    rect(posX, posH_3, 10, 20);
  }
  }

  public void texto() {                                        // Texto para ayudar a personalizar la visualizaci\u00f3n de los datos.
    fill(0, 0, 360, a);
    textSize(22);
    text("Datos en pantalla =", 40, 40);
    text(weekMax - weekMin, 260, 40);
    textSize(18);
    text("Custom data", 40, 90);
    text(minDate, 180, 120);
    text("MinLimit", 40, 120);
    text(minDate, 180, 120);
    text("MaxLimit", 40, 150);
    text(maxDate, 180, 150);
  }
}
  public void settings() {  size(1200, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonfinale_francisco" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

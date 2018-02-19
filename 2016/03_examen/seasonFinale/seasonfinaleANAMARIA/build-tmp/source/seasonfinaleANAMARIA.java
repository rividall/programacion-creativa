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

public class seasonfinaleANAMARIA extends PApplet {

//Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Ana Mar\u00eda Ortiz
//seasonfinaleANAMARIA
/* Este c\u00f3digo est\u00e1 hecho en base a los datos del clima de la ciudad de Praga, se enceuntran las visualizaciones de temperatura (m\u00e1ximo,
 media y m\u00ednima), nubes, humedad (m\u00e1ximo, media y m\u00ednima) y precipitaciones en semanas, mes, semestres y d\u00edas respectivamente. 
 La visualizaci\u00f3n de temperatura en semanas se ve a trav\u00e9s de columnas de c\u00edrculos que de acuerdo a su tama\u00f1o y color muestran su valor. La 
 m\u00e1xima fluct\u00faa entre rojo y amarillo, la media entre morado y naranjo y la m\u00ednima entre verde y blanco. 
 La visualizaci\u00f3n de nubes en meses son c\u00edrculos que de acuerdo a su tama\u00f1o y color muestran la cantidad de nubes, mientras m\u00e1s grande y 
 blanca es el c\u00edrculo, m\u00e1s nubes hubo ese d\u00eda y mientras m\u00e1s chicos y verdes, menos hubo.
 La visualizaci\u00f3n de humedad en semestre, son cuadrados que de acuerdo a su tama\u00f1o muestran los niveles de humedad.
 La visualizaci\u00f3n de precipitaciones en d\u00edas se muestra en una circunferencia formada por l\u00edneas que de acuerdo a su largo muestran
 si hubo precipitaciones.
 */

 /*

 */

Calu [] o;
Table tabla; //datos
PFont titulo, bajada, tecla; //texto
int fila, t, r, p;

public void setup() {
  
  background(65);

  tabla = loadTable("Prague_Czech_Republic.csv", "header");
  titulo = createFont("Helvetica-Bold", 14);
  tecla = createFont("Helvetica", 10);
  bajada = createFont("Helvetica", 12);

  o = new Calu[tabla.getRowCount()]; 

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int index = i;
    TableRow fila = tabla.getRow(i);

    //TEMPERATURA
    int maxte = fila.getInt("Max TemperatureC");
    int meante = fila.getInt("Mean TemperatureC");
    int minte = fila.getInt("Min TemperatureC");

    //HUMEDAD
    int maxhu = fila.getInt("Max Humidity");
    int meanhu = fila.getInt(" Mean Humidity");
    int minhu = fila.getInt(" Min Humidity");

    //PRECIPITACIONES
    float pre = fila.getFloat("Precipitationmm");

    //NUBES
    int nube = fila.getInt(" CloudCover");

    t = 30;
    o[i] = new Calu(index, maxte, meante, minte, maxhu, meanhu, minhu, pre, nube);
  }
}

public void draw() {
  //t\u00edtulo
  background(65);
  textFont(titulo);
  fill(255);
  text("PRAGA 2015", 15, 20);

  textFont(tecla);
  fill(255);
  text("Key Pressed 1, 2, 3, 4", 5, 740);

  //key press temperatura
  if (p == 1) { //tecla key press
    textFont(bajada);
    fill(255);
    text("Temperatura", 15, 35);
    text("Semanas", 15, 48);
  }

  //key press nubes
  if (p == 2) { 
    textFont(bajada);
    fill(255);
    text("Nubes", 15, 35);
    text("Meses", 15, 48);
  }

  //key press humedad
  if (p == 3) { 
    textFont(bajada);
    fill(255);
    text("Humedad", 15, 35);
    text("Semestre", 15, 48);
  }

  //key press precipitaciones
  if (p == 4) { 
    textFont(bajada);
    fill(255);
    text("Precipitaciones", 15, 35);
    text("D\u00edas", 15, 48); //se ve todo el a\u00f1o, al igual que en las otras visualizaciones. 
    // la palabra "D\u00edas" no describe lo que se visualiza
  }

  for (int i = 0; i < o.length; i++) {
    //temperatura
    if (p == 1) {
      o[i].dias(t);
      o[i].temp();
    }

    //nubes
    if (p == 2) {
      o[i].dias(t);
      o[i].nubes();
    }

    //humedad
    if (p == 3) {
      o[i].dias(t);
      o[i].humedad();
    }

    //precipitaciones
    if (p == 4) {
      o[i].dias(t);
      o[i].precipitacion();
    }
  }
}

public void keyPressed() {

  if (key == '1') { //semanas
    p = 1;
    t = 7;
  }
  if (key == '2') { //dias por mes
    p = 2;
    t = 12;
  }

  if (key == '3') { //semestre 
    p = 3;
    t = 180;
  }

  if (key == '4') { //d\u00eda
    p = 4;
    t = 30;
  }
}
class Calu {
  int index, paso, maxte, meante, minte, maxhu, meanhu, minhu, nube;
  float x, y, numero, an, t, pre;
  int blanco, verdeo, rojo, naranjo, amarillo, morado, d, f, g, h;
  String titulo;

  Calu(int index, int maxte, int meante, int minte, int maxhu, int meanhu, int minhu, float pre, int nube) {

    x = 0;
    y = 0;
    rectMode(CENTER);

    this.index = index;
    this.maxte = maxte;
    this.meante = meante;
    this.minte = minte;
    this.maxhu = maxhu;
    this.meanhu = meanhu;
    this.minhu = minhu;
    this.pre = pre;
    this.nube = nube;

    //colores
    this.blanco = color(228, 219, 215);
    this.verdeo = color(15, 114, 108);
    this.rojo = color(194, 56, 59);
    this.naranjo = color(206, 110, 35);
    this.amarillo = color(236, 221, 40);
    this.morado = color(96, 42, 105);
  }

  //TEMPERATURA
  public void temp() {
    pushMatrix();
    //m\u00e1xima
    float ma = map(maxte, -1, 36, 0, 1);
    d = lerpColor(rojo, amarillo, ma);

    noStroke();
    fill(d);
    float max = map(maxte, -1, 36, 0, 50);
    ellipse(x + 16, y + 8, max, max);

    //mean
    float me = map(meante, -4, 28, 0, 1);
    f = lerpColor(morado, naranjo, me);

    noStroke();
    fill(f);
    float mea = map(meante, -4, 28, 0, 35);
    ellipse(x + 8, y + 8, mea, mea);


    //m\u00ednima
    float mi = map(minte, -9, 19, 0, 1);
    g = lerpColor(verdeo, blanco, mi);

    noStroke();
    fill(g);
    float min = map(meante, -4, 28, 0, 20);
    ellipse(x, y, min, min);
    popMatrix();
  }

  //HUMEDAD
  public void humedad() {
    pushMatrix();
    //m\u00e1xima
    float ma = map(maxhu, 49, 100, 0, 30); //el map es diferente para el set de variable
    noStroke();
    fill(blanco, 160);
    rect(x, y + 40, ma, ma);

    //mean
    float me = map(meanhu, 32, 97, 0, 30); //el map es diferente para el set de variable

    fill(verdeo, 160);
    rect(x, y + 20, me, me);

    //m\u00ednimo
    float mi = map(minhu, 10, 93, 0, 30); //el map es diferente para el set de variable

    fill(amarillo, 160);
    rect(x, y, mi, mi);
    popMatrix();
  }

  //PRECIPITACIONES
  public void precipitacion() {
    float precipit = map(pre, 0.00f, 9.91f, 0, 100); // si no hubieron lluvias igual se ve una l\u00ednea de 10px, lo que dificulta el entendimiento de los datos
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(270));
    rotate(radians(index * 360 / 365));
    stroke(verdeo);
    strokeWeight(2);
    line(200, 0, 200 + precipit, 0);
    popMatrix();
  }

  //NUBES
  public void nubes() {
    pushMatrix();
    float nu = map(nube, 1, 8, 0, 10);
    h = lerpColor(verdeo, blanco, nu);
    noStroke();
    fill(h);
    float nub = map(nube, 1, 8, 0, 30);
    ellipse(x + 10, y, nub, nub);
    popMatrix();
  }

  //El titulo debe describir mejor la funci\u00f3n
  public void dias(int paso) {
    for (int i = 0; i < o.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);  
        float factor1 = map(paso, 7, 182, 1, .6f); 
        float factor2 = map(paso, 7, 182, .09f, .1f); 
        float factor3 = map(paso, 7, 182, .9f, .9f); 

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  //circulo
  public void circulo(int paso) {
    an = -PI / 2;
    for (int i = 0; i < o.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);  
        float factor1 = map(paso, 7, 182, 1, .6f); 
        float factor2 = map(paso, 7, 182, .09f, .1f); 
        float factor3 = map(paso, 7, 182, .9f, .9f); 

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
}
  public void settings() {  size(1150, 750); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonfinaleANAMARIA" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

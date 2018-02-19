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

public class seasonfinaleMAITE extends PApplet {

/* Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
 Maite Iturriaga Batlle
 seasonfinale_MAITE
 
 Examen processing, mi c\u00f3digo lee los datos meteorol\u00f3gicos de Aruba 2015.
 es necesario el uso del teclado para ver el proyecto, teclas: 1,2,3,4.
 1. Muestra en una circunferencia gracias a l\u00edneas, la visibilidad m\u00ednima, media y m\u00e1xima. 
 2. Muestra la humedad presente en el trimestre, consiste en m\u00ednima, media y m\u00e1xima, se representa en opacidad y tama\u00f1o de elipses
 3. Muestra la temperatura que present\u00f3 Aruba en el a\u00f1o 2015, a trav\u00e9s de un map y lerp de colores, las elipses cambian de tama\u00f1o y color dependiendo la m\u00ednima, media y m\u00e1xima.
 4. Muestra la lluvia y nubes que se presentaron, todo esto visto mes a mes, los rect\u00e1ngulos varian en su eje x y opacidad (nubes), precipitaciones representados en puntos y grosor del punto define cantidad de mm.
 Este c\u00f3digo cuenta con 5 set de variables y 4 visualizaciones distintas, correspondientes a: a\u00f1o, semestre, trimestre, mes y + d\u00eda. 
 */

/*
NIVEL: 6.0 ()
*/
Maite [] e;
Table tabla;
//Tipograf\u00eda
PFont titulo, cuerpo;
int fila, k, manitos;

public void setup() {

  
  background(51);

  //variable para if de variables
  manitos = 1;

  tabla = loadTable("data_Aruba.csv", "header");

  //Elecci\u00f3n de tipograf\u00eda
  titulo = createFont("HelveticaNeue-Bold", 12);
  cuerpo = createFont("HelveticaNeue-Light ", 10);

  e = new Maite[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int index = i; // esto no es necesario, porque i e index son los mismos valores
    TableRow fila = tabla.getRow(i);

    //humedad
    int maxH = fila.getInt("Max Humidity");
    int meanH = fila.getInt(" Mean Humidity");
    int minH = fila.getInt(" Min Humidity");
    //temperatura
    int mint = fila.getInt("Min TemperatureC");
    int meant = fila.getInt("Mean TemperatureC");
    int maxt = fila.getInt("Max TemperatureC");
    //visibilidad
    int maxV = fila.getInt(" Max VisibilityKm");
    int meanV = fila.getInt(" Mean VisibilityKm");
    int minV = fila.getInt(" Min VisibilitykM");
    //precipitaciones
    int prec = fila.getInt("Precipitationmm");
    //nubes
    int nube = fila.getInt(" CloudCover");

    k = 30;

    e[i] = new Maite(index, maxt, meant, mint, maxV, meanV, minV, prec, nube, maxH, meanH, minH);
  }
}
public void draw() {
  background(51);
  textFont(titulo);
  fill(255);
  text("Aruba, 2015", 20, 20);
  text("KeyPressed 1, 2, 3, 4", 535, 20);


  //descripci\u00f3n general del bloque de texto
  if (manitos == 1) {
    textFont(cuerpo);
    fill(255);
    text("A\u00f1o", 20, 40);
    text("Visibilidad", 20, 60);
    text("L\u00edneas Amarilla: Visibilidad M\u00e1xima - L\u00edneas Blancas: Visibilidad Media - L\u00edneas Celestes: Visibilidad M\u00ednima", 330, 720);
  }

  if (manitos == 2) {
    textFont(cuerpo);
    fill(255);
    text("Trimestre", 20, 40);
    text("Humedad", 20, 60);
    text("Elipses tienen Opacidad y Tama\u00f1o representan: Humedad M\u00e1xima, Humedad Media, Humedad M\u00ednima", 350, 720);
  }
  if (manitos == 3) {
    textFont(cuerpo);
    fill(255);
    text("Semestre", 20, 40);
    text("Temperatura", 20, 60);
    text("Elipses entre Naranjo y Rojo: T\u00ba M\u00e1xima - Elipses entre Amarillo y Verde: T\u00ba Media - Elipses entre Blanco y Celestes: T\u00ba M\u00ednima", 300, 700);
    text("Cambio de Tama\u00f1o y Contorno", 520, 720);
  }
  if (manitos == 4) {
    textFont(cuerpo);
    fill(255);
    text("Mes", 20, 40);
    text("Nubes - Lluvia", 20, 60);
    text("Puntos: Precipitaciones (mm) - Rect\u00e1ngulos: Nubes", 500, 700);
    text("Puntos: Stroke representa los mm - Rect\u00e1ngulos: eje x y su opacidad representan", 400, 720);
  }


  for (int i = 0; i < e.length; i++) {
    //descripci\u00f3n general del bloque de texto
    if (manitos == 1) {
      e[i].dias(k);
      e[i].visibilidad();
    }
    //descripci\u00f3n general del bloque de texto
    if (manitos == 2) {
      e[i].dias(k);
      e[i].humedad();
    }

    //descripci\u00f3n general del bloque de texto
    if (manitos == 3) {
      e[i].dias(k);
      e[i].temperatura();
    }
    //descripci\u00f3n general del bloque de texto
    if (manitos == 4) {

      e[i].dias(k);
      e[i].lluvia();
      e[i].nube();
    }
  }
}

public void keyPressed() {

  if (key == '1') {
    manitos = 1;
    k = 51; //A\u00f1o
  }

  if (key == '2') {
    manitos = 2;
    k = 120; //Trimestre
  }

  if (key == '3') {
    manitos = 3;
    k = 180; //Semestre
  }

  if (key == '4') {
    manitos = 4;
    k = 30; //Mes
  }
}
class Maite {
  int index, paso, mint, maxt, meant, maxV, meanV, minV, nube, maxH, meanH, minH;
  float x, y, numero, an, t, prec;
  int rojo, blanco, celeste, verde, amarillo, d, f, g;
  String titulo;


  Maite(int index, int maxt, int mint, int meant, int maxV, int meanV, int minV, float prec, int nube, int maxH, int meanH, int minH) {


    x = 0;
    y = 0;
    rectMode(CENTER);

    //set de variables humedad.
    this.maxH = maxH;
    this.meanH = meanH;
    this.minH = minH;

    //variable precipitaci\u00f3n.
    this.prec = prec;
    //variable nube.
    this.nube = nube;

    this.index = index;

    //set de variables temperatura.
    this.mint = mint;
    this.meant = meant;
    this.maxt = maxt;

    //set de variables viento.
    this.minV = minV;
    this.meanV = meanV;
    this.maxV = maxV;

    this.amarillo = color(255, 255, 0);
    this.verde = color(0, 255, 0);
    this.blanco = color(255);
    this.celeste = color(0, 255, 255);
    this.rojo = color(255, 0, 0);
  }

  /*
  C\u00edrculos blancos que representan humedad, los datos son representados
   por su opacidad y tama\u00f1o.
   */
  public void humedad() {
    float locura = map(minH, 6, 31, 0, 30);
    float locura2 = map(minH, 6, 31, 1, 5); //el map esta fuera de rango en el set de variable
    fill(blanco, locura);
    noStroke();
    ellipse(x, y - 16, locura2, locura2); //arriba

    float loca = map(meanH, 6, 31, 31, 70);
    float loca2 = map(meanH, 6, 31, 5, 8);//el map esta fuera de rango en el set de variable
    fill(blanco, loca);
    noStroke();
    ellipse(x, y, loca2, loca2); //centro

    float loco = map(maxH, 6, 31, 71, 100);
    float loco2 = map(maxH, 6, 31, 8, 10);//el map esta fuera de rango en el set de variable
    fill(blanco, loco);
    noStroke();
    ellipse(x, y + 16, loco2, loco2); //abajo
  }
  /*
  Puntos que representan lluvia, los datos son 
   representados a trav\u00e9s de su stroke, mayor mm mayor stroke. 
   */
  public void lluvia() {
    float loco = map(prec, 0.0f, 12.95f, 0, 22);
    stroke(blanco);
    strokeWeight(loco);
    point(x, y);
  }

  /*
  C\u00edrculos que representan temperatura, los datos son 
   representados a trav\u00e9s de su color, 
   temperatura m\u00ednima, entre celeste y blanco
   temperatura media, entre verde y amarillo
   temperatura m\u00e1xima, entre amarillo y rojo.
   */
  public void temperatura() {
    float loco = map(mint, 23, 28, 0, 1);  //temperatura m\u00ednima ..
    d = lerpColor(blanco, celeste, loco);

    float locura = map(meant, 26, 32, 0, 1);  //temperatura media ..
    f = lerpColor(verde, amarillo, locura);

    float loca = map(maxt, 29, 35, 0, 1);  //temperatura m\u00e1xima ..
    g = lerpColor(amarillo, rojo, loca);

    fill(d); // m\u00ednima ..
    strokeWeight(1);  // todo valor que el map bacan de inferior a 2, no se ver\u00e1 por que este strokeWeight es muy grande.  
    stroke(celeste);
    float funciona = map(mint, 23, 28, 0, 5); // que es el 40% de valores posibles
    ellipse(x - 8, y - 8, funciona, funciona);

    fill(f); // media ..
    strokeWeight(2);  
    stroke(amarillo); // todo valor que el map bacan de inferior a 4, no se ver\u00e1 por que este strokeWeight es muy grande.
    float funciono = map(meant, 26, 32, 0, 10);// que es el 40% de valores posibles
    ellipse(x, y, funciono, funciono);

    fill(g); // m\u00e1xima ..
    strokeWeight(3);  // todo valor que el map bacan de inferior a 6, no se ver\u00e1 por que este strokeWeight es muy grande.
    stroke(rojo);
    float bacan = map(maxt, 29, 35, 0, 15); // que es el 33% de valores posibles
    ellipse(x + 8, y + 8, bacan, bacan);
  }

  /*
  Cuadrado que representan las nubes, cambian en la variable Y de su tama\u00f1o,
   y en su opacidad.
   */
  public void nube() {
    float itu = map(nube, 1, 3, 10, 100);
    fill(celeste, itu);
    noStroke();
    rect(x, y, itu, 5);
  }

  /*
  L\u00edneas que representan la visibilidad, los datos se 
   muestran a trav\u00e9s de su posici\u00f3n en x
   */
  public void visibilidad() {

    /* 
    cuando se trabaja con map en grupos de variables, deben ser igual
    porque sin importar el valor que entre en cada una de las variables,
    no podr\u00e1 ser comparado con el resto, 
    1, 10 - 6, 17 - 6, 31 deben ser iguales.
    */
    float maitex = map(minV, 1, 10, 35, 300);  //visibilidad m\u00ednima ..
    float maiturri = map(meanV, 6, 17, 35, 300);  //visibilidad media ..
    float maitela = map(maxV, 6, 31, 35, 300);  //visibilidad m\u00e1xima ..

    /*
    Si las lineas se sobreponen y adem\u00e1s inician en radios distintos,
    no podemos saber cuando termina una que est\u00e1 en el fondo,
    y tampoco comparar esos valores con el resto
    */
    //visibilidad m\u00ednima
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(index * 360 / 365));
    strokeWeight(2);
    stroke(celeste, 150);
    line(50, 0, maitex, 0);
    popMatrix();

    //visibilidad media
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(index * 360 / 365));
    strokeWeight(2);
    stroke(blanco, 150);
    line(40, 0, maiturri, 0);
    popMatrix();

   //visibilidad m\u00e1xima
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(index * 360 / 365));
    strokeWeight(2);
    stroke(amarillo, 10);
    line(30, 0, maitela, 0);
    popMatrix();
  } 

  /*
  El uso de esta funci\u00f3n es irrelevante porque es una copia de la funci\u00f3n dias
  con la diferencia de 
  an = -PI/2; 
  qu\u00e9 adem\u00e1s no se usa. 
  */
  //Usado en viento, se usa an = PI/2.
  public void diasprincipe(int paso) {
    an = -PI/2;
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .04f, .4f);  //distancia Y
        float factor1 = map(paso, 7, 182, 2, .6f); //distancia Y
        float factor2 = map(paso, 7, 182, .1f, .1f); // distancia x
        float factor3 = map(paso, 7, 182, .10f, .9f); //distancia x

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  /*Usado en todos los set de variables menos viento, 
   lluvia, nube, temperatura y humedad.
   */

  public void dias(int paso) {
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .03f, .4f);  //distancia Y
        float factor1 = map(paso, 7, 182, 1, .6f); //distancia Y
        float factor2 = map(paso, 7, 182, .09f, .1f); // distancia x
        float factor3 = map(paso, 7, 182, .9f, .9f); //distancia x

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }
}
  public void settings() {  size(1200, 740); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonfinaleMAITE" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

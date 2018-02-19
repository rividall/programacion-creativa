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

public class SeasonFinale_Isi extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
//Isidora Ordo\u00f1ez.
//seasonfinaleisi

/*
En este c\u00f3digo se visualizan los datos clim\u00e1ticos de la ciudad Barrow en Alaska, el c\u00f3digo
cuenta con cuatro tipos de visualizaciones que ense\u00f1an distintos datos. En primer lugar, 
tenemos la visualizaci\u00f3n del void elipses (tecla '1'), la cual a trav\u00e9s del color muestra
las temperaturas m\u00e1xima y m\u00ednima graficadas con el color rojo y azul respectivamente, generando
una gama de rosas y morados por las fr\u00edas temperaturas del lugar. Tambi\u00e9n a trav\u00e9s de un frameCount
vemos c\u00f3mo cambia el tama\u00f1o de las elipses seg\u00fan los datos entregados del punto de roc\u00edo, y por \u00faltimo,
vemos c\u00f3mo la opacidad es alterada por los datos de Visibilidad en kil\u00f3metros de Barrow.
En la segunda visualizaci\u00f3n llamada void lineas (tecla '2'), vemos c\u00f3mo los colores son alterados nuevamente,
pero esta vez gracias a la velocidad del viento, creando gamas entre verdes y azules, y c\u00f3mo tambi\u00e9n
el tama\u00f1o de estas l\u00edneas se ve alterado por la cantidad de nubes que hubo ese d\u00eda.
La tercera visualizaci\u00f3n es el void tri\u00e1ngulo (tecla '3'), la cual estudia la temperatura
seg\u00fan color y hacia d\u00f3nde se direcciona el v\u00e9rtice, ocupando el punto 'y' de las otras dos aristas
como punto 0.
Por \u00faltimo el void circular (tecla '4'), este \u00faltimo void estudia el mar, los colores de las l\u00edneas
est\u00e1n dados por la presi\u00f3n del mar en tonos rojos y verdes para m\u00e1xima y m\u00ednima respectivamente
y la r\u00e1faga define el tama\u00f1o de la l\u00ednea.
Para poder usar de una mejor manera los datos, estos tuvieron que mapear sus valores a trav\u00e9s de la funci\u00f3n
"map", adem\u00e1s al c\u00f3digo se le agregaron una serie de teclas para la reorganizaci\u00f3n de un a\u00f1o, pudi\u00e9ndolo
ver en semestre ('f'), estaciones ('d'), meses ('s') y semanas ('s').
*/
/*
NIVEL: 
*/
// Creaci\u00f3n de variables y Objeto:
Objeto[] o;
Table table;
int fila, a, c, objeto;
boolean b, b2, b3;
PFont titulo, bajada, texto;

// Inicializaci\u00f3n de variables:
public void setup() {
  

  table = loadTable("Barrow_Alaska.csv", "header");  //llama a la tabla de datos.
  o = new Objeto[table.getRowCount()];
 // Variables:  
  b = true;
  a = 360;
  c = 30;

 // Texto:
  titulo = createFont("Helvetica-Bold", 20);
  bajada = createFont("Helvetica", 12); 
  texto = createFont("Helvetica", 15);

//Creaci\u00f3n de variable a datos a trabajar:
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow fila = table.getRow(i);

    int index = i; // esto no es necesario, porque i e index son los mismos valores
    int maxTemperature = fila.getInt("Max TemperatureC");
    int minTemperature = fila.getInt("Min TemperatureC");
    int meanTemperature = fila.getInt("Mean TemperatureC");
    int dewPointC = fila.getInt("Dew PointC");
    int minDewPointC = fila.getInt("Min DewpointC");
    int visibility = fila.getInt(" Mean VisibilityKm");
    int gustSpeed = fila.getInt(" Max Gust SpeedKm/h");
    int maxWspeed = fila.getInt("Max Wind SpeedKm/h");
    int meanWspeed = fila.getInt(" Mean Wind SpeedKm/h");
    float maxPressure = fila.getFloat(" Max Sea Level PressurehPa");
    float minPressure = fila.getFloat(" Min Sea Level PressurehPa");
    float cloud = fila.getFloat(" CloudCover");


    o[i] = new Objeto (i, index, gustSpeed, maxTemperature, minTemperature, meanTemperature, dewPointC, minDewPointC, visibility, maxPressure, minPressure, maxWspeed, meanWspeed, cloud);
  }
}

//Ejecuci\u00f3n de programa:
public void draw() {
  background(0);

 //Texto:
  noStroke();
  fill(50);
  rect(920, 00, 280, 130);

  textFont(titulo);
  fill(90, 149, 255);
  text("BARROW ALASKA 2015", 930, 20);

  textFont(bajada);
  fill(70, 232, 167);
  text(" 1 = elipses", 930, 60);
  text(" 2 = l\u00edneas", 930, 80);
  text(" 3 = tri\u00e1ngulo", 930, 100);
  text(" 4 = circular", 930, 120);
  text(" a = semana", 1090, 60);
  text(" s = mes", 1090, 80);
  text(" d = estaci\u00f3n", 1090, 100);
  text(" f = semestre", 1090, 120);


  if (objeto == 0) {
    textFont(texto);
    fill(70, 232, 167);
    text("El color est\u00e1 representado por la", 900, 550);
    text("temperatura, mientras m\u00e1s azul mas fr\u00eda", 900, 570);
    text("el cambio del punto de roc\u00edo afecta en ", 900, 590);
    text("el tama\u00f1o y la visibilidad la opacidad.", 900, 610);
  }

  if (objeto == 1) {
    textFont(texto);
    text("El color est\u00e1 representado por la", 900, 550);
    text("velocidad del viento, mientras m\u00e1s", 900, 570);
    text("verde mas viento el tama\u00f1o de la ", 900, 590);
    text("l\u00ednea est\u00e1 dado por la cantidad de nubes.", 900, 610);
  }

  if (objeto == 2) {
    textFont(texto);
    text("Los tri\u00e1ngulos nos muestran la", 900, 550);
    text("temperatura. M\u00ednima y m\u00e1xima en el color,", 900, 570);
    text("y la media est\u00e1 dada por la punta del", 900, 590);
    text("tri\u00e1ngulo, siendo la base de este los 0\u00bac.", 900, 610);
  }

  if (objeto == 3) {
    textFont(texto);
    text("El color de las l\u00edneas est\u00e1 dado por ", 900, 550);
    text("la presi\u00f3n del mar, siendo las m\u00e1ximas rojas", 900, 570);
    text("la longitud de la l\u00ednea, est\u00e1 dada por la ", 900, 590);
    text("r\u00e1faga de cada d\u00eda.", 900, 610);
  }

 //Objetos:
  for (int i = 0; i < o.length; i++) {
    if (objeto == 0) {
      o[i].elipse();
    }

    if (objeto == 1) {
      o[i].linea();
    }

    if (objeto == 2) {
      o[i].triangulo();
    }

    if (objeto == 3) {
      // funci\u00f3n legible solo en distribuci\u00f3n anual
      o[i].circular(a);
    }


    o[i].dias(c);
  }
}

//Ejecuci\u00f3n con teclado:
public void keyPressed() {

  if (key == '1') {
    objeto = 0;
  }

  if (key == '2') {
    objeto = 1;
  }

  if (key == '3') {
    objeto = 2;
  }

  if (key == '4') {
    objeto = 3;
  }

  if (key == 'a') {
    a = 7;
    c = 7;
  }

  if (key == 's') {

    a = 365;
    c = 30;
  }

  if (key == 'd') {
    a = 91;
    c = 91;
  }

  if (key == 'f') {
    a = 180;
    c = 180;
  }
}
class Objeto {

  // Declaraci\u00f3n de variables:

  float Visibility, MaxPressure, MinPressure, x, y, t, y3, Cloud;
  int maxTemperature, minTemperature, meanTemperature, dewPointC, minDewPointC, gustSpeed, maxWspeed, meanWspeed;
  int index, i, div;
  boolean bol;
  
  // Inicializaci\u00f3n de variables:
  Objeto(int i, int index, int gustSpeed, int maxTemperature, int minTemperature, int meanTemperature, int dewPointC, int minDewPointC, float visibility, float maxPressure, float minPressure, int maxWspeed, int meanWspeed, float cloud) {
    this.i = i;
    this.index = index;
    this.MaxTemperature = MaxTemperature;
    this.MinTemperature = MinTemperature;
    this.MeanTemperature = MeanTemperature;
    this.MinDewPointC = MinDewPointC;
    this.DewPointC = DewPointC;
    this.GustSpeed = GustSpeed;
    this.Visibility = Visibility;
    this.MaxPressure = MaxPressure;
    this.MinPressure = MinPressure;
    this.MaxWspeed = MaxWspeed;
    this.MeanWspeed = MeanWspeed;
    this.Cloud = Cloud;
    x = 0;
    y = 0;
    t = 0;
    bol = true;
  }

  // Void que dibuja elipses seg\u00fan la temperatura, punto de roc\u00edo y visibilidad.  
  public void elipse() {

    //Cambio de tama\u00f1o:
    float MaxdP = map(DewPointC, -34, 12, 5, 20);
    float MindP = map(MinDewPointC, -96, 7, 5, 20);
    if (frameCount % 200 == 0) {
      bol= !bol;
    }
    // no est\u00e1 desrito en la visualizaci\u00f3n, cuando esto ocurre.
    if (bol == true) {
      t = MaxdP;
    } else {
      t = MindP;
    }
    //Creaci\u00f3n del Objeto:
    ellipseMode(CENTER);
    float c1 = map(MaxTemperature, -33, 20, 50, 255);  // Dato para color. 
    float c2 = map(MinTemperature, -40, 11, 50, 255);  // Dato para color.  
    float trans = map(Visibility, 1, 16, 50, 255);  

    noStroke();
    fill (c1, 0, c2, trans);
    ellipse(x, y, t, t);
  }

// Void que dibuja l\u00edneas que cambian seg\u00fan el viento y la nubosidad:
  public void linea() {
    // Mapeo de datos:
    ellipseMode(CENTER);
    float c1 = map(MaxWspeed, 10, 58, 50, 255);  // Dato para color.
    float c2 = map(MeanWspeed, 5, 50, 50, 255);  // Dato para color.  
    float tam = map(Cloud, 0, 8, 3, 30); 
    //Creaci\u00f3n del Objeto:
    stroke(0, c1, c2);
    strokeWeight(4);
    line(x, y, x, y + tam);
  }

//Void que dibuja l\u00edneas a partir de una grilla circular e interpreta datos de presi\u00f3n del agua y r\u00e1faga:
  public void circular(int linea) {
    //Reubico el punto de origen:
    pushMatrix();
    translate((width / 2 - 350), height + 250 );
    rotate(TWO_PI * 3 / 4);
    // Mapeo de datos:
    float rot = map(i, 0, linea, 0, TWO_PI);           // map para crear un c\u00edrculo de 360\u00ba con la cantidad de datos de una variable.
    float c1 = map(MaxPressure, 991, 1049, 50, 255);   //dato para colores.
    float c2 = map(MinPressure, 990, 1043, 50, 255);   //dato para colores. 
    float tam = map(GustSpeed, 13, 79, 0.9f, 1.2f);      //dato para tama\u00f1o. 
    float x2 = (width / 2) + 200 * tam * cos(rot);
    float y2 = (height / 2) + 200 * tam * sin(rot);

    x = (width / 2) + 200 * cos(rot);
    y = (height / 2) + 200 * sin(rot);
    
    //Creaci\u00f3n de Objeto:
    stroke(c1, c2, 0);
    strokeWeight(1);
    line(x, y, x2, y2);
    popMatrix();
  }

// Void que trabaja con la temperatura, m\u00ednima y m\u00e1xima en colores y media seg\u00fan v\u00e9rtice:
  public void triangulo() {
    // Mapeo de datos:
    float c1 = map(MaxTemperature, -33, 20, 50, 255);   //dato para colores.
    float c2 = map(MinTemperature, -40, 11, 50, 255);   //dato para colores.
    float y2 = map(MeanTemperature, -34, 13, -30, 20);  //dato para posici\u00f3n del v\u00e9rtice.
    //Creaci\u00f3n de Objetos:
    noStroke();
    fill(c1, c2, 0);
    triangle(x, y, x + 20, y, x + 10, y + y2);
  }

// Void que lee los datos de la tabla y los posiciona en el canvas seg\u00fan columnas predefinidas por la variable "dia":
  public void dias(int dia) {
    for (int i = 0; i < o.length; i++) {
      if (index >= i * dia && index < i * dia + dia) {
        float dy1 = map(dia, 7, 182, .03f, .4f);          //distancia de la y
        float dy2 = map(dia, 7, 182, 1, .6f);            // distancia de y
        float dx1 = map(dia, 7, 182, .07f, .1f);          //distancia x
        float dx2 = map(dia, 7, 182, .7f, .9f);           //distancia x

        float x1 = map(index % dia, 0, dia - 1, width * dx1, width * dx2);
        x = x1;

        float y1 = map((i), 0, 365 / dia, height * dy1, height * dy2);
        y = y1;
      }
    }
  }
}
  public void settings() {  size(1200, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "SeasonFinale_Isi" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

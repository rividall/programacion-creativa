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

public class seasonfinaleDante extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// Dante Crovetto
// seasonfinaleDante

/*
Se crean tres visualizaciones de datos, la primera, abri\u00e9ndola presionando la tecla 'a', muestra una visualizaci\u00f3n con l\u00edneas en el contorno de un c\u00edrculo. Las l\u00edneas que van hacia
afuera son la temperatura m\u00e1xima, las l\u00edneas que van hacia dentro son la temperatura m\u00ednima, el color de cada l\u00ednea muestra en un rango entre azul y amarillo la temperatura media. 
Adem\u00e1s se dibujan l\u00edneas grises indicando la duraci\u00f3n de cada mes, siendo enero la primera visualizaci\u00f3n en sentido horario.
La segunda, abri\u00e9ndola presionando la tecla 's', muestra una visualizaci\u00f3n con l\u00edneas en el contorno de dos c\u00edrculos. Las l\u00edneas que van hacia
afuera con un grosor mas grande son el punto de roc\u00edo m\u00e1ximo, la continuaci\u00f3n de estas l\u00edneas es el punto de roc\u00edo m\u00ednimo, el color de cada l\u00ednea muestra en un rango entre azul 
y amarillo el punto de roc\u00edo medio. Adem\u00e1s se dibujan l\u00edneas grises indicando la duraci\u00f3n de cada mes, siendo enero la primera visualizaci\u00f3n en sentido horario de la figura izquierda
y julio de la derecha.
La tercera, abri\u00e9ndola presionando la tecla 'e', muestra cuatro visualizaciones con l\u00edneas desde el centro de cada c\u00edrculo. Las l\u00edneas que van hacia afuera muestran la direcci\u00f3n del
viento en \u00e1ngulos. La primera visualizaci\u00f3n correspondiente a verano inicia a las 12 en sentido horario, la segunda, a su derecha oto\u00f1o, la tercera a mano izquierda abajo invierno y
por \u00faltimo, a mano derecha abajo primavera.
 */

/*
NIVEL: 3 visualizaciones (5.5) + 
*/

// Se crean las variables y el class.
Objects [] objetos;
Table tabla;
PFont texto, texto2;
int datos, n_objetos, visualiza;

// Se crea el void setup, con el tama\u00f1o del canvas, las tipograf\u00edas a usar. Se llama la tabla, se crean los objetos.
public void setup() {
  
  texto = createFont("Arial", 30);
  texto2 = createFont("Arial", 17);
  tabla = loadTable("Agadez_Niger.csv", "header");
  objetos = new Objects[tabla.getRowCount()];

// Se crean las variables, se igualan a las variables provenientes de la tabla, y son enviados a la clase.
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow datos = tabla.getRow(i);

    int index = i; // esto no es necesario, porque i e index son los mismos valores
    int temperatura_max = datos.getInt("Max TemperatureC");
    int temperatura_mean = datos.getInt("Mean TemperatureC");
    int temperatura_min = datos.getInt("Min TemperatureC");
    int wind_direction = datos.getInt("WindDirDegrees");
    int dewpoint_max = datos.getInt("Dew PointC");
    int dewpoint_min = datos.getInt("Min DewpointC");
    int dewpoint_mean = datos.getInt("MeanDew PointC");


    objetos[i] = new Objects(index, temperatura_max, temperatura_mean, temperatura_min, dewpoint_max, dewpoint_mean, dewpoint_min, wind_direction);
  }
  visualiza = 0;
}

// Se crea el void draw, donde se crea un fondo, se ajustan los colores, se escriben los textos y se dibuja un rect\u00e1ngulo que estar\u00e1 debajo de la leyenda.
public void draw() {
  background(0xffFFFCF7);
  stroke(0xffFFC66A);
  fill(0xffFFE3B7, 30);
  rect(880, 50, 315, 500);
  textFont(texto);
  fill(100);
  text("Agadez Niger 2015", 900, 90);
  textFont(texto2);
  text("a = A\u00f1o", 900, 130);
  text("s = Semestre", 900, 160);
  text("e = Estaci\u00f3n", 900, 190);

// Se escriben los datos dependiendo del n\u00famero de visualizaci\u00f3n que est\u00e9 activado.
  if (visualiza == 0) {
    text("Las l\u00edneas que van hacia afuera", 900, 220);
    text(" son la temperatura m\u00e1xima.", 895, 250);
    text("Las l\u00edneas que van hacia dentro", 900, 280);
    text(" son la temperatura m\u00ednima.", 895, 310);
    text("El color es la temperatura media", 900, 340);
    text("Las l\u00edneas grises son los meses,", 900, 370);
    text("la l\u00ednea que apunta a las 12 es Enero", 900, 400);
    text("y as\u00ed contin\u00faa en sentido horario", 900, 430);
  }
  if (visualiza == 1) {
    text("Las l\u00edneas que van hacia afuera", 900, 220);
    text("con un grosor mas grueso", 895, 250);
    text("son el punto de roc\u00edo m\u00e1ximo.", 900, 280);
    text("Las l\u00edneas que contin\u00faan", 895, 310);
    text("son el punto de roc\u00edo m\u00ednimo", 900, 340);
    text("Las l\u00edneas grises son los meses,", 900, 370);
    text("la l\u00ednea que apunta a las 12 es Enero", 900, 400);
    text("y as\u00ed contin\u00faa en sentido horario,", 900, 430);
    text("El mes de julio comienza a las 12", 900, 460);
    text("En la figura derecha.", 900, 490);
  }
  if (visualiza == 3) {
    text("Las l\u00edneas que van hacia afuera", 900, 220);
    text("son la direcci\u00f3n del viento en \u00e1ngulos.", 895, 250);
    text("Verano es la figura superior izquierda.", 900, 280);
    text("Oto\u00f1o es la figura superior derecha", 895, 310);
    text("Invierno es la figura inferior izquierda", 900, 340);
    text("Primavera es la figura inferior derecha.", 900, 370);
    text("Cada estaci\u00f3n del a\u00f1o comienza", 900, 400);
    text("a las 12.", 900, 430);
  }
// Se dibujan las visualizaciones provenientes de la clase a trav\u00e9s de un for loop
  for (int i = 0; i < tabla.getRowCount(); i++) { 
    if (visualiza == 0) {
      objetos[i].year();
    }
    if (visualiza == 1) {
      objetos[i].semestre();
    }
    if (visualiza == 3) {
      objetos[i].mes();
    }
  }
}
// Se crean distintos void keyPressed para cambiar el dato de "visualiza" para as\u00ed dibujar las diferentes visualizaciones.
public void keyPressed() {
  if (key == 'a') {  
    visualiza = 0; 
  } 
  if (key == 's') { 
    visualiza = 1; 
  }
  if (key == 'e') { 
    visualiza = 3;  
  }
}
// Se crea la clase Objects, se inicializan las variables int y float, y se importan los valores de las variables provenientes de la otra ventana con su respectiva variable.

class Objects {
  int index, temperatura_max, temperatura_mean, temperatura_min, dewpoint_max, dewpoint_mean, dewpoint_min, wind_direction;
  float x, y, x2, y2, x_max, y_max, x_min, y_min;


  Objects(int index, int temperatura_max, int temperatura_mean, int temperatura_min, int dewpoint_max, int dewpoint_mean, int dewpoint_min, int wind_direction) {


    this.index = index;
    this.temperatura_max = temperatura_max;
    this.temperatura_mean = temperatura_mean;
    this.temperatura_min = temperatura_min;
    this.dewpoint_max = dewpoint_max;
    this.dewpoint_mean = dewpoint_mean;
    this.dewpoint_min = dewpoint_min;
    this.wind_direction = wind_direction;
  }

/* Se realiza un pushMatrix donde ocurre un cambio de origen, una rotaci\u00f3n para que los datos aparezcan desde la parte superior, y se realizan diferentes map de los datos provenientes
 de la tabla.*/
  public void year() { 
    pushMatrix();
    translate((width / 2 - 270), (height / 2)); 
    rotate(TWO_PI * 3 / 4);
    // translate((X * 2), (Y * 2));
    float deI = map(index, 0, 364, 0, TWO_PI);
    float c1 = map(temperatura_max, 16, 40, 200, 250);   
    float c2 = map(temperatura_min, 4, 33, 200, 150);   
    int desde = color (0xff49B4AE);
    int hasta = color (0xffD8BB11);
    float amt = map(temperatura_mean, 17, 40, 0, 0.99f);
    int color_linea = lerpColor (desde, hasta, amt);

// Se dibujan l\u00edneas marcando los meses del a\u00f1o y se modifica el valor de las variables para as\u00ed lograr que roten
    if (index == 0 || index == 31 || index == 59 || index == 90 || index == 120 || index == 151 || index == 181 || index == 212 || index == 243 || index == 274 || index == 304 || index == 335 || index == 365) {

      stroke(190, 100);
      line(x, y, 290 * cos(deI), 290 * sin(deI));
      line(x2, y2, 130 * cos(deI), 130 * sin(deI));
    }
    stroke(color_linea);
    x = 203 * cos(deI);
    x2 = 197 * cos(deI);
    x_max = c1 * cos(deI);
    x_min = c2 * cos(deI);
    y = 203 * sin(deI);
    y2 = 197 * sin(deI);
    y_max = c1 * sin(deI);
    y_min = c2 * sin(deI);
// Se dibujan las l\u00edneas correspondientes a cada d\u00eda y se cierra con un popMatrix
    line(x, y, x_max, y_max);
    line(x2, y2, x_min, y_min);
    popMatrix();
  }
  
/* Se realiza un pushMatrix donde ocurre un cambio de origen, una rotaci\u00f3n para que los datos aparezcan desde la parte superior, y se realizan diferentes map de los datos provenientes
 de la tabla.*/
  public void semestre() { 
    pushMatrix();
    translate((width / 2 - 360), (height / 2)); 
    rotate(TWO_PI * 3 / 4);
    // translate((X * 2), (Y * 2));

    float deI = map(index, 0, 180, 0, TWO_PI);
    float c1 = map(dewpoint_max, -23, 29, 100, 150);   
    float c2 = map(dewpoint_min, -30, 21, 0, 50);   
    int desde = color (0xff49B4AE);
    int hasta = color (0xffD8BB11);
    float amt = map(dewpoint_mean, -20, 23, 0, 0.99f);
    int color_linea = lerpColor (desde, hasta, amt);


// Se modifica el valor de las variables para as\u00ed lograr que roten.
    x = 113 * cos(deI);
    x_max = (c1) * cos(deI);
    x_min = (c1 + c2) * cos(deI);
    y = 113 * sin(deI);
    y_max = (c1) * sin(deI);
    y_min = (c1 + c2) * sin(deI);


// Se crea una condici\u00f3n para lograr as\u00ed dibujar dos figuras en vez de una, y se dibujan las l\u00edneas correspondientes a los meses y d\u00edas de ambas visualizaciones.
    if (index >= 182) {
      translate(0, 430);
    }
    if (index == 0 || index == 31 || index == 59 || index == 90 || index == 120 || index == 151 || index == 182 || index == 212 || index == 243 || index == 274 || index == 304 || index == 335 || index == 365) {
      strokeWeight(3);
      stroke(190, 100);
      line(x, y, 170 * cos(deI), 170 * sin(deI));
      line(170 * cos(deI), 170 * sin(deI), (170 + 50) * cos(deI), (170 + 50) * sin(deI));
    }
    stroke(color_linea);
    strokeWeight(3);
    line(x, y, x_max, y_max);

    strokeWeight(2);
    line(x_max, y_max, x_min, y_min);
    popMatrix();
  }

/* Se realiza un pushMatrix donde ocurre un cambio de origen, una rotaci\u00f3n para que los datos aparezcan desde la parte superior, y se realizan diferentes map de los datos provenientes
 de la tabla.*/
  public void mes() {
    pushMatrix();
    translate((width / 2 - 270), (height / 2 - 150)); 
    rotate(TWO_PI * 3 / 4);
    // translate((X * 2), (Y * 2));
// Se modifica el valor de las variables para as\u00ed lograr que roten.
    float deI = map(index, 0, 91, 0, TWO_PI);
    float wind_direct = map(wind_direction, 9, 351, 0, 140);
    float x = wind_direct * cos(deI);
    float y = wind_direct * sin(deI);
// Se crean varias condiciones para lograr as\u00ed dibujar cuatro figuras en vez de una, y se dibujan las l\u00edneas correspondientes a los d\u00edas de estas visualizaciones.
    if (index >= 91 && index < 182) {
      translate(0, 430);
    }
    if (index >= 182 && index < 272) {
      translate(-300, 0);
    }
    if (index >= 272 && index < 365) {
      translate(-300, 430);
    }

    line(0, 0, x, y);
    popMatrix();
  }
}
  public void settings() {  size(1200, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonfinaleDante" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

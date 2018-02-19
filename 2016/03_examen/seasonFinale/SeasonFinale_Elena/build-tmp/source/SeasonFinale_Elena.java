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

public class SeasonFinale_Elena extends PApplet {

//Expresi\u00f3n Digital II - Dise\u00f1o Digital - UDD - 2016
// M. Elena Err\u00e1zuriz
//seasonfinaleELENAERRAZURIZ

/*
Se ha recolectado la data clim\u00e1tica de Seefeld, Austria, del a\u00f1o 2015. De \u00e9sta se han elegido cuatro set de variables 
 (nivel de la marea, temperatura, visibilidad y vientos) junto con cuatro sistemas m\u00e9tricos de tiempo (a\u00f1o, mes, semana, d\u00edas).
 Se ha organizado cada variable con una respectiva medida de tiempo, las cuales se pueden ver presionando las teclas 'a', 's',
 'd' y 'f', obedeciendo un orden de mayor a menor respectivamente.
 En la esquina superior izquierda se puede observar la ciudad, pa\u00eds y a\u00f1o. Inmediatamente abajo est\u00e1 la leyenda general con las
 indicaciones de las variables clim\u00e1ticas junto con sus respectivas teclas.
 En la esquina superior derecha, por otro lado, muestra la informaci\u00f3n particular de cada visualizaci\u00f3n, cambiando con ellas al
 apretar las teclas.
 El nivel del mar se ve representado por c\u00edrculos y cuadrados variantes de tama\u00f1o y/o color dependiendo de los datos
 (m\u00e1xima, m\u00ednima y media).
 La temperatura se ve mediante tres c\u00edrculos conc\u00e9ntricos, de los cuales cada nivel representa la m\u00ednima, m\u00e1xima y media
 respectivamente.
 La visibilidad est\u00e1 graficada como seis columnas, de las cuales tres son c\u00edrculos que representan la m\u00e1xima y la otra mitad la
 m\u00ednima mediante l\u00edneas. La media est\u00e1 representada por el color en degrad\u00e9 de los c\u00edrculos.
 Por \u00faltimo, los vientos est\u00e1n representados por l\u00edneas. \u00c9stas est\u00e1n divididas en dos grupos, moradas y rosadas. Las moradas
 representan el m\u00ednimo y las rosadas el m\u00e1ximo. Esto se logra por su fluctuaci\u00f3n en el eje y, haci\u00e9ndolas de distintos tama\u00f1os.
 La media se logra por el grosor estas mismas.
 */

/*
NIVEL: 4-1 visualizaciones (5.5), 4 set de variables (8.0)
*/

/*
Declaraci\u00f3n de variables globales y del class.
 */
Elena [] e;
Table tabla;
PFont tipografia, light;
int datos, i;
char uno;

boolean anio;                                                      
boolean mes;                                                       
boolean semanas;                                                   
boolean dias;
boolean uno1;                                                      
boolean dos;                                                       
boolean tres;                                                   
boolean cuatro;

/*
Inicializaci\u00f3n de las variables, determinar caracter\u00edsticas para los textos, estado de los boolean y establecer
 el link con la carpeta de datos para poder emplearlos en el c\u00f3digo.
 */
public void setup() {
                                                    //Tama\u00f1o del canvas

  anio = true;                                                     
  mes = false;                                                                                 
  semanas = false;                                                 
  dias = false;
  uno1 = true;                                                     
  dos = false;                                                                                 
  tres = false;                                                 
  cuatro = false;


  tipografia = createFont("HelveticaNeue-Bold", 12);               //Determinar tipograf\u00eda y tama\u00f1o de letra
  light = createFont("HelveticaNeue", 12);

  tabla = loadTable("Seefeld_Austria.csv", "header");
  e = new Elena[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {                  //Inicializar la lectura ordenada de los datos
    TableRow datos = tabla.getRow(i);

    /*
Darle a cada columna de datos una variable, la cual, cada vez que se use, recorrer\u00e1 los valores y los emplementar\u00e1 seg\u00fan lo deseado.
     */
    int index = i;
    String CET = datos.getString("CET");
    //set 1
    int temperatura = datos.getInt("Mean TemperatureC");
    int tem1 = datos.getInt("Min TemperatureC");
    int tem2 = datos.getInt("Max TemperatureC");
    //set 2
    int sea1 = datos.getInt(" Min Sea Level PressurehPa");
    int sea2 = datos.getInt(" Max Sea Level PressurehPa");
    int sea3 = datos.getInt(" Mean Sea Level PressurehPa");
    //set 3
    int vientomax = datos.getInt(" Max Wind SpeedKm/h");
    int vientomin = datos.getInt(" Mean Wind SpeedKm/h");
    int gust = datos.getInt(" Max Gust SpeedKm/h");
    //set 4
    int ver = datos.getInt(" Max VisibilityKm");
    int ver2 = datos.getInt(" Mean VisibilityKm");
    int ver3 = datos.getInt(" Min VisibilitykM");

    /*
Crear el nuevo objeto del class, llam\u00e1ndolo de la otra pesta\u00f1a.
     */

    e[i] = new Elena(index, CET, temperatura, tem1, tem2, sea1, sea2, sea3, vientomax, vientomin, gust, ver, ver2, ver3);
  }
}

/*
Funci\u00f3n que dibujar\u00e1 los textos (con su ubicaci\u00f3n espacial y color) y las funciones creadas en el class.
 Estas \u00faltimas est\u00e1n dentro de un for que llama a todos los
 elementos encontrados dentro de la lista, repiti\u00e9ndolos ordenadamente, creando una grilla.
 */
public void draw() {
  background(230);

  textFont(tipografia);
  fill(0);
  text("Seefeld, Austria, 2015", 10, 20);
  textFont(light);
  fill(0);
  text("Leyenda:", 10, 40);
  text("Nivel del mar, a\u00f1o, tecla 'a'", 10, 60);
  text("Temperatura, mes, tecla 's'", 10, 80);
  text("Visibilidad, semana, tecla 'd'", 10, 100);
  text("Vientos, d\u00edas, tecla 'f'", 10, 120);

  /*
Determinar qu\u00e9 se dibujar\u00e1 en cada estado de los boolean.
   */
  for (int i = 0; i < e.length; i++) {

    if (anio == true) {                                       
      e[i].dias(15);
      e[i].sealevel();
    } 

    if (mes == true) { 
      e[i].temp2();
    } 

    if (semanas == true) { 
      e[i].dias2(4);
      e[i].visible();
    } 

    if (dias == true) {
      e[i].dias3(7);
      e[i].vientos();
      e[i].vientos2();
    }
  }
  /*
Este boolean se encuentra fuera del for para que no se repita por el largo de la lista.
   Se muestra una sola vez.
   */
  if (uno1 == true) {                                       
    mar();
  } 

  if (dos == true) { 
    calor();
  } 

  if (tres == true) { 
    visibilidad();
  } 

  if (cuatro == true) {
    viento();
  }
}

/*
Las funciones para las descripciones individuales de las visualizaciones, usadas en el \u00faltimo set de booleans.
 */
public void calor() {
  fill(0);
  text("M\u00ednimo,", 1030, 20);
  text("tama\u00f1o l\u00edneas centrales", 1030, 40);
  text("de menor a mayor.", 1030, 60);
  text("M\u00e1ximo,", 1030, 80);
  text("tama\u00f1o y color", 1030, 100);
  text("l\u00edneas perif\u00e9ricas", 1030, 120);
  text("tama\u00f1o de menor a mayor", 1030, 140);
  text("opacidad de mayor a menor.", 1030, 160);
  text("Media,", 1030, 180);
  text("color,", 1030, 200);
  text("morado menor, amarillo mayor", 1030, 220);
  text("transparencia,", 1030, 240);
  text("de mayor a menor", 1030, 260);
}

public void mar() {
  fill(0);
  text("M\u00ednimo,", 1060, 20);
  text("color y tama\u00f1o c\u00edrculos", 1060, 40);
  text("de menor a mayor", 1060, 60);
  text("seg\u00fan recta num\u00e9rica.", 1060, 80);
  text("M\u00e1ximo,", 1060, 100);
  text("tama\u00f1o cuadrados", 1060, 120);
  text("de menor a mayor.", 1060, 140);
  text("Media,", 1060, 160);
  text("opacidad c\u00edrculos", 1060, 180);
  text("de menor a mayor.", 1060, 200);
}

public void visibilidad() {
  fill(0);
  text("M\u00ednimo,", 1060, 20);
  text("longitud l\u00edneas.", 1060, 40);
  text("de menor a mayor.", 1060, 60);
  text("M\u00e1ximo,", 1060, 80);
  text("tama\u00f1o c\u00edrculos.", 1060, 100);
  text("de menor a mayor.", 1060, 120);
  text("Media,", 1060, 140);
  text("color c\u00edrculos.", 1060, 160);
  text("amarillo mayor.", 1060, 180);
  text("azul menor", 1060, 200);
}

public void viento() {
  fill(0);
  text("M\u00ednimo,", 1060, 20);
  text("longitud l\u00edneas moradas.", 1060, 40);
  text("de menor a mayor.", 1060, 60);
  text("M\u00e1ximo,", 1060, 80);
  text("longitus l\u00edneas rosadas.", 1060, 100);
  text("de menor a mayor.", 1060, 120);
  text("Media,", 1060, 140);
  text("opacidad l\u00edneas.", 1060, 160);
  text("de menor a mayor.", 1060, 180);
}

/*
Funci\u00f3n que determina cada presi\u00f3n de una tecla como un estado de un boolean, dibujando los true y borrando los false.  
 */
public void keyPressed() {

  if (key == 'a') {                                            
    anio = !anio;
    uno1 = !uno1;
  } 
  if (key == 's') {                                            
    mes = !mes;
    dos = !dos;
  }
  if (key == 'd') {                                            
    semanas = !semanas;
    tres = !tres;
  }
  if (key == 'f') {                                            
    dias = !dias;
    cuatro = !cuatro;
  }
}
/*
Inicio de el objeto llamado Elena del class.
 */
class Elena {

  /*
Declaraci\u00f3n de las variables usadas, como enteros, float, textos y colores.
   */
  int temperatura, tem1, tem2, sea1, sea2, sea3, vientomax, vientomin, gust, ver, ver2, ver3, tam, index;
  float velx, vely, x, y, angulo;
  String CET;
  int celb, az, c, verd, mo, mo2, veram, cal, d, ro, na;
  
  /*
Constructor del class, variables que se escriben al crearlo
en la p\u00e1gina principal de c\u00f3digo, mas la equivalencia de estas mismas.
*/
  Elena(int index, String CET, int temperatura, int tem1, int tem2, int sea1, int sea2, int sea3, int vientomax, int vientomin, int gust, int ver, int ver2, int ver3) {

    this.CET = CET; // no se usa
    this.index = index;
    this.temperatura = temperatura;
    this.tem1 = tem1;
    this.tem2 = tem2;
    this.sea1 = sea1;
    this.sea2 = sea2;
    this.sea3 = sea3;
    this.ver = ver;
    this.ver2 = ver2;
    this.ver3 = ver3;
    this.vientomax = vientomax;
    this.vientomin = vientomin;
    this.gust = gust;
    this.x = 0;
    this.y = 0;
    this.velx = 1; // no se usa
    this.vely = 1; // no se usa
    this.celb = color(204, 251, 255);
    this.az = color(37, 52, 87);
    this.verd = color(204, 204, 109);
    this.mo = color(81, 24, 73);
    this.mo2 = color(64, 40, 56);
    this.veram = color(237, 221, 83);
    this.cal = color(101, 175, 187);
    this.ro = color(199, 0, 57);
    this.na = color(255, 87, 51);
    ellipseMode(CENTER);
    rectMode(CENTER);
  }

/*
Funciones para dibujar objetos en particular que ser\u00e1n
llamados posteriormente en la p\u00e1gina principal del c\u00f3digo en el void draw()
*/
  public void sealevel() {                                              //Construcci\u00f3n de los niveles de la marea
    float amt = map(sea1, 970, 1030, 0, 1);                      //Cambiar los min y max de una variable a un nuevo rango.
    c = lerpColor(celb, az, amt);                                //Crear una degradaci\u00f3n entre dos colores

    float relleno = map(sea3, 975, 1040, 150, 250);              //El cambio de rango se puede usar tanto para coordenadas, color, tama\u00f1os.
    fill(c, relleno);
    noStroke();

    float ee = map(sea1, 970, 1030, 0, 50);                      
    ellipse(x, y, ee, ee); 
    noStroke();
    fill(verd);

    float rr = map(sea2, 980, 1040, 0, 15);                      
    rect(x, y, rr, rr);
  }

  // Esta funci\u00f3n tiene problemas de dise\u00f1o gr\u00e1fico ya que no se logra entender la informaci\u00f3n que hay en la 
  public void vientos() {                                               //Construcci\u00f3n de los vientos.

    float grosor = map(gust, 0, 100, 1, 15);                     
    strokeWeight(grosor);

    float vMax = map(vientomax, 10, 60, 200, 1150);              

    stroke(ro, 50);
    line(x, vMax, width / 2 + 20, height);                       //Fijar dos coordenadas de la l\u00ednea para crear un abanico.
  }

  // el nombre de la funci\u00f3n no describe de buena manera lo que hace
  public void vientos2() {                                              

    float grosor = map(gust, 0, 100, 1, 15);                     
    strokeWeight(grosor);

    float vMin = map(vientomin, 0, 25, 50, 800);

    stroke(mo2, 50);
    line(x, vMin, width / 2 + 20, height);
  }

  // el nombre de la funci\u00f3n no describe de buena manera lo que hace
  public void dias(int paso) {                                         //Funci\u00f3n que permite dividir los elementos del largo de la lista de datos en columnas, creando las medidas de tiempo
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) { 
        float factor = map(paso, 7, 182, .001f, .8f);             //Modifica Y
        float factor1 = map(paso, 7, 182, 1, .1f);               //Modifica Y
        float factor2 = map(paso, 7, 182, .15f, .25f);            //Modifica X
        float factor3 = map(paso, 7, 182, .7f, 4);               //Modifica X

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  // el nombre de la funci\u00f3n no describe de buena manera lo que hace
  public void dias2(int paso) {
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) { 
        float factor = map(paso, 7, 182, .02f, .4f);
        float factor1 = map(paso, 7, 182, .95f, .001f);
        float factor2 = map(paso, 7, 182, .55f, .01f);
        float factor3 = map(paso, 7, 182, .5f, 4);

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  // el nombre de la funci\u00f3n no describe de buena manera lo que hace
  public void dias3(int paso) {
    for (int i = 0; i < e.length; i++) {
      if (index >= i * paso && index < i * paso + paso) { 
        float factor = map(paso, 7, 182, .001f, .8f);
        float factor1 = map(paso, 7, 182, 1, .1f);
        float factor2 = map(paso, 7, 182, .04f, .25f);
        float factor3 = map(paso, 7, 182, .95f, 4);

        float x1 = map(index % paso, 0, paso - 1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365 / paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  public void visible() {                                            //Construcci\u00f3n de la visibilidad
    float amt = map(ver2, 0, 20, 0, 1);
    c = lerpColor(az, veram, amt);
    fill(c, 180);
    noStroke();
    float port = map(ver, 11, 64, 0, 30);
    ellipse(x, y, port, port);

    pushMatrix();                                            //Limitar las traslaciones y rotaciones a un grupo determinado de elementos
    translate(20, 0);                                        //Mover en el eje X una figura
    stroke(az);
    strokeWeight(1);
    /* 
    este map nn si fuera de 0, 10, 0, 10 no tendr\u00edas que crear x2 y y2
    con x2 y y2 est\u00e1s diciendo que aunque ver3 sea 0, se ver\u00e1 como 5
    lo que dificulta la lectura.
    */
    float nn = map(ver3, 0, 10, 0, 5);
    float x2 = x + 5;
    float y2 = y + 5;
    line(x, y, x2 + nn, y2 + nn);
    popMatrix();                                             //Cerrar el grupo delimitado
  }

  // el nombre de la funci\u00f3n no describe de buena manera lo que hace
  // esta funci\u00f3n tiene buenas intenciones pero se fue de control completamente, no es posible entender nada
  public void temp2() {                                             //Construcci\u00f3n de la temperatura
    float amt = map(temperatura, - 7.5f, 30, 0, 1);
    c = lerpColor(mo, veram, amt);
    float col = map(tem2, - 10, 40, 0, 1);
    d = lerpColor(az, cal, col);

    float x1 = map(temperatura, - 7.5f, 30, 0, 210);
    float y1 = map(tem1, - 10, 20, 0, 250);
    float z = map(tem2, - 10, 40, 0, 250);

    pushMatrix();
    translate(width / 2, height / 2);                       //Trasladar centro de elipses a la mitad del canvas
    rotate(radians(index * 360 / 30));                      //Disponer circularmente los elementos de la lista y dividirlos en 30
    stroke(ro);
    strokeWeight(2);
    line(8, y1, 0, 200);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(index * 360 / 30));
    stroke(d, 80);
    strokeWeight(5);
    line(310, z, 290, 20);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(index * 360 / 30));
    fill(c, x1);
    noStroke();
    ellipse(210, x1, 13, 13);
    popMatrix();
  }
}
  public void settings() {  size(1200, 750); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "SeasonFinale_Elena" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

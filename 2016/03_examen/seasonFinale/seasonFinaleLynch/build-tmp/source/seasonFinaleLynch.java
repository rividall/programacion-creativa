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

public class seasonFinaleLynch extends PApplet {

//no hay nombre
//no hay descripci\u00f3n

/*
NIVEL: 2 visualizaciones (5.0) + 
*/


Table table;
int fila;
int days;
int select = 0;
Boolean BshowInfo = false;
String[] semana = {"Jueves", "Viernes", "S\u00e1bado", "Domingo", "Lunes", "Martes", "Mi\u00e9rcoles"};
int semanaDay = 0;
PFont fuente;
int precipitation;
PImage info;
int pantalla = 0;
int weekS = 0;
int weekO = 7;
int visu = 0;

Dia[] dia;

Boton btInfo;
Boton btDay;
Boton btWeek;

public void setup() {
  
  table = loadTable("Reykjavik_Iceland.csv", "header");
  dia  = new Dia[table.getRowCount()]; 
  days = table.getRowCount();
  fuente = loadFont("PerpetuaTitlingMT-Light-48.vlw");
  info = loadImage("info.png");
  for (int i = 0; i < table.getRowCount(); i++) {

    TableRow fila = table.getRow(i);
    String titulo = fila.getString("GMT");
    String eventos = fila.getString("Events");
    int maxT = fila.getInt("maxT");
    int meanT = fila.getInt("meanT");
    int minT = fila.getInt("minT");
    int maxWSpeed = fila.getInt("MWS");
    int meanWSpeed = fila.getInt("meanWS");
    int wDir = fila.getInt("WindDirDegrees");
    precipitation = fila.getInt("Precipitationmm");
    dia[i] = new Dia(titulo, maxWSpeed, meanWSpeed, wDir, eventos, precipitation, i, minT, meanT, maxT, i);
  }
  btInfo = new Boton(width - 100, height - 100, 100, true, "info");
  btDay = new Boton(0, height - 100, 100, false, "day");
  btWeek = new Boton(0, height - 200, 100, false, "week");
}

public void draw() {
  textFont(fuente);
  background(30);

  if (pantalla == 0) {
    dia[select].precip();
    dia[select].display();
    dia[select].eventos(70);
    dia[select].datos();
  }

  if (pantalla == 1) {
    for (int i = weekS; i < weekO; i++) {    
      if (visu == 0) {
        dia[i].display();
        dia[i].eventos((i - weekS) * 20);
      }
      if (visu == 1) dia[i].temps();

      dia[weekS].datos();
    }
  }

  btDay.display();
  btWeek.display();
  btInfo.display();
}
//Falta descripci\u00f3n del mousePressed
public void mousePressed() {

  if (btInfo.mouseOver()) {
    btInfo.showInfo = !btInfo.showInfo;
  }
  if (btDay.mouseOver()) {
    pantalla = 0;
  }
  if (btWeek.mouseOver()) {
    pantalla = 1;
  }
}

//Falta descripci\u00f3n del keyPressed
public void keyPressed() {

  if (key == CODED) {
    for (int i = 0; i < days; i++) {
      dia[i].transp = 0;
    }
    if (keyCode == UP) tecUp();
    if (keyCode == DOWN) tecDown();
    if (keyCode == LEFT) tecLeft();   
    if (keyCode == RIGHT)  tecRight(); 

    if (select < 0) select = 0;
    if (select > 364) select = 364;
    if (weekS < 0) weekS = 0;
    if (weekS > 357) weekS = 357;
  }
  if (key == 'a') visu = 0;
  if (key == 's') visu = 1;
}
class Boton {
  int posX, posY, tam;
  int blink = 150;
  int blinkVar = 6;
  boolean showInfo;
  float x = 0;
  float y = 0;
  float r = 40;
  float a = 1;
  float velX = .05f;
  int n = 3;
  boolean bInfo;
  int pant;
  String data;

  Boton(int t_posX, int t_posY, int t_tam, boolean t_bInfo, String t_data) {
    posX = t_posX;
    posY = t_posY;
    tam = t_tam;
    bInfo = t_bInfo;
    data = t_data;
  }

  public void display() {
    //Falta descripci\u00f3n del bloque de texto
    imageMode(CORNER);
    if (bInfo) image(info, posX, posY, tam, tam);
    if (!bInfo) {
      ellipseMode(CORNER);
      noStroke();
      fill(80, 80, 250);
      ellipse(posX, posY, tam, tam); 
      fill(255);
      textSize(25);
      text(data, posX + 20, posY + 60);
    }
    blink();
    if (showInfo) {
      if (bInfo) info();
    }
  }
//Falta descripci\u00f3n del bloque de texto
  public void info() {
    pushMatrix();

    fill(255);
    translate(width - 250, height - 500);
    text(data, 100, -10);
    noStroke();
    rect(0, 0, 250, 400);
    stroke(80, 80, 250);
    quad(20, 100, 60, 20, 100, 100, 60, 60);
    fill(80, 80, 250);
    textSize(18);
    text("Max Wind Speed", 90, 30);
    text("Min Wind Speed", 97, 75);
    text("Wind Direction", 10, 130);
    pushMatrix();
    translate(50, 200);
    ellipseMode(CENTER);
    fill(200);
    noStroke();
    ellipse(x, y, 10, 10);
    x = r * cos(a);
    y = r * sin(a);
    a += velX;
    popMatrix();
    fill(80, 80, 250);
    text("events", 110, 200);
    if (frameCount % 30 == 0) n += 1;
    if (n > 5) n = 1;
    println(n);
    for (int i = 20; i < 100; i += 100 / n) {
      for (int j = 280; j < 380; j += 100 / n) {
        fill(200, 200, 255);
        ellipse(i, j, 10, 10);
      }
    }
    fill(80, 80, 250);
    text("precipitation", 110, 340);
    popMatrix();
  }
//Falta descripci\u00f3n del bloque de texto
  public void blink() {
    if (mouseOver()) {
      blink += blinkVar;
      if ( blink > 230 || blink < 80) blinkVar *= -1;
      noStroke();
      fill(255, blink);
      ellipseMode(CORNER);
      ellipse(posX, posY, tam, tam);
    }
  }

//Falta descripci\u00f3n del bloque de texto
  public boolean mouseOver() {
    if (mouseX > posX && mouseX < posX + tam 
      && mouseY > posY && mouseY < posY + tam) {
      return true;
    } else {
      return false;
    }
  }
}
class Dia {

  int minT, meanT, maxT;
  float posY, posY2, posY3, posX, pos;
  String titulo;
  int num, maxWSpeed, meanWSpeed;
  float wDir;
  int transp = 0;
  String info;
  String eventos;
  int roseSz = 50;
  PImage foto;
  int precipitation;

  float x = 0;
  float y = 0;

  float a = 1;
  float velX = .05f;

  Dia(String t_titulo, int t_maxWSpeed, 
    int t_meanWSpeed, int t_wDir, String t_eventos, 
    int t_precipitation, int t_num, int t_minT, int t_meanT, int t_maxT, int t_pos) {
    titulo = t_titulo;
    num = t_num;
    maxWSpeed = t_maxWSpeed * 3;
    meanWSpeed = t_meanWSpeed * 3;
    wDir = radians(t_wDir);
    eventos = t_eventos;
    precipitation = t_precipitation * 3;
    minT = t_minT;
    meanT = t_meanT;
    maxT = t_maxT;  
    pos = t_pos;
    if (precipitation == 0) precipitation = 1;
  }

  public void display() {

//Falta descripci\u00f3n del bloque de texto
    pushMatrix();
    translate(width / 2, height / 2);
    flechaViento();
    popMatrix();
  }
//Falta descripci\u00f3n del bloque de texto
  public void flechaViento() {
    pushMatrix();
    noFill();
    stroke(80, 80, 250, transp);
    strokeWeight(4);
    rotate(wDir);
    quad(-roseSz, 0, 0, meanWSpeed, roseSz, 0, 0, maxWSpeed); 
    transp += 10;
    popMatrix();
  }


//Falta descripci\u00f3n del bloque de texto
  public void datos() {
    if (pantalla == 0) {
      fill(255);   
      info = semana[semanaDay]+ " " + titulo;
      text(info, 20, 50);
    }

    if (pantalla == 1) {
      fill(255);
      info = "semana del " + titulo;
      text(info, 20, 50);
    }
  }
//Falta descripci\u00f3n del bloque de texto
  public void precip() {
    for (int i = 0; i < width; i += width / precipitation) {
      for (int j = 0; j < height; j += height / precipitation) {
        if (precipitation > 1) {
          fill(200, 200, 255);
          noStroke();
          ellipseMode(CENTER);
          ellipse(i, j, 10, 10);
        }
      }
    }
  }
//Falta descripci\u00f3n del bloque de texto
  public void temps() {
    posX = map(pos, weekS, weekO, 0, width);
    posY = map(minT, -13, 18, 0, height);
    posY2 = map(meanT, -13, 18, 0, height);
    posY3 = map(maxT, -13, 18, 0, height);
    stroke(255);
    line(posX + 25, height, posX + 25, 0);
    noStroke();
    ellipseMode(CORNER);
    fill(200, 20, 20);
    ellipse(posX, posY, 50, 20);
    fill(20, 200, 20);
    ellipse(posX, posY2, 50, 20);
    fill(20, 20, 200);
    ellipse(posX, posY3, 50, 20);
  }
//Falta descripci\u00f3n del bloque de texto
  public void eventos(int r) {

    pushMatrix();
    translate(width / 2, height / 2);
    imageMode(CENTER);
    tint(255, transp);
    foto = loadImage(eventos + ".png");  
    image (foto, x, y);
    x = r * cos(a);
    y = r * sin(a);
    a += velX;
    popMatrix();
  }
}
//Falta descripci\u00f3n del bloque de texto
public void tecLeft() {
  if (pantalla == 0) { 
    if (select != 0) {
      select -= 1;
      semanaDay -= 1;
      if (semanaDay < 0) semanaDay = 6;
    }
  } else {
    if (weekS > 6) {
      weekS -= 7;
      weekO -= 7;
    }
  }
}
//Falta descripci\u00f3n del bloque de texto
public void tecRight() {
  if (pantalla == 0) { 
    if (select != 364) {
      select += 1; 
      semanaDay += 1;
      if ( semanaDay > 6) semanaDay = 0;
    }
  } else {
    if (weekS < 357) {
      weekS += 7;
      weekO += 7;
    }
  }
}
//Falta descripci\u00f3n del bloque de texto
public void tecUp() {
  if (pantalla == 0) { 
    if (select > 5) { 
      select -= 6;
    }
  } else {
    if (weekS > 27) {
      weekS -= 28;
      weekO -= 28;
    }
  }
}
//Falta descripci\u00f3n del bloque de texto
public void tecDown() {
  if (pantalla == 0) { 
    if (select < 359) {
      select += 6;
    }
  } else {
    if (weekS < 323) {
      weekS += 28;
      weekO += 28;
    }
  }
}
  public void settings() {  size(700, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--hide-stop", "seasonFinaleLynch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

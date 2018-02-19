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

public class season_finale_IsidoraGarin_2003 extends PApplet {



int cols, filas;
int i;
String datos[], dia[][];
int bla, gris, neg, cian, mag, ver, tur, azul, mor, azulos, amar, nar, amarcl, cel;

public void setup() {
  
  
  // beginRecord(PDF, "NY2004.pdf");
  
  

  cols = 12;
  filas = 31;

  datos = loadStrings("NY2003.csv");
  dia = new String[datos.length][23];
  for (int i = 0; i < datos.length; i ++) {
    dia[i] = datos[i].split(",");
  }

  //COLORES
  bla = color(255);
  gris = color(180);
  neg = color(0);
  cian = color(0, 255, 255);
  mag = color(255, 0, 255);
  ver = color(0, 204, 204);
  tur = color(26, 188, 156);
  azul = color(52, 152, 219);
  mor = color(142, 68, 173);
  azulos = color(44, 62, 80);
  amar = color(241, 196, 15);
  nar = color(230, 126, 34);
  amarcl = color(254, 255, 0);
  cel = color(0, 219, 255);
}

public void draw() {
  background(azulos);

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) && (nums < 365)) {

        //VARIABLES
        float temmax = PApplet.parseFloat(dia[nums][1]);
        float temmin = PApplet.parseFloat(dia[nums][3]);
        float rocio = PApplet.parseFloat(dia[nums][4]);
        float hummax = PApplet.parseFloat(dia[nums][7]);
        float hummin = PApplet.parseFloat(dia[nums][9]);
        float precip = PApplet.parseFloat(dia[nums][19]);
        float cloud = PApplet.parseFloat(dia[nums][20]);
        float dirviento = PApplet.parseFloat(dia[nums][22]);

        //FUNCION
        ny2003(x1, y1, temmax, temmin, rocio, hummax, hummin, precip, cloud, dirviento);
      }
    }
  }
  endRecord();
}
public void ny2003(float x1, float y1, float temmax, float temmin, float rocio, float hummax, float hummin, float precip, float cloud, float dirviento) {

  float rotviento = dirviento * (TWO_PI/360);

  //TEMPERATURA M\u00cdNIMA C\u00cdRCULO MAGENTA - TEMPERATURA M\u00c1XIMA OPACIDAD C\u00cdRCULO
  noStroke();
  float nt = map(temmax, 30, -12, 255, 5);
  fill(mag, nt);
  ellipse(x1, y1, 40, 40);

  //HUMEDAD M\u00c1XIMA C\u00cdRCULO CIAN - HUMEDAD M\u00cdNIMA OPACIDAD C\u00cdRCULO
  // noStroke();
  // fill(cian, hummin);
  // ellipse(x1, y1, hummax/3.2, hummax/3.2);

  // //PRECIPITACIONES CIRCULO NEGRO - CLOUD COVER OPACIDAD C\u00cdRCULO
  // fill(neg, cloud*12);
  // noStroke();
  // ellipse(x1, y1, precip*2.2, precip*2.2);

  // //ROCIO C\u00cdRCULO NARANJO
  // fill(nar, 120);
  // ellipse(x1, y1, rocio, rocio);

  // //DIRECCION VIENTO Y VELOCIDAD VIENTO - DIRECCION LINEA Y GROSOR
  // pushMatrix();
  // translate(x1, y1);
  // rotate(rotviento);
  // stroke(amarcl, 80);
  // strokeWeight(4);
  // line(0, 0, dirviento/3.2, 0);
  // popMatrix();
}
//
  public void settings() {  size(480,800);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "season_finale_IsidoraGarin_2003" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

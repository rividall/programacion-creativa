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

public class season_final_laura2010 extends PApplet {


Rotacion[] di;

public void setup() {
  
  background(0);

  // inicializar variables
  
  loadData();
}

public void draw() {
    // beginRecord(PDF,"rio2010.pdf");
  background(255);
  for (int i = 1; i < di.length; i++){
    di[i].go(i);
    di[i].display(i);
  }
  // endRecord();
}
class Rotacion {
  float x, y, x2, y2;
  float r, a, angulo;
  int c, d;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;// 2005
    temax = _temax;// 2004
    temin = _temin;// 2004
    temed = _temed;// 2005
    pdro = _pdro;//2007
    medro = _medro;//2009
    mindro = _mindro;//2007
    maxhum = _maxhum;//2006
    medhum = _medhum;//2009
    minhum = _minhum;//2006
    maxpre = _maxpre;//2008
    minpre = _minpre;//2008
    maxvi = _maxvi;//2010
    minvi = _minvi;//2010
    vientomax = _vientomax;
    vientomed = _vientomed;
    rafaga = _rafaga;//2011
    nube = _nube;//2011
    dirviento = _dirviento;
    eventos =_eventos;

    //angulo = 0;
    r = width/2 + 110;
    c = color (254,239,81);
    d = color(112,15,119);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  public void go(int i) {
    float a = i * (TWO_PI/365);

    x = (maxvi+200)* sin(a);
    y =  (maxvi +200)* cos(a);
    
      x2 =( minvi+ 100) * sin(a);
    y2 = ( minvi +100) * cos(a);
  }
  public void display(int i) {
    fill(d);
    //noStroke();
    //ellipse(x, y, 3, minhum);
    //fill(d);
    //  text(eventos,x,y);//medro

    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(width/2, height/2);
    rotate(-a);
    
    //son tus figuras
      noStroke();
      fill(d);
      ellipse(x, y,6,6);
    
      fill(c);
      ellipse(x2, y2,3,3);

      
     popMatrix();
    
      
      
  }
}
public void loadData() {
  String datos[];
  String dia[] [];

  datos = loadStrings ("rio2010.csv");
  dia = new String [datos.length] [22];

  di = new Rotacion [datos.length ];

  for (int i = 1; i < datos.length; i++) {
    dia [i] = datos [i] . split(",");
    String fecha = dia [i][0];
    float temax = PApplet.parseFloat (dia[i][1]);
    float temed = PApplet.parseFloat (dia [i][2]);
    float temin = PApplet.parseFloat (dia [i][3]);
    float pdro = PApplet.parseFloat (dia [i][4]);
    float medro = PApplet.parseFloat (dia [i][5]);
    float mindro = PApplet.parseFloat (dia [i][6]);
    float maxhum = PApplet.parseFloat (dia [i][7]);
    float medhum = PApplet.parseFloat (dia [i][8]);
    float minhum = PApplet.parseFloat (dia [i][9]);
    float maxpre = PApplet.parseFloat (dia [i][10]);
    float minpre = PApplet.parseFloat (dia [i][12]);
    float maxvi = PApplet.parseFloat (dia [i][13]);
    float minvi = PApplet.parseFloat (dia [i][15]);
    float vientomax = PApplet.parseFloat (dia [i][16]);
    float vientomed = PApplet.parseFloat (dia [i][17]);
    float rafaga = PApplet.parseFloat (dia [i][18]);
    float nube = PApplet.parseFloat (dia [i][20]);
    String eventos = dia [i][21];
    float dirviento = PApplet.parseFloat (dia [i][22]);

    di[i] = new Rotacion(fecha, temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, eventos, dirviento);
  }
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "season_final_laura2010" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

//UDD - Expresion Digital II
//s13c02Pax
//Creación de una visualización de datos con una base de datos del clima de Seoul en el año 2014.


int cols, filas;
color ct, cr, cg, cb, ctt, cro, crr, croo, con, lecolor, fcolor, cc, ncolor, cto, ce;
String datos [];
String dia [][];
float amt, al;
PFont f, fo;



void setup() {
  size(576, 1560);
  
  f = createFont("Vulpes", 11);
  fo = createFont("Vulpes", 14);
  
  datos = loadStrings("seoul_korea_weather04.csv"); 
  dia = new String[datos.length][24];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
  smooth();
  al = 100;
  cols = 12;
  filas = 31;
  fcolor = color(250,250,245);
  cto = color(0, 176, 135);
  ct = color(6,255,192);
  cr = color(232,1,20);
  cg = color(210); 
  cb = color(255);
  ctt = color(28,153,109);
  cro = color(255,51,130);
  crr = color(153,47,78);
  croo = color(232,180,196);
  con = color(255,144,51,180);
  ce = color (185,255,250);
  cc = color(100, 255, 250, 180);
  lecolor = lerpColor(cr,ctt,amt);
  ncolor = lerpColor(cc,croo,amt);
  amt = 1;
  
  
}

void draw() {
 beginRecord(PDF,"pruebacertamen16.pdf");
  background(fcolor);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums =1+ y+x*filas;
      if ((nums >= 0) && (nums <= 365)) {
      String fecha = dia [nums] [0];
      float tempmax = float(dia[nums] [1]);
      float tempmed = float(dia[nums] [2]);
      float tempmin = float(dia[nums][3]);
      float hummin = float(dia[nums] [9]);
      float hummed = float(dia[nums] [8]);
      float hummax = float(dia[nums] [7]);
      float maxvis = float(dia[nums] [13]);
      float minvis = float(dia[nums] [15]);
      float lluvias = float(dia[nums] [19]);
      float maxviento = float(dia[nums] [16]);
      float minviento = float(dia[nums] [17]);
      float maxpresion = float(dia[nums] [10]);
      float minpresion = float(dia[nums] [12]);
    
      
      
  
      /*fill(cg);
      noStroke();
      ellipse(x1, y1, 5, 5);
      fill(cr);
      textAlign(CENTER);
      text(nums, x1, y1);*/
      
      seoul(x1, y1, fecha, hummax, hummed, hummin, tempmin, tempmed, tempmax, maxvis, minvis, lluvias, maxviento, minviento, maxpresion, minpresion);
    }
    }
  }
}


 
  
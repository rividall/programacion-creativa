//UDD - Expresión Digital II
//season_finale_examen
//visualizacion de datos correspondientes al clima de la ciudad de Boston 2004
import processing.pdf.*;



int cols, filas;
String datos [];
String dia [][];

PFont font;
PShape nn, nl, nlt, n, l, ln, lt; 



void setup() {
  font = createFont("Bebas Neue", 14);
  datos = loadStrings("boston2004.csv");
  dia = new String[datos.length][22];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
  size(1100, 500);
  cols = 31; 
  filas = 12; 
  nn = loadShape("niebla-nieve.svg");
  nl = loadShape("lluvia-niebla.svg");
  nlt = loadShape("lluvia-niebla-tormenta.svg");
  n = loadShape("nieve.svg");
  l = loadShape("lluvia.svg");
  ln = loadShape("lluvia-nieve.svg");
  lt = loadShape("lluvia-tormenta.svg");
 
}

void draw() {
   beginRecord(PDF, "boston2004.pdf");
  background(236, 240, 241);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums>=0) && (nums < 365)) {

        String vientoDirT = dia[nums][22];
        float vientoDir = float(dia[nums][22]);
        float temMax = float(dia[nums][1]);
        float temMax2 = float(dia[nums][1]);
        float temMin = float(dia[nums][3]);
        float temMin2 = float(dia[nums][3]);
        float temMed = float(dia[nums][2]);
        String temMednum = dia[nums][2];
        float temMed2 = float(dia[nums][2]);
        String event = dia[nums][21];
        float velvien = float(dia[nums][16]);
        //las otras variables

        //funcion

        funcion(x1, y1, vientoDirT, vientoDir, temMax, temMax2, temMin, temMin2, temMed, temMed2, event, velvien, temMednum);


        
      }
    }
  }
  endRecord();
}
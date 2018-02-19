import processing.pdf.*;

int cols, filas;
int i;
String datos[], dia[][];
color bla, gris, neg, cian, mag, ver, tur, azul, mor, azulos, amar, nar, amarcl, cel;

void setup() {
  size(480,800);
  
  beginRecord(PDF, "NY2007.pdf");
  
  smooth();

  cols = 12;
  filas = 31;

  datos = loadStrings("NY2007.csv");
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

void draw() {
  background(azulos);

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) && (nums < 365)) {

        //VARIABLES
        float temmax = float(dia[nums][1]);
        float temmin = float(dia[nums][3]);
        float rocio = float(dia[nums][4]);
        float hummax = float(dia[nums][7]);
        float hummin = float(dia[nums][9]);
        float precip = float(dia[nums][19]);
        float cloud = float(dia[nums][20]);
        float dirviento = float(dia[nums][22]);

        //FUNCION
        ny2007(x1, y1, temmax, temmin, rocio, hummax, hummin, precip, cloud, dirviento);
      }
    }
  }
  endRecord();
}
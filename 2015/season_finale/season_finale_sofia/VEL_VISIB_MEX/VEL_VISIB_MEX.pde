import processing.pdf.*;
int cols, filas;

String li[];
String diali[][];
color s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14;

float visli, velmaxli, velminli;



void setup() {
  size(1200,300);
  smooth();

  cols = 183;
  filas = 2;

  li = loadStrings("lima.csv");
  diali = new String[li.length][23];
  for (int i = 0; i < li.length; i ++) {
    diali[i] = li[i].split(",");
  }


  s1 = color(255); //blanco
  s2 = color(180); //gris
  s3 = color(0); //negro
  s4 = color(0, 255, 255); //cian
  s5 = color(255, 0, 255); //magenta
  s6 = color(0, 204, 204); //verde
  s7 = color(26, 188, 156); //turquesa
  s8 = color(52, 152, 219); //azul
  s9 = color(142, 68, 173); //morado
  s10 = color(44, 62, 80); //azul oscuro
  s11 = color(241, 196, 15); //amarillo
  s12 = color(230, 126, 34); //naranjo
  s13 = color(254, 255, 0); //amarillo claro
  s14 = color(0, 219, 255); //celeste
}

void draw() {
          beginRecord(PDF, "VelMex.pdf");

  background(color(57, 53, 42));

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) && (nums < 365)) {

        //variables
        visli = float(diali[nums][15]);       
        velmaxli = float(diali[nums][16]);
        velminli = float(diali[nums][17]);


        //FUNCION
        fn (x1, y1, visli, velmaxli, velminli);
      }
    }
  }
          endRecord();

}
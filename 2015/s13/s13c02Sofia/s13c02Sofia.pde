import processing.pdf.*;

int cols, filas;
int i;
String datos[], dia[][];
color s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14;

void setup() {
  size(480, 1300);
  
  beginRecord(PDF, "visualizacionshanghai.pdf");
  
  smooth();

  cols = 12;
  filas = 31;

  datos = loadStrings("shanghaiweather.csv");
  dia = new String[datos.length][23];
  for (int i = 0; i < datos.length; i ++) {
    dia[i] = datos[i].split(",");
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
  background(s3);

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) && (nums < 365)) {

        //VARIABLES
        float temmax = float(dia[nums][1]);
        float temmed = float(dia[nums][2]);
        float temmin = float(dia[nums][3]);
        float rocio = float(dia[nums][4]);
        float hummax = float(dia[nums][7]);
        float hummed = float(dia[nums][8]);
        float hummin = float(dia[nums][9]);
        float vismin = float(dia[nums][15]);
        float viento = float(dia[nums][17]);
        float nube = float(dia[nums][20]);

        //FUNCION
        visualizacion(x1, y1, temmax, temmed, temmin, rocio, hummax, hummed, hummin, vismin, viento, nube);
      }
    }
  }
  endRecord();
}
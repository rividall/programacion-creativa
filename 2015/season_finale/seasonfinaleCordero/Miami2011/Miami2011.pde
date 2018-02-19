//UDD - Expresión Digital II
//s13seasonfinaleMax
//Miami es una ciudad muy calurosa y tropical. Esta visualizacion pretende demostrarlo.
import processing.pdf.*;

int cols, filas;
String datos [];
String dia [][];
color rojo, azul, verde, naranjo;
PShape r, t, rt; 
PImage bg;


void setup() {
  smooth();
  size(1100, 500);
  cols = 31; 
  filas = 12; 
  datos = loadStrings("2011.csv");
  dia = new String[datos.length][22];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }

  r = loadShape("rain.svg");
  t = loadShape("thunder.svg");
  rt = loadShape("rainthunder.svg");
  bg = loadImage("miami.jpg");

  //COLORES
  rojo = color(255, 0, 0);
  azul = color(0, 0, 255);
  verde = color(0, 255, 0);
  naranjo= color (255, 255, 0);
}

void draw() {
  //beginRecord(PDF, "Miami2011.pdf");
  background(bg);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums>=0) && (nums < 365)) {

        String windT = dia[nums][22];
        float wind = float(dia[nums][17]);
        float medTemp = float(dia[nums][1]);
        float medTemp2 = float(dia[nums][1]);
        float temMin = float(dia[nums][3]);
        float temMin2 = float(dia[nums][3]);
        float temMed = float(dia[nums][2]);
        String temMednum = dia[nums][2];
        float temMed2 = float(dia[nums][2]);
        String Icons = dia[nums][21];
        float humidity = float(dia[nums][9]);
        //las otras variables

        //funcion
        funcion(x1, y1, windT, wind, medTemp, medTemp2, temMin, temMin2, temMed, temMed2, Icons, humidity, temMednum);
      }
    }
  }
  //Begin Record no funciona con fondo, por esto use save frame.
  saveFrame("Miami2011.jpg");
  //endRecord();
}
//UDD - EXPRESIÓN DIGITAL II
//s13c02Berni
//visualización de datos, clima de santiago, 2014

int cols, filas;

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

String fecha, humini, velmini;
float x1, y1, tmax, tmin, tmed, humin, humax, velmax, velmin, maxvisib, mevisib, mivisib;

float angulo, conversion;

void setup() {
  size(480, 1300);
  cols = 12;
  filas = 31;

  datos = loadStrings("santiago.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
  }
 
}

void draw() {
  background(123);
  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) { //tambien se pueden escribir parte de los datos con ||
        //aca van las varaible especificas
        fecha = dia[nums][0];
        tmax = float(dia[nums][1]); //temperatura máxima
        velmini = dia[nums][17];
        tmin = float(dia[nums][3]); //temperatura minima
        tmed = float(dia[nums][2]);
        humax = float(dia[nums][7]); //humedad maxima
        humin = float(dia[nums][9]); //humedad minima
        humini = dia[nums][9];
        mevisib = float(dia[nums][14]); 
        maxvisib = float(dia[nums][13]); //visibilidad media
        mivisib = float(dia[nums][15]); //visibilidad media
        velmax = float(dia[nums][16]); //velocidad del viento maxima
        velmin = float(dia[nums][17]); //velocidad del viento minima
        fun (fecha, x1, y1, tmax, velmini, tmin, tmed, humin, humini, humax, velmax, velmin, maxvisib, mevisib, mivisib);
      }
    }
  }
 
}
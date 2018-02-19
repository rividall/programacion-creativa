//UDD - Expresión Digital II
//s13c02ange
//Visualizacion de datos a partir de una figura creada, del clima de lippstadt, Alemania en el 2010

int cols, filas, i;

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

String fecha, micumpleanos, tmaxima, tminima, vimed, vimin;
float x1, y1, tmax, tmin, hmax, hmin, visimed, visimin, vienmax, vienmed;

float angulo, conversion;

void setup() {
  size(480, 1300);
  smooth();

  cols = 12;
  filas = 31;

  datos = loadStrings("alemaniaweather.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
  }
}


void draw() {
  background(95, 95, 100);

  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {

        if (nums == 281) {  //este es tu día de cumpleaños
          ellipse(x1, y1, 30, 30);
        }

        micumpleanos = dia[281][0];
        fecha = dia[nums][0];
        tmax = float(dia[nums][1]);
        tmaxima = dia[nums][1];
        tmin = float(dia[nums][3]);
        tminima = dia[nums][3];
        hmax = float(dia[nums][7]);
        hmin = float(dia[nums][9]);
        visimed = float(dia[nums][14]);
        vimed = dia[nums][14];
        visimin = float(dia[nums][15]);
        vimin = dia[nums][15];
        vienmax = float(dia[nums][16]);
        vienmed = float(dia[nums][17]);
        alw(x1, y1, micumpleanos, fecha, tmax, tmaxima, tmin, tminima, hmax, hmin, visimed, vimed, visimin, vimin, vienmax, vienmed);
      }
    }
  }
}
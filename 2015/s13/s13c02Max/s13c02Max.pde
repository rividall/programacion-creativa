//UDD - Representacion Digital 2
//s13c02Max
//Visualización de datos - Acciones empresas tecnoógicas

import processing.pdf.*;

int cols, filas;
int i;
String datos[], dia[][];
color white, yahoo, facebook, apple, microsoft, adobe, ibm, amazon, oracle, avg;

void setup() {
  // size(480, 1300);
  size(1000, 480);

//  beginRecord(PDF, "stockcharts.pdf");

  smooth();

  cols = 12;
  filas = 31;

  datos = loadStrings("stocks.csv");
  dia = new String[datos.length][9];
  for (int i = 0; i < datos.length; i ++) {
    dia[i] = datos[i].split(",");
  }

  //color definido segun color predominante en logo
  white = color(255);
  yahoo = color(100, 15, 108);
  facebook = color(59, 89, 153);
  apple = color(166, 177, 183);
  microsoft = color(128, 204, 40);
  adobe = color(237, 28, 36);
  ibm = color(0);
  amazon = color(247, 155, 54);
  oracle = color(255, 132, 132);
  avg = color(34, 255, 1);
}

void draw() {
  background(white);

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      // int nums = 1 + y+x*filas;
      int nums = 1 + x+y*cols;
      if ((nums >= 0) && (nums < 365)) {

        //variables de las acciones
        float Yahoo = float(dia[nums][0]);
        float Facebook = float(dia[nums][1]);
        float Apple = float(dia[nums][2]);
        float Microsoft = float(dia[nums][3]);
        float Adobe = float(dia[nums][4]);
        float IBM = float(dia[nums][5]);
        float Amazon = float(dia[nums][6]);
        float Oracle = float(dia[nums][7]);

        //variable promedio
        float Avg = ((Yahoo + Facebook + Apple + Microsoft + Adobe + IBM + Amazon + Oracle)/8);


        //funcion definida
        stocks(x1, y1, Yahoo, Facebook, Apple, Microsoft, Adobe, IBM, Amazon, Oracle, Avg);
      }
    }
  }
    endRecord();
}

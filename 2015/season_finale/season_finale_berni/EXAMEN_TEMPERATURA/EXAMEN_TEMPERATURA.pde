import processing.pdf.*;
int cols, filas;

String austria[], berlin[], cancun[], estambul[], hawai[], paris[], roma[], spedro[], santiago[], sydney[]; 
String diaAU[][], diaBE[][], diaCA[][], diaES[][], diaHA[][], diaPA[][], diaRO[][], diaSP[][], diaSN[][], diaSY[][]; 

float x1, y1, tmaxAU, tminAU, tmaxBE, tminBE, tmaxCA, tminCA, tmaxES, tminES, tmaxHA, tminHA;
float tmaxPA, tminPA, tmaxRO, tminRO, tmaxSP, tminSP, tmaxSN, tminSN, tmaxSY, tminSY;


void setup (){
  size(792, 1233);
  cols = 16;
  filas = 23;
  
    austria = loadStrings("austria.csv"); //archivo con los datos
  diaAU = new String[austria.length] [22]; //largo y ancho
  for (int i = 0; i < austria.length; i++) {
    diaAU[i] = austria[i].split(","); //elemtos separados por comas
  }
      berlin = loadStrings("berlin.csv"); //archivo con los datos
  diaBE = new String[berlin.length] [22]; //largo y ancho
  for (int i = 0; i < berlin.length; i++) {
    diaBE[i] = berlin[i].split(","); //elemtos separados por comas
  }
      cancun = loadStrings("cancun.csv"); //archivo con los datos
  diaCA = new String[cancun.length] [22]; //largo y ancho
  for (int i = 0; i < cancun.length; i++) {
    diaCA[i] = cancun[i].split(","); //elemtos separados por comas
  }
      estambul = loadStrings("estambul.csv"); //archivo con los datos
  diaES = new String[estambul.length] [22]; //largo y ancho
  for (int i = 0; i < estambul.length; i++) {
    diaES[i] = estambul[i].split(","); //elemtos separados por comas
  }
     hawai = loadStrings("hawai.csv"); //archivo con los datos
  diaHA = new String[hawai.length] [22]; //largo y ancho
  for (int i = 0; i < hawai.length; i++) {
    diaHA[i] = hawai[i].split(","); //elemtos separados por comas
  }
      paris = loadStrings("paris.csv"); //archivo con los datos
  diaPA = new String[paris.length] [22]; //largo y ancho
  for (int i = 0; i < paris.length; i++) {
    diaPA[i] = paris[i].split(","); //elemtos separados por comas
  }
      roma = loadStrings("roma.csv"); //archivo con los datos
  diaRO = new String[roma.length] [22]; //largo y ancho
  for (int i = 0; i < roma.length; i++) {
    diaRO[i] = roma[i].split(","); //elemtos separados por comas
  }
      spedro = loadStrings("sanpedro.csv"); //archivo con los datos
  diaSP = new String[spedro.length] [22]; //largo y ancho
  for (int i = 0; i < spedro.length; i++) {
    diaSP[i] = spedro[i].split(","); //elemtos separados por comas
  }
        santiago = loadStrings("santiago.csv"); //archivo con los datos
  diaSN = new String[santiago.length] [22]; //largo y ancho
  for (int i = 0; i < santiago.length; i++) {
    diaSN[i] = santiago[i].split(","); //elemtos separados por comas
  }
          sydney = loadStrings("sydney.csv"); //archivo con los datos
  diaSY = new String[sydney.length] [22]; //largo y ancho
  for (int i = 0; i < sydney.length; i++) {
    diaSY[i] = sydney[i].split(","); //elemtos separados por comas
  }
  // beginRecord(PDF, "imprimir_datos.pdf");
}

void draw () {
  background(123);
  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {
       tmaxAU = float(diaAU[nums][1]);
       tminAU = float(diaAU[nums][3]);
       tmaxBE = float(diaBE[nums][1]);
       tminBE = float(diaBE[nums][3]);
       tmaxCA = float(diaCA[nums][1]);
       tminCA = float(diaCA[nums][3]);
       tmaxES = float(diaCA[nums][1]);
       tminES = float(diaCA[nums][3]);
       tmaxHA = float(diaHA[nums][1]);
       tminHA = float(diaHA[nums][3]);
       tmaxPA = float(diaPA[nums][1]);
       tminPA = float(diaPA[nums][3]);
       tmaxRO = float(diaRO[nums][1]);
       tminRO = float(diaRO[nums][3]);
       tmaxSP = float(diaSP[nums][1]);
       tminSP = float(diaSP[nums][3]);
       tmaxSN = float(diaSN[nums][1]);
       tminSN = float(diaSN[nums][3]);
       tmaxSY = float(diaSY[nums][1]);
       tminSY = float(diaSY[nums][3]);
       temperatura (x1, y1, tmaxAU, tminAU, tmaxBE,  tminBE, tmaxCA, tminCA, tmaxES, tminES, tmaxHA, tminHA, tmaxPA, tminPA, tmaxRO, tminRO, tmaxSP, tminSP, tmaxSN, tminSN, tmaxSY, tminSY);
      }
    }
  }
   // endRecord();
}
import processing.pdf.*;

int cols, filas;

String austria[], berlin[], cancun[], estambul[], hawai[], paris[], roma[], spedro[], santiago[], sydney[]; 
String diaAU[][], diaBE[][], diaCA[][], diaES[][], diaHA[][], diaPA[][], diaRO[][], diaSP[][], diaSN[][], diaSY[][]; 

float x1, y1, velmaxAU, velminAU, velmaxBE, velminBE, velmaxCA, velminCA, velmaxES, velminES, velmaxHA, velminHA;
float velmaxPA, velminPA, velmaxRO, velminRO, velmaxSP, velminSP, velmaxSN, velminSN, velmaxSY, velminSY;

float vimaxAU, viminAU, vimaxBE, viminBE, vimaxCA, viminCA, vimaxES, viminES, vimaxHA, viminHA;
float vimaxPA, viminPA, vimaxRO, viminRO, vimaxSP, viminSP, vimaxSN, viminSN, vimaxSY, viminSY;


void setup (){
  size(792, 1233);
  
  beginRecord(PDF, "velocidad2.pdf");
  smooth();
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
   
}

void draw () {
  background(ALPHA);
  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {
       velmaxAU = float(diaAU[nums][16]);
       velminAU = float(diaAU[nums][17]);
       velmaxBE = float(diaBE[nums][16]);
       velminBE = float(diaBE[nums][17]);
       velmaxCA = float(diaCA[nums][16]);
       velminCA = float(diaCA[nums][17]);
       velmaxES = float(diaCA[nums][16]);
       velminES = float(diaCA[nums][17]);
       velmaxHA = float(diaHA[nums][16]);
       velminHA = float(diaHA[nums][17]);
       velmaxPA = float(diaPA[nums][16]);
       velminPA = float(diaPA[nums][17]);
       velmaxRO = float(diaRO[nums][16]);
       velminRO = float(diaRO[nums][17]);
       velmaxSP = float(diaSP[nums][16]);
       velminSP = float(diaSP[nums][17]);
       velmaxSN = float(diaSN[nums][16]);
       velminSN = float(diaSN[nums][17]);
       velmaxSY = float(diaSY[nums][16]);
       velminSY = float(diaSY[nums][17]);
       
       viento (x1, y1, velmaxAU, velminAU, velmaxBE, velminBE, velmaxCA, velminCA, velmaxES, velminES, velmaxHA, velminHA, velmaxPA, velminPA, velmaxRO, velminRO, velmaxSP, velminSP, velmaxSN, velminSN, velmaxSY, velminSY);
       
       vimaxAU = float(diaAU[nums][13]);
       viminAU = float(diaAU[nums][15]);
       vimaxBE = float(diaBE[nums][13]);
       viminBE = float(diaBE[nums][15]);
       vimaxCA = float(diaCA[nums][13]);
       viminCA = float(diaCA[nums][15]);
       vimaxES = float(diaCA[nums][13]);
       viminES = float(diaCA[nums][15]);
       vimaxHA = float(diaHA[nums][13]);
       viminHA = float(diaHA[nums][15]);
       vimaxPA = float(diaPA[nums][13]);
       viminPA = float(diaPA[nums][15]);
       vimaxRO = float(diaRO[nums][13]);
       viminRO = float(diaRO[nums][15]);
       vimaxSP = float(diaSP[nums][13]);
       viminSP = float(diaSP[nums][15]);
       vimaxSN = float(diaSN[nums][13]);
       viminSN = float(diaSN[nums][15]);
       vimaxSY = float(diaSY[nums][13]);
       viminSY = float(diaSY[nums][15]);
       
       visibilidad (x1, y1, vimaxAU, viminAU, vimaxBE, viminBE, vimaxCA, viminCA, vimaxES, viminES, vimaxHA, viminHA, vimaxPA, viminPA, vimaxRO, viminRO, vimaxSP, viminSP, vimaxSN, viminSN, vimaxSY, viminSY);
      }
    }
  }
   endRecord();
}
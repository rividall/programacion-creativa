import processing.pdf.*;
int cols, filas;

String austria[], berlin[], cancun[], estambul[], hawai[], paris[], roma[], spedro[], santiago[], sydney[]; 
String diaAU[][], diaBE[][], diaCA[][], diaES[][], diaHA[][], diaPA[][], diaRO[][], diaSP[][], diaSN[][], diaSY[][]; 

float x1, y1, huminAU, huminBE, huminCA, huminES, huminHA;
float huminPA, huminRO, humaxSP, huminSP, huminSN, huminSY;


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
   beginRecord(PDF, "imprimir_datos.pdf");
}

void draw () {
  background(123);
  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {
      
       huminAU = float(diaAU[nums][9]);
       huminBE = float(diaBE[nums][9]);
       huminCA = float(diaCA[nums][9]);
       huminES = float(diaCA[nums][9]);
       huminHA = float(diaHA[nums][9]);
       huminPA = float(diaPA[nums][9]);
       huminRO = float(diaRO[nums][9]);
       humaxSP = float(diaSP[nums][8]);
       huminSP = float(diaSP[nums][9]);
       huminSN = float(diaSN[nums][9]);
       huminSY = float(diaSY[nums][9]);
       
       humedad (x1, y1, huminAU, huminBE, huminCA, huminES, huminHA, huminPA, huminRO, humaxSP, huminSP, huminSN, huminSY);
        
      }
    }
  }
  endRecord();
}
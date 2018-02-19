//UDD - Expresión Digital II
//s13c02 laura 
//visualizacion de datos de parios 2014

import processing.pdf.*;

int colu, filas;
String datos[];
String dia[] [];
float a, ap, tem;
PFont f;

void setup(){
size(340, 935);
colu = 12 ;
filas = 31;

//f = createFont("arial",10);
  datos = loadStrings ("paris2012clima.csv");
  dia = new String [datos.length] [0];
for(int i = 0; i < datos.length; i++){
    dia [i] = datos [i] . split(",");
  }

}

void draw(){
beginRecord(PDF,"lamina3.pdf");
background(255);
for (int x = 0; x < colu; x++){
  for ( int y = 0; y < filas ; y++){

//translate(x1, y1);
    rotate(ap);
   float x1 = x * (width/colu) + (width/(colu*2));
     float y1 = y * (height/filas) + (height/(filas*2));

     int nums = 1 + y + x*filas;
     if ((nums >= 0) && (nums < 365)){// esto e spara que no de mas de 365 dias o valores 
     
     //papel normal
      
      float vientoDir = float(dia[nums][22]);// valor numerico
      float temax = float (dia[nums][1]);
      float windmax = float (dia[nums][17]);
      float maxhumedad = float (dia[nums][7]);

      
      //papel diamante
      String vientoDirT = dia [nums][22];//estas serian las variables especificas que vamos a usar valos escrito 
      String tempmin = dia[nums][3];
      String windmin = dia[nums][18];
      String minhumedad = dia[nums][9];

     
     prueba(x1, y1, vientoDir, temax, windmax, maxhumedad);
     
     diamante(x1, y1, vientoDir ,vientoDirT, tempmin, windmin, minhumedad); 
    
    } 
  }
 }
 
 endRecord();
}
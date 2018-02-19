//UDD- Expresión Digital II
//s13c02IsidoraV 
/*
Generar un grafico visual con los datos obtenidos del clima en la ciudad de Paris
en el año 2014 de los 365 días de aquel año. Se eligio mostrarlo en una pokebola en
honor a los datos perdidos el día anterior.
*/

import processing.pdf.*;
String pkm[];
String list[] [];
color n, b, r, at, dg, lg;

PFont f;

int cols, filas, i;



void setup(){
  size(1625,4913);
  textMode(MODEL);
  
  cols = 13;
  filas = 30;

  n = color(0); //negro
  b = color(230); //blanco
  r = color(188, 48, 48); //rojo
  at = color(51,90,217);//azul temp
  dg = color(120, 119, 120); //dark grey
  lg = color(187, 186, 187); //light grey
  
    f = createFont("8-bitOperatorPlus8", 8);
  
  pkm = loadStrings("paris2014clima.csv");
  list = new String[pkm.length] [22];
  
  for (int i=0; i < pkm.length; i++) {
    list[i] = pkm[i].split(",");
  }
 }

void draw(){
   beginRecord(PDF, "final.pdf");
   background(b);
    
  for(int x = 0; x < cols; x++){
    for(int y = 0; y < filas; y++){
      
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      
      int nums = y + x * filas; 
      
      if((nums >= 0) && (nums <=365)) {  
   
  float maxtemp = float(list[nums] [1]);
  float mintemp = float(list[nums] [3]);
  float maxvis = float(list[nums] [13]);
  float minvis = float(list[nums] [15]);
  float prec = float(list[nums] [19]);
  float minhum = float(list[nums] [9]);
  float maxhum = float(list[nums] [7]);
  float cloud = float(list[nums] [20]);
  float maxwind = float(list[nums] [16]);
   
  pokebola(x1, y1, maxtemp, mintemp, maxvis, minvis, prec, minhum, maxhum, cloud, maxwind);
         }
    }
  }
    endRecord();
}
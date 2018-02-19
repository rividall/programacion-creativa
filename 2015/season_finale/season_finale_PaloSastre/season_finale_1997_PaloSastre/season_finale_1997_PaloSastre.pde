import processing.pdf.*;

String datos[];
String dia[] [];
color r, t, n, a, g;

int cols, filas;
int i;

String eventos;
float tempmax, tempmin, humedadmax, visibmax, velrafagas;

void setup(){
  size(1200,400);
  smooth();
  datos = loadStrings("clima1997beijing.csv");
  dia = new String[datos.length][22];
  
  cols = 120;
  filas = 3;
  
  i = 0;
  
  r = color (255, 151, 161); //rosado
  t = color (61, 177, 171); //turquesa
  n = color (0); //negro
  a = color (218, 232, 29); //amarillo
  g = color (230, 230, 229); //gris
  
  for (int i = 0; i < datos.length; i ++) {
    dia[i]=datos[i].split(",");
  }
}

void draw(){
  beginRecord(PDF, "Beijing_1997.pdf");
  
  background(255);
  
  for (int x = 0; x < cols; x++){
    for (int y = 0; y < filas; y++){
      float x1 = x * (width/cols) + (width/(cols*2)); //posicion relativa con el ancho
      float y1 = y * (height/filas) + (height/(filas*2)); //posicion relativa con el alto
      int nums = 1 + y + x * filas;
      if ((nums >= 0)&& (nums <= 365)){
        tempmax = float (dia[nums][1]);
        tempmin = float (dia[nums][3]);
        humedadmax = float (dia[nums][7]);
        visibmax = float (dia[nums][13]);
        velrafagas = float (dia[nums][18]);
        eventos = dia[nums][21];
        
        beijing1997(x1, y1, tempmax, tempmin, humedadmax, visibmax, velrafagas, eventos);
 
      }
    }
  }
  endRecord();
  //exit();
}
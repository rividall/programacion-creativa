//UDD - Expresion Digital II
//s13c02PaloSastre
//Creación de una visualización de datos con una base de datos del clima de Beijing en el año 2014.

String datos[];
String dia[] [];
color r, t, b, n, na, a, v, g, m;

int cols, filas;
int i;

String eventos;
float tempmax, tempmin, rocio, humedadmax, humedadmed, humedadmin, visibmax, visibmed, visibmin, viento, maxviento, velrafagas, precip, cloud;

void setup(){
  size(208,700);
  smooth();
  datos = loadStrings("clima2014beijing.csv");
  dia = new String[datos.length][22];
  
  cols = 12;
  filas = 31;
  
  i = 0;
  
  r = color (255, 151, 161); //rosado
  t = color (61, 177, 171); //turquesa
  b = color (255); //blanco
  n = color (0); //negro
  na = color (255, 159, 59); //naranjo
  a = color (218, 232, 29); //amarillo
  v = color (55, 255, 120); //verde
  g = color (230, 230, 229); //gris
  m = color (153, 105, 255); //morado
  
  for (int i = 0; i < datos.length; i ++) {
    dia[i]=datos[i].split(",");
  }
}

void draw(){
  background(b);
  
  for (int x = 0; x <cols; x++){
    for (int y = 0; y < filas; y++){
      float x1 = x * (width/cols) + (width/(cols*2)); //posicion relativa con el ancho
      float y1 = y * (height/filas) + (height/(filas*2)); //posicion relativa con el alto
      int nums = 1 + y + x * filas;
      if ((nums >= 0)&& (nums <= 365)){
        tempmax = float (dia[nums][1]);
        tempmin = float (dia[nums][3]);
        rocio = float (dia[nums][4]);
        humedadmax = float (dia[nums][7]);
        humedadmed = float (dia[nums][8]);
        humedadmin = float (dia[nums][9]);
        visibmax = float (dia[nums][13]);
        visibmed = float (dia[nums][14]);
        visibmin = float (dia[nums][15]);
        viento = float (dia[nums][17]);
        maxviento = float (dia[nums][16]);
        velrafagas = float (dia[nums][18]);
        precip = float (dia[nums][19]);
        cloud = float (dia[nums][20]);
        eventos = dia[nums][21];
        
        beijing(x1, y1, tempmax, tempmin, rocio, humedadmax, humedadmed, humedadmin, visibmax, visibmed, visibmin, viento, maxviento, velrafagas, precip, cloud, eventos);
 
      }
    }
  }
}
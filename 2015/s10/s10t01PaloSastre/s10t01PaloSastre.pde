//UDD - Expresion Digital II
//s10t01PaloSastre
//Creación de una funcion que almacene 8 variables de una base de datos del clima de
//beijing, por a través de las cuales se tendrá que navegar por medio de un 'keyPressed'. 

String datos[];
String dia[] [];
color r, t, b, n, a;

int i;

String fecha;
String eventos;
float tempmax, tempmin, humedad, visib, viento, precip;

void setup() {
  size(500, 500);
  smooth();
  datos = loadStrings("clima2014beijing.csv");
  dia = new String[datos.length][22];

  r = color (255, 151, 161); //rosado
  t = color (61, 177, 171); //turquesa
  b = color (255); //blanco
  n = color (0); //negro
  a = color (218, 232, 29); //amarillo

  for (int i = 0; i < datos.length; i ++) {
    dia[i]=datos[i].split(",");
  }
  i = 1;
}

void draw() {
  background(n);
  fecha = dia[i][0];
  tempmax = float (dia[i][1]);
  tempmin = float (dia[i][3]);
  humedad = float (dia[i][8]);
  visib = float (dia[i][14]);
  viento = float (dia[i][17]);
  precip = float (dia[i][19]);
  eventos = dia[i][21];
  
  fnbeijing(fecha, tempmax, tempmin, humedad, visib, viento, precip, eventos);
}

void keyPressed() {
  if (key == ' ');
  i++;
}


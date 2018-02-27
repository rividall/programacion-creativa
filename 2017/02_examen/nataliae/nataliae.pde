// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Natalia Malsch Coelho
// Examen
/*
El encargo es la visualización de datos de una ciudad en específica del 2015.
Yo elegí Praga de Republica Checa y muestro tres visualizaciones distintas, la primera
es sobre el año dividido por la cantidad de días y diferenciando el mes por colores
diferentes. Se ve la temperatura máxima y mínima, la humedad máxima y mínima y las nubes.
La segunda está dividida por las estaciones. Esta muestra la precipitación
y la humedad media. La tercera visualización esta dividido por los meses y muestra
las nubes, la visibilidad y la velocidad media.
*/
Tem12mes [] t12m;
Llu4esta [] l4e;
Cadames [] cm12;
Table tabla;
boolean a, s, d, q, w, e, r, z, x, c, v, m;
PFont fuente, regular;

void setup() {
  size(1200, 650);
  noFill();
  tabla = loadTable("Prague_Czech_Republic.csv", "header"); /*Cargar archivo
   con parametros de cabecera.*/
  fuente = loadFont("AvenirNext-UltraLight-48.vlw"); //Ttulo
  regular = loadFont("AvenirNext-Regular-48.vlw"); //Texto

  //Inicializar el array con cantidad de filas del archivo.
  int total = tabla.getRowCount();
  t12m = new Tem12mes[total];
  l4e = new Llu4esta[total];
  cm12 = new Cadames[total];

  for (int i = 0; i < tabla.getRowCount(); i++) { //Contador pasa por todas las filas.
    TableRow row = tabla.getRow(i); /*Creamos un nuevo obj de tipo TableRow
     con la info de cada fila.*/

    int mes = row.getInt("mes");
    int vis= row.getInt("vis");
    int maxima = row.getInt("Max Tem");
    int minima = row.getInt("Min Tem");
    int maxhum = row.getInt("Max Hum");
    int minhum = row.getInt("Min Hum");
    int medhum = row.getInt("Med Hum");
    int viento = row.getInt("viento");
    float nub = row.getFloat("Nub");
    float pre = row.getFloat("Pre");

    t12m [i] = new Tem12mes(mes, maxima, minima, i, maxhum, minhum, nub);
    l4e [i] = new Llu4esta(mes, pre, i, medhum);
    cm12 [i] = new Cadames(nub, i, viento, vis);

    a = false;
    s = false;
    d = false;
    w = false;
    q = false;
    e = false;
    r = false;
    z = false;
    x = false;
    c = false;
    v = false;
  }
}

void draw() {
  background(#171717); //Gris oscuro de fondo.

  //Leyenda fija
  fill(#E0E3E3);
  textFont(fuente);
  textSize(50);
  textAlign(LEFT);
  text("Prague 2015", 30, 70);
  textFont(regular);
  textSize(16);
  text("a = Año temperatura", 30, 390);
  text("s = Año humedad", 30, 410);
  text("d = Año nubes", 30, 430);
  text("q = Invierno", 30, 450);
  text("w = Primavera", 30, 470);
  text("e = Verano", 30, 490);
  text("r = Otoño", 30, 510);
  text("z = Ene/Feb/Mar", 30, 530);
  text("x = Abr/May/Jun", 30, 550);
  text("c = Jul/Ago/Sep", 30, 570);
  text("v = Oct/Nov/Dic", 30, 590);

  //Muestra la tem máx y mín del año.
  if (a) {
    pushMatrix();
    fill(#E0E3E3);
    textFont(regular);
    textSize(32);
    textAlign(RIGHT);
    text("Año", 1170, 530);
    textSize(16);
    text("Temperatura máxima y mínima= líneas", 1170, 550);

    translate(width/2, height/2);
    for (int i = 1; i < 91; i++) {
      t12m[i].verano();
    }
    for (int i = 92; i < 182; i++) {
      t12m[i].otono();
    }
    for (int i = 183; i < 274; i++) {
      t12m[i].invierno();
    }
    for (int i = 275; i < 365; i++) {
      t12m[i].primavera();
    }
    popMatrix();
  }

  //Muestra la hum máx y mín del año.
  if (s) {
    pushMatrix();
    textFont(regular);
    fill(#E0E3E3);
    textAlign(RIGHT);
    textSize(32);
    text("Año", 1170, 530);
    textSize(16);
    text("Humedad máxima y mínima= puntos", 1170, 570);

    translate(width/2, height/2);
    for (int i = 1; i < 91; i++) {
      t12m[i].veranohum();
    }
    for (int i = 92; i < 182; i++) {
      t12m[i].otonohum();
    }
    for (int i = 183; i < 274; i++) {
      t12m[i].inviernohum();
    }
    for (int i = 275; i < 365; i++) {
      t12m[i].primaverahum();
    }
    popMatrix();
  }

  //Muestra las nubes del año.
  if (d) {
    pushMatrix();
    textFont(regular);
    fill(#E0E3E3);
    textSize(32);
    textAlign(RIGHT);
    text("Año", 1170, 530);
    textSize(16);
    text("Nubes promedio= círculos", 1170, 590);
    translate(width/2, height/2);

    for (int i = 1; i < 91; i++) {
      t12m[i].vernub();
    }
    for (int i = 92; i < 182; i++) {
      t12m[i].otonub();
    }
    for (int i = 183; i < 274; i++) {
      t12m[i].invnub();
    }
    for (int i = 275; i < 365; i++) {
      t12m[i].prinub();
    }
    popMatrix();
  }

  //Invierno con sus precipitaciones y humedad media.
  if (q) {
    pushMatrix();
    textFont(regular);
    fill(#E0E3E3);
    textSize(32);
    textAlign(RIGHT);
    text("Estaciones", 1170, 530);
    textSize(16);
    text("Precipitación= largo líneas", 1170, 550);
    text("Humedad media= puntos eje x", 1170, 570);

    translate(750, 150);
    for (int i = 1; i < 91; i++) {
      l4e[i].veranol();
      l4e[i].veranomd();
    }
    popMatrix();
  }

  //Primavera con sus precipitaciones y humedad media.
  if (w) {
    pushMatrix();
    textFont(regular);
    fill(#E0E3E3);
    textSize(32);
    textAlign(RIGHT);
    text("Estaciones", 1170, 530);
    textSize(16);
    text("Precipitación= largo líneas", 1170, 550);
    text("Humedad media= puntos eje x", 1170, 570);

    translate(750, 450);
    for (int i = 92; i < 182; i++) {
      l4e[i].otonol();
      l4e[i].otonomd();
    }
    popMatrix();
  }

  //Verano con sus precipitaciones y humedad media.
  if (e) {
    pushMatrix();
    textFont(regular);
    fill(#E0E3E3);
    textSize(32);
    textAlign(RIGHT);
    text("Estaciones", 1170, 530);
    textSize(16);
    text("Precipitación= largo líneas", 1170, 550);
    text("Humedad media= puntos eje x", 1170, 570);

    translate(450, 450);
    for (int i = 183; i < 274; i++) {
      l4e[i].inviernol();
      l4e[i].inviernomd();
    }
    popMatrix();
  }

  //Otoño con sus precipitaciones y humedad media.
  if (r) {
    pushMatrix();
    textFont(regular);
    fill(#E0E3E3);
    textSize(32);
    textAlign(RIGHT);
    text("Estaciones", 1170, 530);
    textSize(16);
    text("Precipitación= largo líneas", 1170, 550);
    text("Humedad media= puntos eje x", 1170, 570);

    translate(450, 150);
    for (int i = 275; i < 365; i++) {
      l4e[i].primaveral();
      l4e[i].primaveramh();
    }
    popMatrix();
  }

  //Enero, febrero, marzo junto con las nubes, visilibidad y velocidad promedio.
  if (z) {
    textFont(regular);
    textSize(32);
    fill(#E0E3E3);
    textAlign(RIGHT);
    text("Meses", 1170, 530);
    textSize(16);
    text("Nubes= tamaño círculo", 1170, 550);
    text("Visibilidad media= tamaño líneas", 1170, 570);
    text("Viento= velocidad", 1170, 590);

    pushMatrix(); //Enero
    translate(400, 100);
    for (int i = 1; i < 32; i++) {
      cm12[i].enero();
      cm12[i].enerov();
    }
    popMatrix();

    pushMatrix();//Febrero
    translate(600, 100);
    for (int i = 33; i < 60; i++) {
      cm12[i].febrero();
      cm12[i].febrerov();
    }
    popMatrix();

    pushMatrix();//Marzo
    translate(800, 100);
    for (int i = 61; i < 91; i++) {
      cm12[i].marzo();
      cm12[i].marzov();
    }
    popMatrix();
  }

  //Abril, mayo, junio junto con las nubes, visilibidad y velocidad promedio.
  if (x) {
    textFont(regular);
    textSize(32);
    fill(#E0E3E3);
    textAlign(RIGHT);
    text("Meses", 1170, 530);
    textSize(16);
    text("Nubes= tamaño círculo", 1170, 550);
    text("Visibilidad media= tamaño líneas", 1170, 570);
    text("Viento= velocidad", 1170, 590);

    pushMatrix(); //Abril
    translate(400, 250);
    for (int i = 92; i < 121; i++) {
      cm12[i].abril();
      cm12[i].abrilv();
    }
    popMatrix();

    pushMatrix(); //Mayo
    translate(600, 250);
    for (int i = 122; i < 152; i++) {
      cm12[i].mayo();
      cm12[i].mayov();
    }
    popMatrix();

    pushMatrix(); //Junio
    translate(800, 250);
    for (int i = 153; i < 182; i++) {
      cm12[i].junio();
      cm12[i].juniov();
    }
    popMatrix();
  }

  //Julio, agosto, septiembre junto con las nubes, visilibidad y velocidad promedio.
  if (c) {
    textFont(regular);
    textSize(32);
    fill(#E0E3E3);
    textAlign(RIGHT);
    text("Meses", 1170, 530);
    textSize(16);
    text("Nubes= tamaño círculo", 1170, 550);
    text("Visibilidad media= tamaño líneas", 1170, 570);
    text("Viento= velocidad", 1170, 590);

    pushMatrix(); //Julio
    translate(400, 400);
    for (int i = 183; i < 213; i++) {
      cm12[i].julio();
      cm12[i].juliov();
    }
    popMatrix();

    pushMatrix(); //Agosto
    translate(600, 400);
    for (int i = 214; i < 244; i++) {
      cm12[i].agosto();
      cm12[i].agostov();
    }
    popMatrix();

    pushMatrix(); //Septiembre
    translate(800, 400);
    for (int i = 245; i < 274; i++) {
      cm12[i].septiembre();
      cm12[i].septiembrev();
    }
    popMatrix();
  }

  //Octubre, noviembre, diciembre junto con las nubes, visilibidad y velocidad promedio.
  if (v) {
    textFont(regular);
    textSize(32);
    fill(#E0E3E3);
    textAlign(RIGHT);
    text("Meses", 1170, 530);
    textSize(16);
    text("Nubes= tamaño círculo", 1170, 550);
    text("Visibilidad media= tamaño líneas", 1170, 570);
    text("Viento= velocidad", 1170, 590);

    pushMatrix(); //Octubre
    translate(400, 550);
    for (int i = 275; i < 305; i++) {
      cm12[i].octubre();
      cm12[i].octubrev();
    }
    popMatrix();

    pushMatrix(); //Noviembre
    translate(600, 550);
    for (int i = 306; i < 335; i++) {
      cm12[i].noviembre();
      cm12[i].noviembrev();
    }
    popMatrix();

    pushMatrix(); //Diciembre
    translate(800, 550);
    for (int i = 336; i < 365; i++) {
      cm12[i].diciembre();
      cm12[i].diciembrev();
    }
    popMatrix();
  }
}

void keyPressed() {
  if (key =='a') { //Año temperatura
    a = !a;
  }
  if (key =='s') { //Año humedad
    s = !s;
  }
  if (key =='d') { //Año nubes
    d = !d;
  }
  if (key =='q') { //Invierno
    q = !q;
  }
  if (key =='w') { //Primavera
    w = !w;
  }
  if (key =='r') { //Verano
    r = !r;
  }
  if (key =='e') { //Otoño
    e = !e;
  }
  if (key =='z') { //Ene/feb/mar
    z = !z;
  }
  if (key =='x') { //Abr/may/jun
    x = !x;
  }
  if (key =='c') { //Jul/ago/sep
    c = !c;
  }
  if (key =='v') { //Oct/nov/dic
    v = !v;
  }
}

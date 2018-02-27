/* Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre -
Expresión Digital II - Manuela Larrain Ossa.

 Al correr el programa tenemos diferentes visualizaciones de Agadez, Nigeria. Si se
 aprieta la tecla "1, 2, 3, 4, 5, 6, 7, 8, 9, 0, q, w" podrás ver visualizaciones que
 muestran los diferentes meses del año según la humedad máxima y mínima, y la
 visibilidad máxima y mínima. Al apretar "v", se visualizarán todos los días del año,
 que rotarán en la velocidad media del viento del día correspondiente. Para la
 visualización de la temperatura máxima, apretaremos "t", y para pasar los días, se
 aprieta "r". Y finalmente al apretar "y", se visualiza la temperatura mínima, y con
 "u", se pasan los días del año. */

Clima[] c; //Clase.
Table tabla1; //Se declara la tabla.
int p, d, l, y, margen, blanco, naranjo, texto; //Variables globales.
//boolean.
boolean enero_, febrero_, marzo_, abril_, mayo_, junio_, julio_, agosto_;
boolean  septiembre_, octubre_, noviembre_, diciembre_, temperaturaMax_;
boolean temperaturaMin_, anos_, meses_, viento_, dias_;
PFont fuente; //Se declara la fuente.

void setup() {
  fullScreen(); //Tamaño del canvas.
  //Características de la fuente
  fuente = loadFont("AvenirLTStd-Light-48.vlw");
  textFont(fuente);
  textAlign(CENTER);
  tabla1=loadTable("Agadez_Niger.csv", "header"); //Se llama la base de datos.

  /*Boolean*/
  enero_ = false;
  febrero_ = false;
  marzo_ = false;
  abril_ = false;
  mayo_ = false;
  junio_ = false;
  julio_ = false;
  agosto_ = false;
  septiembre_ = false;
  octubre_ = false;
  noviembre_ = false;
  diciembre_ = false;
  temperaturaMax_ = false;
  temperaturaMin_ = false;
  viento_ = true;
  meses_ = false;
  anos_ = true;
  dias_ = false;
  /*Fin boolean*/

  margen = 210;
  blanco = #FFFFFF;
  naranjo = #F5B207;

  c = new Clima[tabla1.getRowCount()];

  for (int t = 0; t < tabla1.getRowCount(); t++) {
    TableRow row = tabla1.getRow(t);
    /*Se da un nuevo nombre a los datos.*/
    int ano = row.getInt("A");
    int mes = row.getInt("M");
    int dia = row.getInt("D");
    int max = row.getInt("Max TemperatureC");
    int max_2 = row.getInt("Max TemperatureC");
    int min_2 = row.getInt("Min TemperatureC");
    int viento = row.getInt(" Mean Wind SpeedKm/h");
    int maxV = row.getInt(" Max VisibilityKm");
    int minV = row.getInt(" Min VisibilitykM");
    int meanV = row.getInt(" Mean VisibilityKm");
    int maxH = row.getInt("Max Humidity");
    int minH = row.getInt(" Min Humidity");
    int maxPR = row.getInt("Dew PointC");
    int minPR = row.getInt("Min DewpointC");
    c[t] = new Clima(ano, mes, dia, max, max_2, min_2, viento, t, maxV, minV, meanV, maxH, minH, maxPR, minPR);
  }
}

/*Inicio void draw*/
void draw() {
  fill(10, 90); //Fondo relleno con transparencia
  noStroke();
  rect(0, 0, 1366, 767);

  //Texto.
  pushMatrix();
  textAlign(LEFT);
  textSize(35);
  fill(naranjo);
  text("Agadez Nigeria", 20, 40);
  text("2015", 20, 90);
  textSize(22);
  text("Keypressed", 20, 130);

  textSize(17);
  fill(blanco);
  text("v = Viento", 20, 160);
  text("1 = Enero", 20, 210);
  text("2 = Febrero", 20, 235);
  text("3 = Marzo", 20, 260);
  text("4 = Abril", 20, 285);
  text("5 = Mayo", 20, 310);
  text("6 = Junio", 20, 335);
  text("7 = Julio", 20, 360);
  text("8 = Agosto", 20, 385);
  text("9 = Septiembre", 20, 410);
  text("0 = Octubre", 20, 435);
  text("q = Noviembre", 20, 460);
  text("w = Diciembre", 20, 485);
  text("t = T° Máxima", 20, 535);
  text("y = T° Mínima", 20, 560);
  text("r = Suma día T° Máx", 20, 585);
  text("u = Suma día T° Mín", 20, 610);
  popMatrix();

  if (meses_) { //Texto para función de los meses.
    pushMatrix();
    textAlign(LEFT);
    fill(naranjo);
    textSize(22);
    text("Meses del Año", width-margen, 37);
    textSize(17);
    text("Ancho Ellipse Exterior:", width-margen, 75);
    text("Posición Ellipse Exterior:", width-margen, 150);
    text("Ancho Ellipse Interior:", width-margen, 225);
    text("Posición Ellipse Interior:", width-margen, 300);
    text("Line:", width-margen, 370);
    fill(blanco);
    text("Máxima visibilidad  del día.", width-margen, 100);
    text("Máxima humedad del día.", width-margen, 175);
    text("Mínima visibilidad  del día.", width-margen, 250);
    text("Mínima humedad del día.", width-margen, 325);
    text("Unión entre los puntos.", width-margen, 400);
    popMatrix();
  }
  if (anos_) { //Texto para función del viento.
    pushMatrix();
    textAlign(LEFT);
    fill(naranjo);
    textSize(22);
    text("365 Días", width-margen, 37);
    textSize(17);
    text("Rotación:", width-margen, 150);
    text("Point:", width-margen, 75);
    fill(blanco);
    text("Días del año.", width-margen, 100);
    text("Velocidad media del", width-margen, 175);
    text("viento.", width-margen, 200);
    popMatrix();
  }
  if (dias_) { //Texto para función de la temperatura.
    pushMatrix();
    textAlign(LEFT);
    fill(naranjo);
    textSize(22);
    text("365 Días", width-margen, 37);
    textSize(17);
    text("Line:", width-margen, 65);
    stroke(#FF0000);
    strokeWeight(2);
    line(width-margen, 110, width-margen, 130);
    stroke(#FF6803);
    strokeWeight(2);
    line(width-margen, 155, width-margen, 175);
    fill(blanco);
    text("T° Mín.", width-margen+15, 175);
    text("T° Máx.", width-margen+15, 130);
    text("Días del año.", width-margen, 90);
    textSize(12);
    fill(blanco);
    text("0°", 230, height/2);
    text("45°", 230, height/2 -200);
    text("0°", width-240, height/2);
    text("45°", width-240, height/2 -200);
    popMatrix();
  }
  //Fin texto.

  if (viento_) { //Se llama a la función grilla.
    for (int t = 0; t < c.length; t ++) { //Se lee toda la base de datos.
      c[t].grilla();
    }
  }
  if (temperaturaMax_) { //Se llama a la función temperaturaMax.
    for (int t = 0; t < c.length; t ++) { //Se lee toda la base de datos.
      c[p].temperaturaMax();
    }
  }
  if (temperaturaMin_) { //Se llama a la función temperaturaMin.
    for (int t = 0; t < c.length; t ++) { //Se lee toda la base de datos.
      c[l].temperaturaMin();
    }
  }

  if (enero_) { //Se llama a la función Enero.
    for (int t = 0; t < 30; t++) { //Enero va desde la fila 0 hasta la 30.
      c[t].enero();
    }
  }
  if (febrero_) { //Se llama a la función Febrero.
    for (int t = 31; t < 58; t ++) { //Febrero va desde la fila 31 hasta la 58.
      c[t].febrero();
    }
  }
  if (marzo_) { //Se llama a la función Marzo.
    for (int t = 59; t < 89; t ++) { //Marzo va desde la fila 59 hasta la 89.
      c[t].marzo();
    }
  }
  if (abril_) { //Se llama a la función Abril.
    for (int t = 90; t < 119; t ++) { //Abril va desde la fila 90 hasta la 119.
      c[t].abril();
    }
  }
  if (mayo_) { //Se llama a la función Mayo.
    for (int t = 120; t < 150; t ++) { //Mayo va desde la fila 120 hasta la 150.
      c[t].mayo();
    }
  }
  if (junio_) { //Se llama a la función Junio.
    for (int t = 151; t < 180; t ++) { //Junio va desde la fila 151 hasta la 180.
      c[t].junio();
    }
  }
  if (julio_) { //Se llama a la función Julio.
    for (int t = 181; t < 211; t ++) { //Junio va desde la fila 181 hasta la 221.
      c[t].julio();
    }
  }
  if (agosto_) {
    for (int t = 212; t < 242; t ++) { //Junio va desde la fila 212 hasta la 242.
      c[t].agosto();
    }
  }
  if (septiembre_) {
    for (int t = 243; t < 272; t ++) { //Junio va desde la fila 243 hasta la 272.
      c[t].septiembre();
    }
  }
  if (octubre_) {
    for (int t = 273; t < 303; t ++) { //Junio va desde la fila 273 hasta la 303.
      c[t].octubre();
    }
  }
  if (noviembre_) {
    for (int t = 304; t < 333; t ++) { //Junio va desde la fila 304 hasta la 333.
      c[t].noviembre();
    }
  }
  if (diciembre_) {
    for (int t = 334; t < 364; t ++) { //Junio va desde la fila 334 hasta la 364.
      c[t].diciembre();
    }
  }
}

void keyPressed() {
  /*Al presionar la tecla ' ', el boolean se vuelve verdadero/falso.*/
  if (key == '1') { //Se activa la función Enero y el texto correspondiente.
    meses_ = true;
    enero_ = !enero_;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='2') { //Se activa la función Febrero y el texto correspondiente.
    meses_ = true;
    febrero_ = !febrero_;
    enero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='3') { //Se activa la función Marzo y el texto correspondiente.
    meses_ = true;
    marzo_ = !marzo_;
    enero_ = false;
    febrero_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='4') { //Se activa la función Abril y el texto correspondiente.
    meses_ = true;
    abril_ = !abril_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='5') { //Se activa la función Mayo y el texto correspondiente.
    meses_ = true;
    mayo_ = !mayo_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='6') { //Se activa la función Junio y el texto correspondiente.
    meses_ = true;
    junio_ = !junio_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='7') { //Se activa la función Julio y el texto correspondiente.
    meses_ = true;
    julio_ = !julio_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='8') { //Se activa la función Agosto y el texto correspondiente.
    meses_ = true;
    agosto_ = !agosto_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='9') { //Se activa la función Septiembre y el texto correspondiente.
    meses_ = true;
    septiembre_ = !septiembre_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='0') { //Se activa la función Octubre y el texto correspondiente.
    meses_ = true;
    octubre_ = !octubre_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='q') { //Se activa la función Noviembre y el texto correspondiente.
    meses_ = true;
    noviembre_ = !noviembre_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    diciembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key =='w') { //Se activa la función Diciembre y el texto correspondiente.
    meses_ = true;
    diciembre_ = !diciembre_;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    viento_ = false;
    anos_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  } else if (key == 'v') { //Se activa la función Viento y el texto correspondiente.
    viento_ = !viento_;
    anos_ = !anos_;
    meses_ = false;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    dias_ = false;
    temperaturaMin_ = false;
    temperaturaMax_ = false;
  }
  if (key == 't') { //Se activa la función TemperaturaMax y el texto correspondiente.
    temperaturaMax_ = !temperaturaMax_;
    dias_ = true;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    meses_ = false;
    anos_ = false;
  } else if (key == 'y') { //Se activa la función TemperaturaMin y el texto correspondiente.
    temperaturaMin_ = !temperaturaMin_;
    dias_ = true;
    enero_ = false;
    febrero_ = false;
    marzo_ = false;
    abril_ = false;
    mayo_ = false;
    junio_ = false;
    julio_ = false;
    agosto_ = false;
    septiembre_ = false;
    octubre_ = false;
    noviembre_ = false;
    diciembre_ = false;
    viento_ = false;
    meses_ = false;
    anos_ = false;
  }
  if (key == 'r') { //Se aumentan los días para la función TemperaturaMax.
    p++;
  }
  if (key == 'u') { //Se aumentan los días para la función TemperaturaMin.
    l++;
  }
}

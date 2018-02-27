/*
 Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre -
 Expresión Digital II - Sofía Oller Vidal - Examen

 Al correr el programa se podrá ver el examen el cual consiste en la visualización de
 datos del clima de la ciudad de Antananarivo, Madagascar durante todo el año 2015.

 Para ver la primera visualización se presiona la tecla 'z', en donde se pueden ver los
 datos de la máxima y mínima temperatura, la precipitación y la máxima que hubo de punto
 de rocío de los 365 días.

 La siguiente visualización aparece con la tecla 'x', la cual se muestran las variables
 de máxima y mínima humedad y el nivel medio del mar. Los distintos datos se ven
 agrupados según cada mes, partiendo por Enero y terminando en Diciembre.

 La última visualización que se enseña con la tecla 'c', es más específica que las
 anteriores, ya que se muestran los primeros días de cada mes, se presentan las
 variables del promedio de humedad, promedio visibilidad, promedio punto de rocío y
 promedio del viento.

 Cada visualización desaparece presionando la misma tecla con que fue inicializada.

 */

// Se declaran las variables a utilizar.
Entero [] e;
Meses [] m;
Dias [] d;
Table tabla;
boolean todos_, anillos_, primerosdias_;
PFont fuente, light, negrita;

// Se incializa el área de seteo.
void setup() {
  fullScreen();

  /* Se declaran false las siguientes funciones, para que cuando se haga correr el
   boolean, estas se activen presionando la tecla correspondiente. */
  todos_ = false;
  anillos_ = false;
  primerosdias_ = false;

  /* Se hacen cargar los siguientes datos a utilizar, como la tabla de datos y
   tipografía*/
  tabla = loadTable("Antananarivo_Madagascar.csv", "header");
  fuente = loadFont("BernerBasisschrift1-48.vlw");
  light = loadFont("DIN-Light-48.vlw");
  negrita = loadFont("DIN-Medium-48.vlw");

  //Se inician las clases.
  e = new Entero[tabla.getRowCount()];
  m = new Meses[tabla.getRowCount()];
  d = new Dias[tabla.getRowCount()];

  // Se llaman las distintas variables a utilizar para las respectivas visualizaciones.
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    int maxt = row.getInt("MaximaTemperatura");
    int mint = row.getInt("MinimaTemperatura");
    int precipitacion = row.getInt("Precipitacion");
    int rocio = row.getInt("PuntoRocio");
    int maxh = row.getInt("Max Humidity");
    int minh = row.getInt(" Min Humidity");
    int mar = row.getInt(" Mean Sea Level PressurehPa");
    int vis = row.getInt(" Mean VisibilityKm");
    int meanh = row.getInt(" Mean Humidity");
    int viento = row.getInt(" Mean Wind SpeedKm/h");
    int meanp = row.getInt("MeanDew PointC");
    int dia = row.getInt("Dia");
    int mes = row.getInt("Mes");

    // Se declaran las clases con sus respestivos parametros.
    e[i] = new Entero(maxt, rocio, mint, precipitacion, i);
    m[i] = new Meses(mar, minh, maxh, dia, mes, i);
    d[i] = new Dias(meanh, vis, meanp, viento, dia, mes);
  }
} // Fin del área de seteo.

// Se inicializa área de dibujo.
void draw() {
  background(#4D4D4D);

  // Se escribe el texto que estará mostrándose siempre, que será la leyenda.
  pushMatrix();
  textSize(30);
  textFont(fuente);
  text("2015, Antananarivo, Madagascar", 10, 50);
  textFont(light);
  textSize(18);
  text("Z = 365 días", 10, 80);
  textFont(light);
  textSize(18);
  text("X = 12 Meses", 10, 100);
  textFont(light);
  textSize(18);
  text("C = Primer día de cada mes", 10, 120);
  popMatrix();

  // Se dibuja la función todos, con sus textos para la leyenda.
  if (todos_) {
    pushMatrix();
    textFont(negrita);
    textSize(25);
    text("365 días", 25, 730);
    textFont(light);
    textSize(18);
    text("Amarillo = Máxima punto de rocío", 25, 760);
    text("Morado = Máxima temperatura", 350, 760);
    text("Rosado = Mínima temperatura", 650, 760);
    text("Celeste = Máxima precipitación", 950, 760);
    translate(width/2, height/2);
    for (int i = 0; i < tabla.getRowCount(); i++) {
      e[i].todos();
    }
    popMatrix();
  } // Fin función todos.

  // Se dibuja la función anillos, con sus textos para la leyenda.
  if (anillos_) {
    pushMatrix();
    textFont(negrita);
    textSize(25);
    text("12 Meses", 25, 730);
    textFont(light);
    textSize(18);
    text("Amarillo = Mínima Humedad", 25, 760);
    text("Verde = Máxima Humedad", 300, 760);
    text("Morado = Nivel Medio del Mar", 550, 760);
    popMatrix();
    for (int i = 0; i < tabla.getRowCount(); i++) {
      m[i].anillos();
    }
  } // Fin función anillos.

  // Se dibuja la función primerosdias, con sus textos para la leyenda.
  if (primerosdias_) {
    textFont(negrita);
    textSize(25);
    text("Primer día cada mes", 25, 730);
    textFont(light);
    textSize(18);
    text("Verde = Promedio Humedad", 25, 760);
    text("Morado = Promedio Visibilidad", 300, 760);
    text("Rosado = Promedio Viento", 600, 760);
    text("Amarillo = Promedio Punto Rocío", 850, 760);
    pushMatrix();
    for (int i = 0; i < tabla.getRowCount(); i++) {
      d[i].primerosdias();
    }
    popMatrix();
  } // Fin función primeros días.
} // Fin área de dibujo.

// Se inicializa área de teclado.
void keyPressed() {
  if (key == 'z') {
    todos_ = !todos_;
  }
  if (key == 'x') {
    anillos_ = !anillos_;
  }
  if (key == 'c') {
    primerosdias_ = !primerosdias_;
  }
} // Fin área de teclado.

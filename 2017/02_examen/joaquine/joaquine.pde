/* Universidad del Desarrollo, Facultad de Diseño, Diseño Digital, 6to semestre,
 Expresión Digital II, Joaquín Domínguez Ratto.

 Al correr el programa se pueden observar diferentes visualizaciones de Hawai, EEUU. Las
 teclas "q","w","e","r" visualizan las distintas temperaturas a nivel anual de manera
 general y de manera independiente. La tecla "v" visualiza la dirección del viento de
 cada en relación al angulo que tengan. Finalmente la tecla "n" visualiza la nubosidad
 durante el mes de enero en la localización en cuestión.*/

Clase[] hawai;//Se crea la clase vinculada al programa principal.
PFont titulo, tituloG, cuerpo; /*se definen las tipografías, variables y se llama a la
 tabla.*/
Table tabla;
int mostrar;
void setup() {
  size(1280, 800);
  titulo = loadFont("Avenir-Medium-30.vlw");//Se definen las tipografías.
  tituloG = loadFont("Avenir-Medium-200.vlw");
  cuerpo = loadFont("Avenir-Medium-14.vlw");

  tabla = loadTable("Hawai.csv", "header");

  // Se inicializa el array con la cantidad de filas del archivo.
  int total = tabla.getRowCount();
  hawai = new Clase[total];

  for (int i = 0; i < tabla.getRowCount(); i++) { //Se inicializa la lectura de la tabla.
    TableRow row = tabla.getRow(i);

    int fecha = i;//se definen variables en relación a las columnas de la tabla
    int tmaxima = row.getInt("Max TemperatureC");
    int tminima = row.getInt("Min TemperatureC");
    int tmedia = row.getInt("Mean TemperatureC");
    int wind = row.getInt("WindDirDegrees");
    int nube = row.getInt("CloudCover");

    hawai[i] = new Clase(fecha, tmaxima, tminima, tmedia, i, wind, nube);/*Se vinculan
     las variables de la tabla con la clase.*/

    mostrar = 0; //Se define el estado inicial de la visualización.
  }
}
void draw() { /*Se dibuja el fondo y se escriben los textos que se encuentran estáticos
 durante el programa.*/

  background(0);
  fill(255);
  textFont(titulo);
  text("Hawai, 2015", 20, 50);
  textFont(cuerpo);
  text("Joaquín Domínguez Ratto", 20, 70);
  text("q = Temperaturas", 900, 20);
  text("w = Temperaturas máximas", 900, 35);
  text("e = Temperaturas medias", 900, 50);
  text("r = Temperaturas mínimas", 900, 65);
  text("v = Dirección del viento", 1100, 20);
  text("n = Nubosidad", 1100, 35);



  if (mostrar == 4) { //Se escriben los textos del estado número 4 de la visualización.
    fill(255);
    textFont(titulo);
    text("Nº", 50, 110);
    text("Sº", width/2 - 30, 110);
    text("Eº", 300, 110);
    text("Oº", 900, 110);
    text("Nº", width - 50, 110);
  }
  if (mostrar == 5) { //Se escriben los textos del estado número 5 de la visualización.
    blendMode(ADD);
    fill(200, 20);
    textFont(tituloG);
    text("Nubosidad", width/2 -490, 400);
    text("Enero", width/2-290, 600);
    blendMode(BLEND);
  }

  for (int i = 0; i < hawai.length; i ++) { /*Se define que funcion se va a mostrar en
   relación al estado de la variable "mostrar"*/

    if (mostrar == 0) {
      hawai[i].ano();
    }
    if (mostrar == 1) {
      hawai[i].maximano();
    }
    if (mostrar == 2) {
      hawai[i].mediano();
    }
    if (mostrar == 3) {
      hawai[i].minimano();
    }
    if (mostrar == 4) {
      hawai[i].vientito();
    }
    if (mostrar == 5) {
      hawai[i].visibilidad();
    }
  }
}
void keyPressed() { //Se definen que teclas mostrarán las distintas visualizaciones
  if (key == 'q') {
    mostrar = 0;
  }
  if (key == 'w') {
    mostrar = 1;
  }
  if (key == 'e') {
    mostrar = 2;
  }
  if (key == 'r') {
    mostrar = 3;
  }
  if (key == 'v') {
    mostrar = 4;
  }
  if (key == 'n') {
    mostrar = 5;
  }
}

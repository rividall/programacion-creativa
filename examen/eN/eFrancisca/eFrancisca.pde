//Universidad del Desarrollo - Facultad de Diseño - Francisca Urenda

Clase[] objetos;
Table tabla;
int index;
color h;
boolean diario, mensual, anual;
int i, d, m;
int indx1 = 0;
int indx2 = 31;
int indx3 = 1;
boolean humA;
boolean visA;
boolean windA;

/*
Primero se define en el void setup las variables que van a leer las columnas
 */


void setup() {
  size(1280, 700);
  tabla = loadTable("Iquitos.csv", "header");
  int total = tabla.getRowCount();
  objetos = new Clase[total];
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    int mes = row.getInt("M");
    String dia = row.getString("D");
    int maxTempA = row.getInt("Max TemperatureC"); // Temperatura máxima para año
    int minTempA = row.getInt("Min TemperatureC"); // Temperatura minima para año
    int maxTempM = row.getInt("Max TemperatureC"); // Temperatura máxima para mes
    int minTempM = row.getInt("Min TemperatureC"); // Temperatura minima para mes
    int maxTempD = row.getInt("Max TemperatureC"); // Temperatura máxima para dia
    int minTempD = row.getInt("Min TemperatureC"); // Temperatura minima para dia
    int maxHumA = row.getInt("Max Humidity"); // Humedad máxima para año
    int minHumA = row.getInt("Min Humidity"); // Humedad minima para año
    int maxHumM = row.getInt("Max Humidity"); // Humedad máxima para mes
    int minHumM = row.getInt("Min Humidity"); // Humedad minima para mes
    int maxVisA = row.getInt("Max VisibilityKm"); // Visibilidad máxima para año
    int minVisA = row.getInt("Min VisibilitykM"); // Visibilidad minima para año
    int maxVisM = row.getInt("Max VisibilityKm"); // Visibilidad máxima para mes
    int minVisM = row.getInt("Min VisibilitykM"); // Visibilidad minima para mes
    int maxWindA = row.getInt("Max Wind SpeedKm/h"); // Visibilidad máxima para año
    int meanWindA = row.getInt("Mean Wind SpeedKm/h"); // Visibilidad minima para año
    int maxWindM = row.getInt("Max Wind SpeedKm/h"); // Visibilidad máxima para mes
    int meanWindM = row.getInt("Mean Wind SpeedKm/h"); // Visibilidad minima para mes
    int maxWindD = row.getInt("Max Wind SpeedKm/h"); // Visibilidad máxima para dia
    int meanWindD = row.getInt("Mean Wind SpeedKm/h"); // Visibilidad minima para dia
    int event = row.getInt("Events"); // Eventos

    objetos[i] = new Clase(mes, dia, maxTempA, minTempA, maxTempM, minTempM, maxTempD, minTempD, maxHumA, minHumA, maxHumM, minHumM, maxVisM, minVisM, maxVisA, minVisA, maxWindA, meanWindA, maxWindM, meanWindM, maxWindD, meanWindD, event, i);
  }
  background(255);

  fill(0);
  textSize(20);
  text("1| Diario    2| Mensual    3| Anual ", width * .05, height * .1);
  textSize(70);
  text("Iquitos, Perú", 400, 350);
}

void draw() {

  if (diario) {
      // los nombres de las funciones deben ser representativos de lo que hacen
    objetos[index].funcion(index);
    objetos[index].fondo();
  }



  if (mensual) {
    background(0);
    int k = indx1;
    for (int i = (width/(indx2-indx1)); i<width; i+=width/(indx2-indx1)) {
      objetos[k].mensual(i);
      k++;
      if (k>indx2) k=indx1;
    }
  }

  if (indx3 == 1) {
    indx1 = 0;
    indx2 = 30;
  }

  if (indx3 == 2) {
    indx1 = 31;
    indx2 = 59;
  }

  if (indx3 == 3) {
    indx1 = 60;
    indx2 = 89;
  }

  if (indx3 == 4) {
    indx1 = 90;
    indx2 = 119;
  }

  if (indx3 == 5) {
    indx1 = 120;
    indx2 = 150;
  }

  if (indx3 == 6) {
    indx1 = 151;
    indx2 = 180;
  }

  if (indx3 == 7) {
    indx1 = 181;
    indx2 = 211;
  }

  if (indx3 == 8) {
    indx1 = 212;
    indx2 = 242;
  }

  if (indx3 == 9) {
    indx1 = 243;
    indx2 = 272;
  }

  if (indx3 == 10) {
    indx1 = 273;
    indx2 = 303;
  }

  if (indx3 == 11) {
    indx1 = 304;
    indx2 = 333;
  }

  if (indx3 == 12) {
    indx1 = 334;
    indx2 = 364;
  }


  for (int i=0; i<objetos.length; i++) {
    if (anual) {
      objetos[i].anual();
    }
  }
}


void keyPressed() {
  if (key == '1') {
    background(h);
    diario = true;
    mensual = false;
    anual = false;
  }
  if (key == '2') {
    background (0);
    diario = false;
    mensual = true;
    anual = false;
  }
  if (key == '3') {
    background (255);
    diario = false;
    mensual = false;
    anual = true;
  }
  if (keyCode == RIGHT) {
    if (index >= 364) { // Añadir navegacion hacia atras con tecla derecha (dia)
      index = 0;
    } else {
      index++;
      //println(index);
    }
  }
  if (keyCode == LEFT) {
    if (index < 1) { // Añadir navegacion hacia atras con tecla izquierda (dia)
      index = 364;
    } else {
      index--;
      //println(index);
    }
  }
  if (keyCode == UP) { // Añadir navegacion hacia atras con tecla arriba (mes)
    if (indx3 <= 1) {
      indx3 = 12;
    } else {
      indx3--;
    }
  }
  if (keyCode == DOWN) { // Añadir navegacion hacia atras con tecla abajo (mes)
    if (indx3 >= 12) {
      indx3 = 1;
    } else {
      indx3++;
    }
  }
}

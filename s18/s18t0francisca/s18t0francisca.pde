// Array de objetos
Clase[] objetos;
Table tabla;
int index;
color h;
boolean diario, mes, anual;

void setup() {
  size(1280, 800);
  tabla = loadTable("Iquitos.csv", "header");
  int total = tabla.getRowCount();
  objetos = new Clase[total];
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    String mes = row.getString("M");
    String dia = row.getString("D");
    int maxtemp = row.getInt("Max TemperatureC");
    int mintemp = row.getInt("Min TemperatureC");
    int event = row.getInt("Events");

    objetos[i] = new Clase(mes, dia, maxtemp, mintemp, event, i);
  }
  background(255);
}

void draw() {
  if (diario) {
    objetos[index].funcion(index);
    objetos[index].fondo();
  }
  
  //if (mes) objetos[index].mes();

  if (anual) objetos[index].anual();

}

void keyPressed() {
  if (key == '1') {
    background(h);
    diario = true;
    mes = false;
    anual = false;
  }
  if (key == '2') {
    background (255);
    diario = false;
    mes = true;
    anual = false;
  }
  if (key == '3') {
    background (255);
    diario = false;
    mes = false;
    anual = true;
  }
  if (keyCode == RIGHT) {
    if (index >= 364) { // añadir navegacion hacia atras c tecla izq
      index = 0;
    } else {
      index++;
      println(index);
    }

    if (keyCode == LEFT) {
      if (index < 1) { // añadir navegacion hacia atras c tecla izq
        index = 364;
      } else {
        index--;
        println(index);
      }
    }
  }
}
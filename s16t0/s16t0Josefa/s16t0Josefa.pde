Clase[]objetos;
Table tabla;
int index;

void setup() {
  size(1000, 600);
  tabla = loadTable("BDD Examen Def.csv", "header");

  int total = tabla.getRowCount();
  objetos = new Clase[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String mes = row.getString(" M");
    String dia = row.getString("D");
    int maxTemp = row.getInt("maxTemp");
    int minTemp = row.getInt("minTemp");

    objetos[i] = new Clase(mes, dia, maxTemp, minTemp);
  }
}

void draw() {

  background(255);
  // println(index);
  // objetos[index].funcion();
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].funcion();
  }
}

void Tabla() {

}

void mousePressed() {
  if (index > 366) {
    index = 0;
  } else if (index < 366) {
    index++;
  }
}

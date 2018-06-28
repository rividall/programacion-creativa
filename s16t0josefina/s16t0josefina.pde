Clase[]objetos;
Table tabla;
int index;

void setup() {
  size(400, 400);
  tabla = loadTable("Seefeld_Austria_E.csv", "header");

  int total = tabla.getRowCount();
  objetos = new Clase[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String mes = row.getString ("M");
    String dia = row.getString ("D");
    float tmaxima = row.getInt ("Max TemperatureC");
    float tminima = row.getInt ("Min TemperatureC");
    float maxHum = row.getInt ("Max Humidity");
    float minHum = row.getInt ("Min Humidity");
    float maxWind = row.getInt ("Max Wind SpeedKm/h");
    float precip = row.getInt ("Precipitationmm");
    int clCover = row.getInt ("CloudCover");
    int events = row.getInt ("Events");

    objetos[i] = new Clase(mes, dia, tmaxima, tminima, maxHum, minHum, maxWind, precip, clCover, events);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < objetos.length; i ++) {
    objetos[index].funcion();
  }

}

void keyPressed() {
  if (index > 182) {
    index = 0;
  } else if (index < 182) {
    index++;
  }
}

/*
nombre descripción y uso del programa
*/

Clase[] objetos;
Table tabla;
int index;
color h;
boolean diario, mensual, anual;
int i, d, m;

void setup() {
    size(1280, 700);
    background(255);
    tabla = loadTable("Iquitos.csv", "header");
    int total = tabla.getRowCount();
    objetos = new Clase[total];
    for (int i = 0; i < tabla.getRowCount(); i++) {
        TableRow row = tabla.getRow(i);
        int mes = row.getInt("M");
        String dia = row.getString("D");
        int maxTemp = row.getInt("Max TemperatureC");
        int minTemp = row.getInt("Min TemperatureC");
        int maxHum = row.getInt("Max Humidity");
        int minHum = row.getInt("Min Humidity");
        int event = row.getInt("Events");

        objetos[i] = new Clase(mes, dia, maxTemp, minTemp, maxHum, minHum, event, i);
    }
}

void draw() {
    for (int i = 0; i < objetos.length; i++) {
        if (anual) {
            objetos[i].anual();
        }
    }
}

void keyPressed() {

    if (key == ' ') {
        background(255);
        anual = true;
    }
}

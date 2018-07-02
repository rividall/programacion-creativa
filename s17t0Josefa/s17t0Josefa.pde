/*
Josefa Méndez Gómez
 Examen programación Creativa
*/

Table tabla; 
Clase [] objetos;
int ver; // Variable para cambiar las pantallas
float vel;
// Creación de variables booleanas para interacción
boolean fa; // Fechas anuales 
boolean ta = true; // Temperatura anual
boolean vva; // Velocidad del viento
boolean huma; // Humedad anual
boolean roca;

PFont txt;
void setup() {
  size(1280, 700); // Tamaño del canvas
  ver = 0;
  
  txt = createFont("HelveticaNeue-Light ", 20);

  BDD(); // Agrego la funcion de cargar los datos al setup
}

void draw() {
  background(0, 0, 25);

  for (int index = 0; index < objetos.length; index++) {
    //objetos[index].display();

    if (ver == 0) {
      objetos[index].anoInfo();
    }

    if (ver == 1) {
      objetos[index].anoEspecificoInfo();
    }

    if (ver == 2) {
      objetos[index].mesInfo();
    }
  }
}

void BDD() {

  tabla = loadTable("BDD Examen Def.csv", "header"); // Cargo la tabla a processing
  objetos = new Clase [tabla.getRowCount()]; // Cargo las filas de la tabla

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    // Declarotodas las variables de mi tabla de les entrego un nombte
    int index = i;

    int mes = row.getInt(" M");
    int dia = row.getInt("D");  
    int maxTemp = row.getInt("maxTemp");
    int minTemp = row.getInt("minTemp");
    int maxRo = row.getInt("maxRocio");
    int minRo = row.getInt("minRocio");
    int hum = row.getInt("Humedad");
    int velVie = row.getInt("velViento");
    int dirVie = row.getInt("dirViento");

    objetos[index] = new Clase(index, maxTemp, minTemp, velVie, hum, maxRo, minRo);
  }
}

void keyPressed() {

  if (key == 't') {
    ta = !ta;
  }

  if (key == 'v') {
    vva = !vva;
  }

  if (key == 'h') {
    huma = !huma;
  }

  if (key == 'r') {
    roca = !roca;
  }

  if (key == 'f') {
    fa = !fa;
  }

  if (key == '1') {
    ver = 0;
  }

  if (key == '2') {
    ver = 1;
  }

  if (key == '3') {
    ver = 2;
    
    if (key == '1') {
      
    }
  }
}
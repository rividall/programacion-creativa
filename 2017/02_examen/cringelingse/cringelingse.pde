// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital6to Semestre - Expresión Digital II
// Catalina Ringeling Selman
// cringelings

/*
En un Canvas del tamaño de la pantalla con background gris oscuro (40) se visualizará
 una representación general del rocío en Miami y 4 más específicas del rocío de esta misma
 ciudad por cada estación del año.
 */
/*
Al procesar el programa se podrá ver la representación general es un arco de color azul
 y visualizará la media de rocío de todo el año 2015 en Miami. En los siguientes diseños,
 que se muestran, justo debajo de la visualización general, se mostrarán cuatro arcos
 diferentes de color verde, verde azulino, morado y naranjo y representan la máxima y
 la mínima de rocío por estación del año en la misma ciudad. A estos 5 diseños se le
 agrega movimiento.

 Al mover el mouse por Y hacia la mitad de abajo, se visualizarán la mínima y la máxima
 de cada una de las estaciones.
 */

//Se llama a la clase.
Rocio[] rocio;

// Se crea la variable tabla.
Table tabla;


void setup () {          // Se carga a la base de datos a utilizar y se obtiene un
  // conteo de filas.
  fullScreen();          // Tamaño del Canvas del tamaño de la pantalla.

  tabla = loadTable("baseDatos.csv", "header");    // Se carga la base de datos y se le
  // indica que existe una "header" que
  // es sólo texto, la primera línea.
  rocio = new Rocio[tabla.getRowCount()];          // Se crea el Class Rocio y se obtiene
  // conteo de filas.
  for (int i = 0; i < tabla.getRowCount(); i++) {  // Se puede pasar por cada fila.
    // del archivo descargado
    TableRow row = tabla.getRow(i);

    // Se declaran las variables a utilizar en el Class.
    String a = row.getString("year");
    String d = row.getString("dia");
    int m = row.getInt("mes");
    int maxima = row.getInt("Max PuntoRocio");
    int mean = row.getInt("Mean PuntoRocio");
    int minima = row.getInt("Min PuntoRocio");
    rocio[i] = new Rocio(a, d, m, maxima, mean, minima);
  }
}

// Se definen las funciones a utilizar en el Class.
void draw() {
  background(40);
  for (int i = 0; i < rocio.length; i ++) {   // Se crea una longuitud de datos para
    // usar como función en el Class.
    // Funciones para Título y dato promedio de rocío durante año.
    // rocio[i].textoTitulo();
    // rocio[i].yeartext();
    rocio[i].allyear();
    // Funciones para datos máximo y mínimo de rocío durante el verano.
    // rocio[i].veranotext();
    rocio[i].verano();
    // Funciones para datos máximo y mínimo de rocío durante el otoño.
    // rocio[i].otonotext();
    rocio[i].otono();
    // Funciones para datos máximo y mínimo de rocío durante el invierno
    // rocio[i].inviernotext();
    rocio[i].invierno();
    // Funciones para datos máximo y mínimo de rocío durante el verano.
    // rocio[i].primaveratext();
    rocio[i].primavera();
  }

  /*
  Al mover el mouse desde menos de la mitad de Y hacia abajo se dibujan las siguientes
   funciones.
   */
  if (mouseY >= height/1.8) {
    background(40);

    for (int i = 0; i < rocio.length; i ++) {
      rocio[i].verano1();
      // rocio[i].veranotext1();
      rocio[i].otono1();
      // rocio[i].otonotext1();
      rocio[i].invierno1();
      // rocio[i].inviernotext1();
      rocio[i].primavera1();
      // rocio[i].primaveratext1();
    }
  }
}

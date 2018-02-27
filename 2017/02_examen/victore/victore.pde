/* Universidad del Desarrollo - Facultad de Diseño - Diseño Digital -
 Expresión Digital II - Examen 1 - 6.12.2017 - Victor Sartori H.

 Este programa visualizará una base de datos de Valdivia, Chile.
 Por medio de dos diferentes formas de representar la información, de manera
 anual y mensual. Por medio del teclado ('1' y '2') se podrán intercalar
 entre ambas y a si mismo cambiar de mes a mes con 'UP' y 'DOWN'.
 Se visualizará de forma circular, en primera instancia los 365 días del
 2015, destacando los cambios de oscilacion térmica y en las segundas
 instancias destacando los cambios de humedad y precipitación. */

// Clases
Ano[]  a;
Mes[]  m;
// Declarar
Table tabla;
int datos, bleep = 1;
PFont orator;


void setup() {
  size(1000, 1000);
  // Cargar base de datos
  tabla = loadTable("Valdivia_Chile.csv", "header");
  //Inicializar el array con la misma cantidad de filas de la base de datos.
  a = new Ano[tabla.getRowCount()];
  m = new Mes[tabla.getRowCount()];

  // Crear un contador


  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow datos = tabla.getRow(i);

    int fecha = i+1;
    int A = datos.getInt("A");
    int M = datos.getInt("M");
    int D = datos.getInt("D");
    int t_max = datos.getInt("Max TemperatureC");
    int t_mean = datos.getInt("Mean TemperatureC");
    int t_min = datos.getInt("Min TemperatureC");
    int v_mean = datos.getInt(" Mean Wind Speed");
    int p_mm = datos.getInt("Precipitationmm");
    int cc = datos.getInt(" CloudCover");
    String ev = datos.getString(" Events");
    int hu_max = datos.getInt("Max Humidity");
    int hu_mean = datos.getInt(" Mean Humidity");
    int hu_min = datos.getInt(" Min Humidity");
    int vis_max = datos.getInt(" Max VisibilityKm");

    a[i] = new Ano(A, M, D, fecha, t_max, t_mean, t_min, v_mean, p_mm, cc, ev);
    m[i] = new Mes(A, M, D, fecha, t_max, t_mean, t_min, v_mean, p_mm, cc, ev, hu_max, hu_mean, hu_min, vis_max);
  }
}

void draw() {
  // Llamar la fuente a usar.
  orator = createFont("Orator.ttf", 32);
  textFont(orator);

  background(229, 224, 195);

  // Crear leyenda superior.
  stroke(0);
  fill(0);
  textSize(26);
  text("Valdivia, Chile, 2015", 10, 30);
  textSize(14);
  text("1 = Visualización Anual", 10, 50);
  text("2 = Visualización Mensual, Cambiar de Mes con UP y DOWN", 10, 70);

  // Crear leyenda inferior anual.
  if (key== '1') {

    stroke(#aaaaaa);
    line(height -220, width -185, height - 195, width -185);
    text("Oscilacion Termica", height - 170, width - 180);

    noStroke();
    fill(#ff9739);
    ellipse(height -205, width -165, 10, 10);
    fill(#161a1a);
    text("Temperatura Máxima", height - 170, width - 160);

    noStroke();
    fill(#4dc0bf);
    ellipse(height -205, width -145, 10, 10);
    fill(#161a1a);
    text("Temperatura Mínima", height - 170, width - 140);

    noStroke();

    fill(#161a1a);
    text("Diametro: Cloud Cover", height - 210, width - 120);

    noStroke();
    fill(#aaaaaa);
    ellipse(height -205, width -105, 10, 10);
    fill(#161a1a);
    text("Precipitación", height - 170, width - 100);

    textSize(26);
    text("2015", height/2-30, width/2);
  }



  // Crear leyenda inferior mensual.
  if (key=='2' || keyCode == UP || keyCode == DOWN) {

    strokeWeight(5);
    stroke(#4dc0bf);
    line(height -220, width -205, height - 195, width -205);
    text("Precipitación", height - 170, width - 200);

    stroke(#aaaaaa);
    line(height -220, width -185, height - 195, width -185);
    text("Humedad Máxima", height - 170, width - 180);

    noStroke();
    fill(#ff9739);
    ellipse(height -205, width -165, 10, 10);
    fill(#161a1a);
    text("Temperatura Máxima", height - 170, width - 160);

    noStroke();
    fill(#aaaaaa);
    ellipse(height -205, width -145, 10, 10);
    fill(#161a1a);
    text("Temperatura Mínima", height - 170, width - 140);

    noStroke();
    fill(#161a1a);
    ellipse(height -205, width -125, 10, 10);
    fill(#161a1a);
    text("Velocidad Viento", height - 170, width - 120);

    noStroke();
    fill(#99DBD7);
    ellipse(height -205, width -105, 10, 10);
    fill(#161a1a);
    text("Humedad Media", height - 170, width - 100);
  }

  fill(#161a1a);
  translate(height/2, width/2);

  rotate(radians(270)); // rotación para que el inicio quede "a las 12".

  for (int i = 0; i < tabla.getRowCount(); i++) {
    // visualización anual
    a[i].ano();
  }
  rotate(radians(310)); // rotación para que el inicio quede "a las 12".
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // visualización mensual
    if (key=='2' || keyCode == UP || keyCode == DOWN) {

      m[i].mes(bleep);
      m[i].meses();
    }
  }
  // Restricción para que de diciembre se pase a enero.
  if (bleep>12) {
    bleep=1;
  }
  if (bleep<1) {
    bleep=12;
  }
}
void keyPressed() {
  // Condicionales para cambiar de mes en visualización mensual.
  if (keyCode == UP) {
    bleep++;
  }
  if (keyCode == DOWN) {
    bleep--;
  }
}

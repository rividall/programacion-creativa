// Expresión Digital II - Diseño Digital UDD - 2017
// Javiera Ramírez
// javieraRe

/* Cuando corra el programa se verá una visualización de datos del clima de la
ciudad de Dakar del año 2015. En la pantalla inicial se ven graficadas las
mayores temperaturas, representadas con líneas rosadas que van hacia afuera del
círculo, y las menores temperaturas, representadas por líneas celestes en el
centro del círculo. Cada par de líneas que estén en la misma posición representan
un día del año. Los círculos representan la lluvia del año y el tamaño representa
su cantidad. En una segunda pantalla, a al acual se puede acceder por la tecla
'z', se ve esta información pero de manera linea y distribuída de tal manera que
representa* los dos semestres del año.
En una tercera pantalla, a la cual se accede por la tecla 's', hay una visualización
del mismo estilo que la primera, pero que representa la humedad, siendo las
líneas amarillas la mayor cantidad de humedad y las celestes la menor cantidad.
También vemos representados eventos como lluvia y tormenta eléctrica con círculos
con relleno y sin relleno respectivamente. Por medio de la tecla 'x' podemos
accedes a la visualización semestral de los últimos datos explicados. Para volver
a la primera visualización, apretar la tecla 'a'*/


// colores temperatura
color fondo = color(71, 98, 105); // azul oscuro
color cel = color(64, 167, 152); // celeste
color ros = color(245, 225, 218); // rosado
color gr = color(241, 241, 241); // gris claro

// colores humedad
color fondo2 = color(45, 70, 89); // azul oscuro
color ve = color(129, 225, 218); // verde
color am = color(253, 251, 218); // amarillo


Javi [] j;
Table tabla;

PFont fuente;

int vista;

void setup() {
  fullScreen();
  noCursor();
// se crea la tipografía del texto a utilizar
  fuente = createFont("Courier New", 16);
// se carga la tabla
  tabla = loadTable("dakar.csv", "header");

  j = new Javi[tabla.getRowCount()];
// se lee la tabla
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow data = tabla.getRow(i);

    int val = i;

    // fecha
    String fecha = data.getString("GMT");

    // temperatura
    int tmax = data.getInt("Max TemperatureC");
    int tmin = data.getInt("Min TemperatureC");

    // humedad
    int hmax = data.getInt("Max Humidity");
    int hmin = data.getInt("Min Humidity");

    // lluvia
    int lluvia = data.getInt("Precipitationmm");

    // eventos
    int evento = data.getInt("Events");


    j[i] = new Javi(val, tmax, tmin, hmax, hmin, lluvia, evento, fecha);
  }
  vista = 1;
}

void draw() {
  background(fondo);

  textFont(fuente);
  fill(gr);
  text("DAKAR_SENEGAL, 2015", 30, 40);
  text("Leyenda:", 30, 60);
  text("Temperatura anual, tecla 'a'", 30, 80);
  text("Temperatura semestral, tecla 'z'", 30, 100);
  text("Humedad anual, tecla 's'", 30, 120);
  text("Humedad semestral, tecla 'x'", 30, 140);

// simbologías
  if (vista == 1) {
    textFont(fuente);
    fill(gr);
    text("TEMPERATURA ANUAL", width * 3/4, 40);
    text("Temperatura máxima", width * 3/4, 60);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(ros);
    line((width * 3/4) - 20, 60, (width * 3/4) - 10, 60);
    text("temperatura mínima", width * 3/4, 80);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(cel);
    line((width * 3/4) - 20, 80, (width * 3/4) - 10, 80);
    text("Cantidad de lluvia", width * 3/4, 100);
    noStroke();
    fill(gr);
    ellipse((width * 3/4) - 15, 100, 10, 10);
  }

  if (vista == 2) {
    textFont(fuente);
    fill(gr);
    text("NIVELES DE HUMEDAD ANUAL", width * 3/4, 40);
    text("Humedad máxima", width * 3/4, 60);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(am);
    line((width * 3/4) - 20, 60, (width * 3/4) - 10, 60);
    text("Humedad mínima", width * 3/4, 80);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(ve);
    line((width * 3/4) - 20, 80, (width * 3/4) - 10, 80);
    text("Lluvia", width * 3/4, 100);
    noStroke();
    fill(gr);
    ellipse((width * 3/4) - 15, 100, 10, 10);
    text("Tormenta eléctrica", width * 3/4, 120);
    stroke(gr);
    strokeWeight(1.5);
    noFill();
    ellipse((width * 3/4) - 15, 120, 10, 10);
  }

  if (vista == 3) {
    textFont(fuente);
    fill(gr);
    text("TEMPERATURA SEMESTRAL", width * 3/4, 40);
    text("Temperatura máxima", width * 3/4, 60);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(ros);
    line((width * 3/4) - 20, 60, (width * 3/4) - 10, 60);
    text("temperatura mínima", width * 3/4, 80);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(cel);
    line((width * 3/4) - 20, 80, (width * 3/4) - 10, 80);
    text("Cantidad de lluvia", width * 3/4, 100);
    noStroke();
    fill(gr);
    ellipse((width * 3/4) - 15, 100, 10, 10);
  }

  if (vista == 4) {
    textFont(fuente);
    fill(gr);
    text("NIVELES DE HUMEDAD SEMESTRALES", width * 3/4, 40);
    text("Humedad máxima", width * 3/4, 60);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(am);
    line((width * 3/4) - 20, 60, (width * 3/4) - 10, 60);
    text("Humedad mínima", width * 3/4, 80);
    strokeWeight(2);
    strokeCap(ROUND);
    stroke(ve);
    line((width * 3/4) - 20, 80, (width * 3/4) - 10, 80);
    text("Lluvia", width * 3/4, 100);
    noStroke();
    fill(gr);
    ellipse((width * 3/4) - 15, 100, 10, 10);
    text("Tormenta eléctrica", width * 3/4, 120);
    stroke(gr);
    strokeWeight(1.5);
    noFill();
    ellipse((width * 3/4) - 15, 120, 10, 10);
  }

// se llaman los métodos de la clase
  for (int i = 0; i < j.length; i++) {

    if (vista == 1) {
      j[i].tano();
    }

    if (vista == 2) {
      j[i].hano();
    }

    if (vista == 3) {
      j[i].tsem();
    }

    if (vista == 4) {
      j[i].hsem();
    }
  }
}

void keyPressed() {
  if (key == 'a') {
    vista = 1;
  }
  if (key == 's') {
    vista = 2;
  }
  if (key == 'z') {
    vista = 3;
  }
  if (key == 'x') {
    vista = 4;
  }
}

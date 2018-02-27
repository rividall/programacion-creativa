// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// Examen
/* Tres visualizaciones del clima de la ciudad La Rochelle, France durente el año 2015
que van de lo general a lo específico. La primera visualización es de la humedad durante
todo el año (tecla z). La segunda es de la temperatura en las estaciones, invierno
(tecla a), primavera (tecla s), verano (tecla d) y otoño (tecla f). Y la última es una
comparación entre el punto de rocio y la visibilidad durante cada mes de ese año
(tecla de la q a la p y la ñ y l)*/

France[] f; //declaración clase de las estaciones
France2[] f2; //declaración clase de los meses
France3[] f3; //declaración clase del año

Table tabla; //declaración de la tabla de la base de datos
boolean a, v, in, o, p; //declaración booleans de las estaciones y el año
boolean en, feb, mar, ab, may, jun, jul, ag, sep, oct, nov, dic ;//declaración booleans de los meses

void setup() {// inicio ámbito de configuración
  size(600, 600); // tamaño del Canvas de 600 px por 600 px

  a = true; // iniciación boolean a (año) es verdadera

  in = false; // iniciación boolean in (invierno) es falsa
  v = false; // iniciación boolean v (verano) es falsa
  o = false; // iniciación boolean o (otoño) es falsa
  p = false; // iniciación boolean p (primavera) es falsa

  en = false; // iniciación boolean en (enero) es falsa
  feb = false; // iniciación boolean feb (febrero) es falsa
  mar = false; // iniciación boolean mar (marzo) es falsa
  ab = false; // iniciación boolean ab (abril) es falsa
  may = false; // iniciación boolean may (mayo) es falsa
  jun = false; // iniciación boolean jun (junio) es falsa
  jul = false; // iniciación boolean jul (julio) es falsa
  ag = false; // iniciación boolean ag (agosto) es falsa
  sep = false; // iniciación boolean sep (septiembre) es falsa
  oct = false; // iniciación boolean oct (octubre) es falsa
  nov = false; // iniciación boolean nov (noviembre) es falsa
  dic = false; // iniciación boolean dic (diciembre) es falsa

  tabla= loadTable("La_Rochelle_France.csv", "header"); // iniciación tabla base de datos La Rochelle, France

  f = new France[tabla.getRowCount()]; // iniciación conteo base de datos para la clase france
  f2 = new France2[tabla.getRowCount()]; // iniciación conteo base de datos para la clase france2
  f3 = new France3[tabla.getRowCount()]; // iniciación conteo base de datos para la clase france3

  for (int i = 0; i < tabla.getRowCount(); i++) { // for de las clases

    TableRow row = tabla.getRow(i); //declaración tabla

    int max = row.getInt("Max TemperatureC"); //declaración dato
    int min = row.getInt("Min TemperatureC"); //declaración dato
    float rocio = row.getInt("Dew PointC"); //declaración dato
    float meanVisi = row.getInt("Mean VisibilityKm"); //declaración dato
    float maxHum = row.getInt("Max Humidity"); //declaración dato
    float minHum = row.getInt("Mean Humidity"); //declaración dato

    f[i] = new France(i, max, min); //iniciación clase de las estaciones
    f2[i] = new France2(rocio, meanVisi, i); //iniciación clase de los meses
    f3[i] = new France3(maxHum, minHum, i); //iniciación clase del año
  }
}// fin ámbito de configuración

void draw() { // inicio ámbito de dibujo
  //estela
  noStroke();
  fill(255, 10);
  rect(0, 0, 600, 600);

  for (int i = 0; i < f.length; i ++) { // for para el título
    f3[1].titulo(); // función clase France3
  }
  // Visualizacion del año
  if (a) { // if boolean del año, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) {  // for de las clases
      f3[0].leyenda(); // función clase France3
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f3[i].ao(); // función clase France3
    }
    popMatrix();
  }
  if (!a) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 600, 600);
  }


  // boolean estación invierno
  if (in) { // if boolean de invierno, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f[1].leyenda(); // función clase France
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 1 && i <= 92) { //if para separar los datos de la tabla en las estaciones
        f[i].invierno(); // función clase France
      }
    }
    popMatrix();
  }
  if (!in) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 600, 600);
  }

  // boolean estación primavera
  if (p) { // if boolean de primavera, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f[1].leyenda(); // función clase France
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 93 && i <= 182) { //if para separar los datos de la tabla en las estaciones
        f[i].primavera(); // función clase France
      }
    }
    popMatrix();
  }
  if (!p) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  // boolean estación verano
  if (v) { // if boolean de verano, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f[1].leyenda(); // función clase France
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 183 && i <= 274) { //if para separar los datos de la tabla en las estaciones
        f[i].verano(); // función clase France
      }
    }
    popMatrix();
  }
  if (!v) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  // boolean estación otoño
  if (o) { // if boolean de otoño, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f[1].leyenda(); // función clase France
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 275 && i <= 366) { //if para separar los datos de la tabla en las estaciones
        f[i].otono(); // función clase France
      }
    }
    popMatrix();
  }
  if (!o) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  // meses invierno
  if (en) { // if boolean enero, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[0].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 1 && i <= 31) { //if para separar los datos de la tabla en los meses
        f2[i].enero(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!en) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (feb) { // if boolean febrero, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[32].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 32 && i <= 59) { //if para separar los datos de la tabla en los meses
        f2[i].febrero(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!feb) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  if (mar) { // if boolean marzo, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[60].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 60 && i <= 90) { //if para separar los datos de la tabla en los meses
        f2[i].marzo(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!mar) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  // meses primavera
  if (ab) { // if boolean abril, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[91].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 91 && i <= 120) { //if para separar los datos de la tabla en los meses
        f2[i].abril(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!ab) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (may) { // if boolean mayo, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[121].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 121 && i <= 151) { //if para separar los datos de la tabla en los meses
        f2[i].mayo(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!may) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (jun) { // if boolean junio, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[152].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 152 && i <= 182) { //if para separar los datos de la tabla en los meses
        f2[i].junio(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!jun) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  // meses verano
  if (jul) { // if boolean julio, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[183].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 183 && i <= 213) { //if para separar los datos de la tabla en los meses
        f2[i].julio(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!jul) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (ag) { // if boolean agosto, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[214].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 214 && i <= 244) { //if para separar los datos de la tabla en los meses
        f2[i].agosto(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!ag) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (sep) { // if boolean septiembre, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[245].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 245 && i <= 274) { //if para separar los datos de la tabla en los meses
        f2[i].septiembre(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!sep) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }

  // meses otoño
  if (oct) { // if boolean octubre, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[275].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 275 && i <= 305) { //if para separar los datos de la tabla en los meses
        f2[i].octubre(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!oct) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (nov) { // if boolean noviembre, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[306].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 306 && i <= 335) { //if para separar los datos de la tabla en los meses
        f2[i].noviembre(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!nov) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
  if (dic) { // if boolean diciembre, si a pasa se ven las funciones
    for (int i = 0; i < f.length; i ++) { // for de las clases
      f2[336].leyenda(); // función clase France2
    }
    pushMatrix();
    translate(height/2, width/2); // nuevo 0, 0
    for (int i = 0; i < f.length; i ++) { // for de las clases
      if (i >= 336 && i <= 366) { //if para separar los datos de la tabla en los meses
        f2[i].diciembre(); // función clase France2
      }
    }
    popMatrix();
  }
  if (!dic) { //si no pasa se ve la estela
    //estela
    noStroke();
    fill(255, 5);
    rect(0, 0, 600, 600);
  }
}// fin ámbito de dibujo



void keyPressed() { // inicio ámbito de teclas
  if (key == 'z') { // si la tecla z se apreta el boolean del año cambia a su negativo, y todos los otros booleans son falsos
    a = (!a);

    p = false;
    v = false;
    o = false;
    in = false;

    en = false;
    feb = false;
    mar = false;
    ab = false;
    may = false;
    jun = false;
    jul = false;
    ag = false;
    sep = false;
    oct = false;
    nov = false;
    dic = false;
  }
  if (key == 'a') { // si la tecla a se apreta el boolean de invierno cambia a su negativo, y los otros booleans del año y los meses son falsos
    in = (!in);

    a = false;

    en = false;
    feb = false;
    mar = false;
    ab = false;
    may = false;
    jun = false;
    jul = false;
    ag = false;
    sep = false;
    oct = false;
    nov = false;
    dic = false;
  }
  if (key == 's') { // si la tecla d se apreta el boolean de primavera cambia a su negativo, y los otros booleans del año y los meses son falsos
    p = (!p);

    a = false;

    en = false;
    feb = false;
    mar = false;
    ab = false;
    may = false;
    jun = false;
    jul = false;
    ag = false;
    sep = false;
    oct = false;
    nov = false;
    dic = false;
  }
  if (key == 'd') { // si la tecla a se apreta el boolean de verano cambia a su negativo, y los otros booleans del año y los meses son falsos
    v = (!v);

    a = false;

    en = false;
    feb = false;
    mar = false;
    ab = false;
    may = false;
    jun = false;
    jul = false;
    ag = false;
    sep = false;
    oct = false;
    nov = false;
    dic = false;
  }
  if (key == 'f') { // si la tecla a se apreta el boolean de otoño cambia a su negativo, y los otros booleans del año y los meses son falsos
    o = (!o);

    a = false;

    en = false;
    feb = false;
    mar = false;
    ab = false;
    may = false;
    jun = false;
    jul = false;
    ag = false;
    sep = false;
    oct = false;
    nov = false;
    dic = false;
  }
  if (key == 'q') { // si la tecla q se apreta el boolean de enero cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    en = (!en);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'w') { // si la tecla w se apreta el boolean de febrero cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    feb = (!feb);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'e') { // si la tecla e se apreta el boolean de marzo cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    mar = (!mar);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'r') { // si la tecla r se apreta el boolean de abril cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    ab = (!ab);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 't') { // si la tecla t se apreta el boolean de mayo cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    may = (!may);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'y') { // si la tecla y se apreta el boolean de junio cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    jun = (!jun);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'u') { // si la tecla u se apreta el boolean de julio cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    jul = (!jul);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'i') { // si la tecla i se apreta el boolean de agosto cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    ag = (!ag);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'o') { // si la tecla o se apreta el boolean de spetiembre cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    sep = (!sep);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'p') { // si la tecla p se apreta el boolean de octubre cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    oct = (!oct);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'ñ') { // si la tecla ñ se apreta el boolean de noviembre cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    nov = (!nov);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
  if (key == 'l') { // si la tecla l se apreta el boolean de diciembre cambia a su negativo, y los otros booleans del año y las estaciones son falsos
    dic = (!dic);

    a = false;
    p = false;
    v = false;
    o = false;
    in = false;
  }
}// fin ámbito de teclas

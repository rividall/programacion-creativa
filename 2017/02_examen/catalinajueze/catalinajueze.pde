// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre - Expresión Digital II
//Catalina Juez
/*
Al correr el programa tenemos diferentes visualizaciones de la la ciudad de Jakarta en Indonesia. Si aprietas el
botón 1, 2 o 3 podrás ver visualizaciones que muestran la temperatura, humedad y viento durante un año en una grilla
redonda ( esta última también puedes editar el eje donde giran los objetos con la tecla R o T). Y si apretas  4, 5 o 6
también puedes ver los datos obtenidos durante un año pero no en esta grilla circular. Con los botones 7, 8, 9 también
verás las visualizaciones de la temperatura, humedad y viento, pero en relación a su semestre, además con los botones
0, Q, y W podrás ver los mismos datos pero en relación a los meses.

En cada visualización se muestra que simboliza cada elemento, además que en el caso de los visualizaciones 1, 2 y 3
existe una breve explicación escrita sobre ellas.
*/

Clase[] objetos; // class
Clase2[] objeto2;

Table tabla;
int d; // variable para el void dias
int a, b; // declaración variables para manipular el void objeto2[i].VIENTO(a) y el void objeto2[i].VIENTO2(b);

PFont texto;

void setup() {
  size(850, 850, P3D); // tamaño canvas

  a = 50;
  b = 50;
  d = 30;
  tabla = loadTable("Jakarta_Indonesia.csv", "header"); // Llamamos a nuestra tabla de datos

  objetos = new Clase[tabla.getRowCount()];
  objeto2 = new Clase2[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    int index = i;

    TableRow row = tabla.getRow(i);

    int maxima = row.getInt("Max TemperatureC");
    int media = row.getInt("Mean TemperatureC");
    int minima = row.getInt("Min TemperatureC");

    int maxH = row.getInt("Max Humidity");
    int meanH = row.getInt(" Mean Humidity");
    int minH = row.getInt(" Min Humidity");

    float maxV = row.getFloat(" Max Wind SpeedKm/h");
    float meanV = row.getFloat(" Mean Wind SpeedKm/h");

    objetos[i] = new Clase(maxH, maxima, media, minima, meanH, index, minH, maxV, meanV);
    objeto2[i] = new Clase2(maxH, maxima, media, minima, meanH, index, minH, maxV, meanV);
  }
}


void draw() {
  background(255);
  titulo();
  teclas();

  // if para llamar al texto
  if (key =='1') {
    translate(width/2, height/2);
    ecirculo1();
  }
  if (key =='2') {
    translate(width/2, height/2);
    ecirculo2();
  }
  if (key =='3') {
    translate(width/2, height/2);
    tcirculo();
    ecirculo3();
  }
  if (key =='4') {
    eTemperatura();
  }
  if (key =='5') {
    eHumedad();
  }
  if (key =='6') {
    eViento();
  }
  if (key =='7') {
    eTemperatura();
  }
  if (key =='8') {
    eHumedad();
  }
  if (key =='9') {
    eViento();
  }
  if (key =='0') {
    eTemperatura();
  }
  if (key =='q') {
    eHumedad();
  }
  if (key =='w') {
    eViento();
  }
  if (key =='r') {
    translate(width/2, height/2);
    tcirculo();
    ecirculo3();
  }
  if (key =='t') {
    translate(width/2, height/2);
    tcirculo();
    ecirculo3();
  }


  for (int i = 0; i < tabla.getRowCount(); i ++) {

    // if para llamar los void de los class
    if (key =='1') {
      objeto2[i].TEMPERATURA2();
    }
    if (key =='2') {
      //
      objeto2[i].HUMEDAD2();
    }
    if (key == '3') {
      objeto2[i].VIENTO(a);
      objeto2[i].MOVER();
      objeto2[i].VIENTO2(b);
      objeto2[i].MOVER2();

      objeto2[i].movimiento();
      objeto2[i].movimiento2();
    }
    if (key == '4') {
      d = 30; // año
      objetos[i].dias(d);
      objetos[i].TEMPERATURA();
    }
    if (key == '5') {
      d = 30; // año
      objetos[i].dias(d);
      objetos[i].HUMEDAD();
    }
    if (key == '6') {
      d = 30; //año
      objetos[i].dias(d);
      objetos[i].VIENTO();
      objetos[i].MOVER();
      objetos[i].VIENTO2();
      objetos[i].MOVER2();

      objetos[i].movimiento();
      objetos[i].movimiento2();
    }
    if (key == '7') {
      d = 180; //semestre
      objetos[i].dias(d);
      objetos[i].TEMPERATURA();
    }
    if (key == '8') {
      d = 180; //semestre
      objetos[i].dias(d);
      objetos[i].HUMEDAD();
    }
    if (key == '9') {
      d = 180; //semestre
      objetos[i].dias(d);
      objetos[i].VIENTO();
      objetos[i].MOVER();
      objetos[i].VIENTO2();
      objetos[i].MOVER2();

      objetos[i].movimiento();
      objetos[i].movimiento2();
    }
    if (key == '0') {
      d = 12; //meses
      objetos[i].dias(d);
      objetos[i].TEMPERATURA();
    }
    if (key == 'q') {
      d = 12; //meses
      objetos[i].dias(d);
      objetos[i].HUMEDAD();
    }
    if (key == 'w') {
      d = 12; //meses
      objetos[i].dias(d);
      objetos[i].VIENTO();
      objetos[i].MOVER();
      objetos[i].VIENTO2();
      objetos[i].MOVER2();

      objetos[i].movimiento();
      objetos[i].movimiento2();
    }
    if (key == 'r') {
      a = 0;
      b = 0;
      objeto2[i].VIENTO(a);
      objeto2[i].MOVER();
      objeto2[i].VIENTO2(b);
      objeto2[i].MOVER2();

      objeto2[i].movimiento();
      objeto2[i].movimiento2();
    }
    if (key == 't') {
      a = 50;
      b = 50;
      objeto2[i].VIENTO(a);
      objeto2[i].MOVER();
      objeto2[i].VIENTO2(b);
      objeto2[i].MOVER2();

      objeto2[i].movimiento();
      objeto2[i].movimiento2();
    }
    if ( key == 'e') {
      exit(); //salir
    }
  }
}

// void titulo
void titulo() {
  fill(0);
  textSize(15);
  text("JAKARTA", width/50, height/25);

  textSize(12.5);
  text("Indonesia", width/50, height/18);

  textSize(25);
  text("2015", width/50, height/12);
}

// void sobre las teclas interactivas
void teclas() {
  fill(0);
  textSize(15);
  text(" AÑO circulo", 155, 25);
  textSize(12.5);
  text("1 = Temperatura", 150, 40);
  text("2 = Humedad", 150, 55);
  text("3 = Viento", 150, 70);

  textSize(15);
  text(" AÑO ", 325, 25);
  textSize(12.5);
  text("4 = Temperatura", 300, 40);
  text("5 = Humedad", 300, 55);
  text("6 = Viento", 300, 70);

  textSize(15);
  text(" SEMESTRE ", 465, 25);
  textSize(12.5);
  text("7 = Temperatura", 450, 40);
  text("8 = Humedad", 450, 55);
  text("9 = Viento", 450, 70);

  textSize(15);
  text(" MESES ", 630, 25);
  textSize(12.5);
  text("0 = Temperatura", 600, 40);
  text("q = Humedad", 600, 55);
  text("w = Viento", 600, 70);

  textSize(15);
  text(" EXIT ", 755, 25);
  textSize(12.5);
  text("e = Exit", 750, 40);
}

void tcirculo() {
  fill(0);
  textSize(15);
  text(" R ", -5, -25);
  textSize(12.5);
  text("Los objetos rotan en su mismo eje", 0 - 110, -10);

  textSize(15);
  text("T", -2, 20);
  textSize(12.5);
  text("Los objetos NO rotan en su mismo eje", 0 - 120, 35);
}

// void explicativos para cada grilla
void ecirculo3() {
  fill(0);
  textSize(11);
  text(" Los círculos y cuadrados representan la velocidad del viento (máxima y media). ", -420, 365);
  text(" R = Los círculos mas alejados corresponden a los días donde la velocidad del viento fue mayor. ", -420, 380);
  text(" T = Los objetos que giran simultáneamente creando otras circunferencias corresponden a los días donde la velocidad máxima del viento fue similar.", -420, 395);

  noFill();
  stroke(255, 128, 98); // NARANJO
  ellipse(- 410, 410, 17, 17);
  fill(255, 128, 98); // NARANJO
  text(" Velocidad Máx. Viento", -400, 415);

  noFill();
  stroke(99, 204, 109); // VERDE);
  rect(- 250, 410, 15, 15);
  fill(99, 204, 109); // VERDE);
  text(" Velocidad Media Viento", -240, 415);
}

void ecirculo2() {
  fill(0);
  textSize(11);
  text(" Los círculos que se encuentran mas al centro corresponden a los días en que la máxima humedad fue mas baja, en cambio los que se encuentran ", -420, 380);
  text(" mas alejados se debe a que su maxima fue mas alta.", -420, 395);

  noFill();
  stroke(162, 255, 197); // VERDE CLARO
  ellipse(- 410, 410, 17, 17);
  fill(162, 255, 197); // VERDE CLARO
  text(" Humedad Máxima", -400, 415);

  noFill();
  stroke(99, 204, 109); // VERDE
  ellipse(- 250, 410, 17, 17);
  fill(99, 204, 109); // VERDE
  text(" Humedad Media", -240, 415);

  noFill();
  stroke(100, 132, 204); // AZUL
  ellipse(-100, 410, 17, 17);

  fill(100, 132, 204); // AZUL
  text(" Humedad Mínima", -90, 415);
  noFill();
}

void ecirculo1() {
  fill(0);
  textSize(11);
  text(" Los círculos que se encuentran mas al centro corresponden a los días en que la máxima temperatura fue mas baja, en cambio los que se encuentran ", -420, 380);
  text(" mas alejados se debe a que su máxima fue mas alta.", -420, 395);

  fill(216, 196, 184); // COLOR CAFE MEDIO GRIS Y CON OPACIDAD
  ellipse(- 410, 410, 17, 17);
  text(" Temperatura Máxima", -400, 415);

  fill(255, 128, 98); // NARANJO
  ellipse(- 250, 410, 17, 17);
  text(" Temperatura Media", -240, 415);

  fill(204, 142, 84); // CAFÉ
  ellipse(-100, 410, 17, 17);
  text(" Temperatura Mínima", -90, 415);
}

void eTemperatura() {
  fill(216, 196, 184); // COLOR CAFE MEDIO GRIS Y CON OPACIDAD
  ellipse(365, 840, 17, 17);
  text(" Temperatura Máxima", 375, 845);

  fill(255, 128, 98); // NARANJO
  ellipse(533, 840, 17, 17);
  text(" Temperatura Media", 543, 845);

  fill(204, 142, 84); // CAFÉ
  ellipse(700, 840, 17, 17);
  text(" Temperatura Mínima", 710, 845);
}

void eHumedad() {
  noFill();
  stroke(162, 255, 197); // VERDE CLARO
  ellipse(365, 840, 14, 14);
  fill(162, 255, 197); // VERDE CLARO
  text(" Humedad Máxima", 375, 845);

  noFill();
  stroke(99, 204, 109); // VERDE
  ellipse(533, 840, 14, 14);
  fill(99, 204, 109); // VERDE
  text(" Humedad Media", 543, 845);

  noFill();
  stroke(100, 132, 204); // AZUL
  ellipse(700, 840, 14, 14);
  fill(100, 132, 204); // AZUL
  text(" Humedad Mínima", 710, 845);
}

void eViento() {
  noFill();
  stroke(255, 128, 98); // NARANJO
  ellipse(365, 840, 14, 14);
  fill(255, 128, 98); // NARANJO
  text(" Velocidad Máx. Viento", 375, 845);

  noFill();
  stroke(99, 204, 109); // VERDE);
  rect(605, 840, 14, 14);
  fill(99, 204, 109); // VERDE);
  text(" Velocidad Media Viento", 615, 845);
}

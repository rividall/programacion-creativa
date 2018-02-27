// no hay autor
// no hay descripción

// Array de objetos
Temperatura[] temp;
Humedad[] hum;
Visibilidad[] vis;
Precipitation[] precipitation;

boolean eneh, febh, marh, abrh, mayh, junh, julh, agh, septh, octh, novh, dich;
boolean enev, febv, marv, abrv, mayv, junv, julv, agv, septv, octv, novv, dicv;
boolean lluvia, temperatura;
boolean enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre;
boolean octubre, noviembre, diciembre;
boolean leyendatemp, leyendalluv, leyendavis, leyendahum;

PFont font, fhum;

Table tabla;

void setup() {
  size(700, 700);

  font = loadFont("Champagne&Limousines-48.vlw");

  eneh = false;
  febh = false;
  marh = false;
  abrh = false;
  mayh = false;
  junh = false;
  julh = false;
  agh = false;
  septh = false;
  octh = false;
  novh = false;
  dich = false;

  enev = false;
  febv = false;
  marv = false;
  abrv = false;
  mayv = false;
  junv = false;
  julv = false;
  agv = false;
  septv = false;
  octv = false;
  novv = false;
  dicv = false;

  enero = false;
  febrero = false;
  marzo = false;
  abril = false;
  mayo = false;
  junio = false;
  julio = false;
  agosto = false;
  septiembre = false;
  octubre = false;
  noviembre = false;
  diciembre = false;

  lluvia = false;
  temperatura = false;

  leyendatemp = false;
  leyendalluv = false;
  leyendavis = true;
  leyendahum = true;

 //Cargar la base de datos con el parámetro de cabecera.
  tabla = loadTable("basedatositalia.csv", "header");

  //Inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();
  println(tabla.getRowCount());
  temp = new Temperatura[total];
  hum = new Humedad[total];
  vis = new Visibilidad[total];
  precipitation = new Precipitation[total];

   //Iterar por la base de datos y llenar el array con esa información,
   //creando un objeto por dato.
   //Con un contador podemos pasar por cada fila del archivo:
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila.
    TableRow row = tabla.getRow(i);

    // Con el, podemos ir a los métodos para hacer paridad entre
    //el dato y el constructor
    // Una variable del constructor - por cada variable del dato
    float mes = row.getInt("mes");
    float dia = row.getInt("dia");
    int maximat = row.getInt("maxt");
    int minimat = row.getInt("mint");
    int maximah = row.getInt("maxh");
    int minimah = row.getInt("minh");
    int maximav = row.getInt("maxv");
    int minimav = row.getInt("minv");
    int precip = row.getInt("precipitation");

    // Con esas variables construyo un objeto
    temp[i] = new Temperatura(mes, dia, maximat, minimat, i);
    hum[i] = new Humedad(mes, dia, maximah, minimah, i);
    vis[i] = new Visibilidad(mes, dia, maximav, minimav, i);
    precipitation[i] = new Precipitation(mes, dia, precip, i);
  }
}
void draw() { //Inicio ámbito de dibujo.

  //background con opacidad
  noStroke();
  fill(0, 15);
  rect(0, 0, 700, 700);

  if (leyendahum) { //Inicio leyenda de la visibilidad.
    pushMatrix(); //Se abre para que nada interfiera lo que esta entre el push y pop.
    fill(250); //Color de la letra del texto.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(30); //Tamaño de la letra del texto.
    text("Humedad", 630, 100); //Qué dice el texto y su posición.
    popMatrix(); //Se cierra para que nada interfiera lo que esta entre el push y pop.

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(30); //Tamaño de la letra del texto.
    text("2015", 650, 40); //Qué dice el texto y su posición.
    popMatrix();

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(RIGHT); //Punto de ancla del texto esta a la derecha.
    textSize(20); //Tamaño de la letra del texto.
    text("mínima", 670, 140); //Qué dice el texto y su posición.
    text("máxima", 670, 160); //Qué dice el texto y su posición.
    popMatrix();

    //Líneas de la simbologia que indican cual es la mínima y cual es la máxima:
    pushMatrix();
    strokeWeight(2);
    stroke(#5D94FF);
    noFill();
    line(600, 135, 610, 135);

    strokeWeight(2);
    stroke(#003F7C);
    noFill();
    line(600, 155, 610, 155);
    popMatrix();

    //Rectangulos que rodean las leyendas de humedad:
    pushMatrix();
    strokeWeight(2);
    stroke(#003F7C);
    noFill();
    rect(550, 58, 550, 58,9);

    stroke(#5D94FF);
    noFill();
    rect(555, 62, 555, 50,7);
    popMatrix();

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(30); //Tamaño de la letra del texto.
    text("Florencia, Italia", 100, 690); //Qué dice el texto y su posición.
    popMatrix();
  }

  if(leyendavis){ //Inicio leyenda de la visibilidad.
    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(30); //Tamaño de la letra del texto.
    text("Visibilidad", 630, 220); //Qué dice el texto y su posición.
    popMatrix();

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(RIGHT); //Punto de ancla del texto esta a la derecha.
    textSize(20); //Tamaño de la letra del texto.
    text("mínima", 670, 260); //Qué dice el texto y su posición.
    text("máxima", 670, 280); //Qué dice el texto y su posición.
    popMatrix();

    //Líneas de la simbologia que indican cual es la mínima y cual es la máxima:
    pushMatrix();
    strokeWeight(2);
    stroke(#006430);
    noFill();
    line(600, 255, 610, 255);

    strokeWeight(2);
    stroke(#76FF00);
    noFill();
    line(600, 275, 610, 275);
    popMatrix();

    //Rectangulos que rodean las leyendas de visibilidad
    pushMatrix();
    strokeWeight(2);
    stroke(#006430);
    noFill();
    rect(550, 180, 550, 58, 9);

    stroke(#76FF00);
    noFill();
    rect(555, 184, 555, 50, 7);
    popMatrix();

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(LEFT); //Punto de ancla del texto esta a la izquierda.
    textSize(17); //Tamaño de la letra del texto.
    text("Teclas para la visualización:", 20, 370); //Qué dice el texto y su posición.
    text("1 = Enero", 20, 390); //Qué dice el texto y su posición.
    text("2 = Febrero", 20, 410); //Qué dice el texto y su posición.
    text("3 = Marzo", 20, 430); //Qué dice el texto y su posición.
    text("4 = Abril", 20, 450); //Qué dice el texto y su posición.
    text("5 = Mayo", 20, 470); //Qué dice el texto y su posición.
    text("6 = Junio", 20, 490); //Qué dice el texto y su posición.
    text("7 = Julio", 20, 510); //Qué dice el texto y su posición.
    text("8 = Agosto", 20, 530); //Qué dice el texto y su posición.
    text("9 = Septiembre", 20, 550); //Qué dice el texto y su posición.
    text("0 = Octubre", 20, 570); //Qué dice el texto y su posición.
    text("p = Noviembre", 20, 590); //Qué dice el texto y su posición.
    text("ñ = Diciembre", 20, 610); //Qué dice el texto y su posición.
    text("Aprieta espacio para pasar", 20, 630); //Qué dice el texto y su posición.
    text("a la siguiente visualización", 20, 650); //Qué dice el texto y su posición.
    popMatrix();

  }

  if (leyendatemp) { //Inicio leyenda de la temperatura.
    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("Temperatura", 350, 400); //Qué dice el texto y su posición.
    text("2015", 50, 690); //Qué dice el texto y su posición.
    popMatrix();

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(LEFT); //Punto de ancla del texto esta a la izquierda.
    textSize(20); //Tamaño de la letra del texto.
    text("minima", 290, 420); //Qué dice el texto y su posición.
    text("máxima", 390, 420); //Qué dice el texto y su posición.
    popMatrix();

    pushMatrix();
    strokeWeight(2);
    stroke(#FFEA00);
    noFill();
    line(270, 415, 280, 415);

    strokeWeight(2);
    stroke(#FF0D00);
    noFill();
    line(370, 415, 380, 415);
    popMatrix();

    pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(30); //Tamaño de la letra del texto.
    text("Florencia, Italia", 610, 690); //Qué dice el texto y su posición.
    popMatrix();

     pushMatrix();
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(17);  //Tamaño de la letra del texto.
    text("Aprieta   v   para volver", 350, 696); //Qué dice el texto y su posición.

    popMatrix();

  }

  if (leyendalluv) { //Inicio leyenda de la lluvia.
    pushMatrix();
    fill(#B4DAFF); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40);  //Tamaño de la letra del texto.
    text("Lluvia", 350, 50); //Qué dice el texto y su posición.
    popMatrix();

    pushMatrix();
    fill(#B4DAFF); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(20); //Tamaño de la letra del texto.
    text("= Llovió", 150, 57); //Qué dice el texto y su posición.
    text("= No  llovió", 590, 57); //Qué dice el texto y su posición.
    popMatrix();

    pushMatrix();
    strokeWeight(2);
    stroke(#71DAFF);
    fill(#F7F3DE, 10);
    ellipse(100, 50, 15, 15);
    popMatrix();

    pushMatrix();
    strokeWeight(2);
    noStroke();
    fill(#F7F3DE, 10);
    ellipse(530, 50, 15, 15);
    popMatrix();
  }
  if (enero) { //Texto de la leyenda de enero.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("ENERO", 350, 350); //Qué dice el texto y su posición.
  }
  if (febrero) { //Texto de la leyenda de febrero.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("FEBRERO", 350, 350); //Qué dice el texto y su posición.
  }
  if (marzo) { //Texto de la leyenda de marzo.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("MARZO", 350, 350); //Qué dice el texto y su posición.
  }
  if (abril) { //Texto de la leyenda de abril.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("ABRIL", 350, 350); //Qué dice el texto y su posición.
  }
  if (mayo) { //Texto de la leyenda de mayo.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("MAYO", 350, 350); //Qué dice el texto y su posición.
  }
  if (junio) { //Texto de la leyenda de junio.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("JUNIO", 350, 350); //Qué dice el texto y su posición.
  }
  if (julio) { //Texto de la leyenda de julio.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("JULIO", 350, 350); //Qué dice el texto y su posición.
  }
  if (agosto) { //Texto de la leyenda de agosto.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("AGOSTO", 350, 350); //Qué dice el texto y su posición.
  }
  if (septiembre) { //Texto de la leyenda de septiembre.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("SEPTIEMBRE", 350, 350); //Qué dice el texto y su posición.
  }
  if (octubre) { //Texto de la leyenda de octubre.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("OCTUBRE", 350, 350); //Qué dice el texto y su posición.
  }
  if (noviembre) { //Texto de la leyenda de noviembre.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("NOVIEMBRE", 350, 350); //Qué dice el texto y su posición.
  }
  if (diciembre) { //Texto de la leyenda de diciembre.
    fill(250); //Color de la letra.
    textFont(font); //Fuente declarada e inicializada anteriormente.
    textAlign(CENTER); //Punto de ancla del texto esta al centro.
    textSize(40); //Tamaño de la letra del texto.
    text("DICIEMBRE", 350, 350); //Qué dice el texto y su posición.
  }



  if (temperatura) {
    pushMatrix();
    translate(350, 390); // su 0,0 está en el punto 350, 390
    for (int i = 0; i < temp.length; i++) {
      temp[i].temperatura(); //Se mostrarán todos los datos de temperatura que están
                             // en la tabla y se les llama en la clase
    }
    popMatrix();
  }

  if (lluvia) { //función de la precipitación
    pushMatrix();
    translate(350, 378); // su 0,0 está en el punto 350, 378
    for (int i = 0; i < precipitation.length; i++) {
      precipitation[i].lluvia(); //Se mostrarán todos los datos de precipitación que están
                                 // en la tabla y se les llama en la clase
    }
    popMatrix();
  }

  if (enev) { //función de enero de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < vis.length; i++) {
      if (i > 0 && i < 32) { //Si i es mayor a 0 y menor a 32,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //posición 0 hasta la posicion 32, que es el primer mes.
      }
    }
    popMatrix();
  }

  if (eneh) { //función de enero de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i> 0 && i< 32) { //Si i es mayor a 0 y menor a 32,
        hum[i].humedad(); //se mostrarán los datos de visibilidad desde la
                          //fila 0 hasta la fila 32 de la tabla.
      }
    }
    popMatrix();
  }

  if (febv) { //función de febrero de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < vis.length; i++) {
      if (i > 33 && i < 60) { //Si i es mayor a 33 y menor a 60,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //posición 33 hasta la posicion 60 de la tabla.
      }
    }
    popMatrix();
  }

  if (febh) { //función de febrero de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 33 && i < 60) { //Si i es mayor a 33 y menor a 60,
        hum[i].humedad(); //se mostrarán los datos de visibilidad desde la
                          //fila 60 hasta la fila 33 de la tabla.
      }
    }
    popMatrix();
  }



  if (marh) { //función de marzo de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 61 && i < 91) { //Si i es mayor a 61 y menor a 91,
        hum[i].humedad(); //se mostrarán los datos de visibilidad desde la
                          //fila 61 hasta la fila 91 de la tabla.
      }
    }
    popMatrix();
  }


  if (marv) { //función de marzo de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 61 && i < 91) { //Si i es mayor a 61 y menor a 91,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 61 hasta la fila 91 de la tabla.
      }
    }
    popMatrix();
  }


  if (abrv) { //función de abril de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 92 && i < 121) { //Si i es mayor a 62 y menor a 121,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 92 hasta la fila 121 de la tabla.
      }
    }
    popMatrix();
  }

  if (abrh) { //función de abril de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 92 && i < 121) { //Si i es mayor a 62 y menor a 121,
        hum[i].humedad(); //se mostrarán los datos de visibilidad desde la
                          //fila 92 hasta la fila 121 de la tabla.
      }
    }
    popMatrix();
  }

  if (mayh) { //función de mayo de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 122 && i < 152) { //Si i es mayor a 122 y menor a 152,
        hum[i].humedad(); //se mostrarán los datos de visibilidad desde la
                              //fila 122 hasta la fila 152 de la tabla.
      }
    }
    popMatrix();
  }

  if (mayv) { //función de mayo de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 122 && i < 152) { //Si i es mayor a 122 y menor a 152,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 122 hasta la fila 152 de la tabla.
      }
    }
    popMatrix();
  }

  if (junh) { //función de junio de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 153 && i < 182) { //Si i es mayor a 153 y menor a 182,
        hum[i].humedad(); //se mostrarán los datos de visibilidad desde la
                          //fila 153 hasta la fila 182 de la tabla.
      }
    }
    popMatrix();
  }

  if (junv) { //función de junio de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 153 && i < 182) { //Si i es mayor a 153 y menor a 182,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 123 hasta la fila 182 de la tabla.
      }
    }
    popMatrix();
  }

  if (julh) { //función de julio de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 183 && i < 213) { //Si i es mayor a 183 y menor a 213,
        hum[i].humedad(); //se mostrarán los datos de humedad desde la
                          //fila 183 hasta la fila 213 de la tabla.
      }
    }
    popMatrix();
  }

  if (julv) { //función de julio de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 183 && i < 213) { //Si i es mayor a 183 y menor a 213,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 183 hasta la fila 213 de la tabla.
      }
    }
    popMatrix();
  }

  if (agh) { //función de agosto de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 214 && i < 244) { //Si i es mayor a 214 y menor a 244,
        hum[i].humedad(); //Se mostrarán los datos de humedad desde la
                          //fila 214 hasta la fila 244 de la tabla.
      }
    }
    popMatrix();
  }

  if (agv) { //función de agosto de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 214 && i < 244) { //Si i es mayor a 214 y menor a 244,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 214 hasta la fila 244 de la tabla.
      }
    }
    popMatrix();
  }

  if (septh) { //función de septiembre de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 245 && i < 274) { //Si i es mayor a 245 y menor a 274,
        hum[i].humedad(); //Se mostrarán los datos de humedad desde la
                          //fila 245 hasta la fila 274 de la tabla.
      }
    }
    popMatrix();
  }

  if (septv) { //función de septiembre de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 245 && i < 274) { //Si i es mayor a 245 y menor a 274,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 245 hasta la fila 274 de la tabla.
      }
    }
    popMatrix();
  }

  if (octh) { //función de octubre de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 275 && i < 305) { //Si i es mayor a 275 y menor a 305,
        hum[i].humedad(); //Se mostrarán los datos de humedad desde la
                          //fila 275 hasta la fila 305 de la tabla.
      }
    }
    popMatrix();
  }

  if (octv) { //función de octubre de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 275 && i < 305) { //Si i es mayor a 275 y menor a 305,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 275 hasta la fila 305 de la tabla.
      }
    }
    popMatrix();
  }

  if (novh) { //función de noviembre de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 306 && i < 335) { //Si i es mayor a 306 y menor a 335,
         hum[i].humedad(); //Se mostrarán los datos de humedad desde la
                          //fila 306 hasta la fila 335 de la tabla.
      }
    }
    popMatrix();
  }

  if (novv) { //función de noviembre de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 306 && i < 335) { //Si i es mayor a 306 y menor a 335,
        vis[i].visibilidad(); //Se mostrarán los datos de visibilidad desde la
                              //fila 306 hasta la fila 335 de la tabla.
      }
    }
    popMatrix();
  }
  if (dich) { //funcion de diciembre de la humedad.
    pushMatrix();
    translate(0, 0); //Posición, su punto 0,0 está en la esquina superior izquierda.
    for (int i = 0; i < hum.length; i++) {
      if (i > 336 && i < 366) { //Si i es mayor a 336 y menor a la
                                //totalidad de los datos,
        hum[i].humedad(); //Se mostrarán los datos de humedad desde la
                          //fila 336 hasta el final de la tabla (366).
      }
    }
    popMatrix();
  }

  if (dicv) { //funcion de diciembre de la visibilidad.
    pushMatrix();
    translate(700, 700); //Posición, su punto 0,0 está en la esquina inferior derecha.
    for (int i = 0; i < hum.length; i++) {
      if (i > 336 && i < 366) { //Si i es mayor a 336 y menor a la
                                //totalidad de los datos,
        vis[i].visibilidad(); //se mostrarán los datos de visibilidad desde la
                              //fila 336 hasta el final de la tabla (366).
      }
    }
    popMatrix();
  }
} //fin ámbito de dibujo



void keyPressed() { //inicio ámbito de teclas, en la cual aparecen y desaparecen las
                    //funciones según lo que se indica.

  if (key == '1') { //aparece enero
    eneh = (!eneh);
    enev = (!enev);
    enero = (!enero);
  }
  if (key == '2') { //aparece febrero y desaparece la leyenda de enero
    febh = (!febh);
    febv = (!febv);
    febrero = (!febrero);
    enero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '3') { //aparece marzo y desaparece la leyenda de febrero
    marh = (!marh);
    marv = (!marv);
    marzo = (!marzo);
    febrero = false;
    enero = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '4') { //aparece abril y desaparece la leyenda de marzo
    abrh = (!abrh);
    abrv = (!abrv);
    abril =(!abril);
    marzo = false;
    enero = false;
    febrero = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '5') { //aparece mayo y desaparece la leyenda de abril
    mayh = (!mayh);
    mayv = (!mayv);
    mayo = (!mayo);
    abril = false;
    enero = false;
    febrero = false;
    marzo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }

  if (key == '6') { //aparece junio y desaparece la leyenda de mayo
    junh = (!junh);
    junv = (!junv);
    junio = (!junio);
    mayo = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '7') { //aparece julio y desaparece la leyenda de junio
    julh = (!julh);
    julv = (!julv);
    julio = (!julio);
    junio = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '8') { //aparece agosto y desaparece la leyenda de julio
    agh = (!agh);
    agv = (!agv);
    agosto = (!agosto);
    julio = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '9') { //aparece septiembre y desaparece la leyenda de agosto
    septh = (!septh);
    septv = (!septv);
    septiembre = (!septiembre);
    agosto = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    octubre = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == '0') { //aparece octubre y desaparece la leyenda de septiembre
    octh = (!octh);
    octv = (!octv);
    octubre = (!octubre);
    septiembre = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    noviembre = false;
    diciembre = false;
  }
  if (key == 'p') { //aparece noviembre y desaparece la leyenda de octubre
    novh = (!novh);
    novv = (!novv);
    noviembre = (!noviembre);
    octubre = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    diciembre = false;
  }
  if (key == 'ñ') { //aparece diciembre y desaparece la leyenda de noviembre
    dich = (!dich);
    dicv = (!dicv);
    diciembre = (!diciembre);
    noviembre = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
  }



  //para cambiar de datos al de temperatura y lluvia
  if (key == ' ') {

    lluvia = true;
    temperatura = true;
    leyendatemp = true;
    leyendalluv = true;
    leyendavis = false;
    leyendahum = false;
    eneh = false;
    enev = false;
    febh = false;
    febv = false;
    marh = false;
    marv = false;
    abrh = false;
    abrv = false;
    mayh = false;
    mayv = false;
    junh = false;
    junv = false;
    julh = false;
    julv = false;
    agh = false;
    agv = false;
    septh = false;
    septv = false;
    octh = false;
    octv = false;
    novh = false;
    novv = false;
    dich = false;
    dicv = false;
    enero = false;
    febrero = false;
    marzo = false;
    abril = false;
    mayo = false;
    junio = false;
    julio = false;
    agosto = false;
    septiembre = false;
    octubre = false;
    noviembre = false;
    diciembre = false;

  }
  // Para volver a los datos de humedad y visibilidad
  if (key == 'v'){

    lluvia = false;
    temperatura = false;
    leyendatemp = false;
    leyendalluv = false;
    leyendavis = true;
    leyendahum = true;
    eneh = true;
    enev = true;
    enero = true;

  }
}

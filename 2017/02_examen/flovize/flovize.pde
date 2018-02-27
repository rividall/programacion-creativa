//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital
//6to semestre - Expresión Digital II
//Florencia Vizcaya Benítez - floviz

/* A  continuación se muestra una visualización de los datos de humedad máxima y mínima,
 y promedio de velocidad del viento durante el año 2015 en Karachi, Pakistán.

 Para  esto  se  muestra  una  representación general de la humedad máxima y mínima desde
 enero a febrero mediante rectángulos que  varían  su altura según el dato. Con la
 tecla  'w',  podemos  visualizar en promedio la velocidad del viento de cada día (con la
 tecla 'e', las alturas  de  los  rectángulos  vuelven  al dato original), y con la tecla
 'c', las cuatro estaciones del año en Pakistán, representado con amarillo = verano,
 naranjo = otoño, fucsia = primavera y celeste = invierno.

 También podemos  hacer  un  acercamiento de los mismos datos de humedad, a cada día de
 cada mes, posicionando el cursor sobre el mes deseado.
 Podemos usar nuevamente  la tecla 'c' para  ver el color de la estación del año a la
 que pertenece el mes.
 */


// Se crea una Array de objetos.
Clase[] objetos;

//Se declaran las distintas variables a usar más a delante.
//Variable para la tabla de datos.
Table tabla;
//Variable para tipografía.
PFont fuente2;

//Se le asignan los valores a las variables anteriores.
void setup() {
  //Se crea un canvas con un tamaño de 1300px de ancho y 500px de alto.
  size(1300, 500);
  // Se carga la base de datos con el parámetro de cabecera.
  tabla = loadTable("Karachi_Pakistan.csv", "header");
  //Se declara la clase objetos como lectura de base de datos.
  objetos = new Clase[tabla.getRowCount()];
  //Se carga la fuente2.
  fuente2 = loadFont("BarlowSemiCondensed-Light-30.vlw");

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);
    // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor    // La paridad debe ser exacta en caracteres
    // Una variable del constructor - por cada variable del dato;
    //fecha, humedad máxima y mínima y velocidad promedio de viento.
    int fecha = row.getInt("PKT");
    int humedad = row.getInt("MaxHumidity");
    int humedad2 = row.getInt("MinHumidity");
    float viento = row.getFloat("MeanWindSpeed");

    //Con las variables anteriores construyo un objeto.
    objetos[i] = new Clase(fecha, humedad, humedad2, viento);
  }
}

//Se llaman las funciones de la clase para dibujar los objetos.
void draw() {
  //Se le asigna un color de fondo al canvas; gris oscuro.
  background(70);
  //Se llaman a las funciones de la clase para hacer uso de mis objetos
  //según una secuencia.
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].funcion();
    objetos[i].keyPressed();
  }

  //Se crea un background con texto y un tipo de objeto según la posición del cursor y
  //las variables de este en x e y, posicionándolo sobre uno de los 12 meses mostrados
  //en el canvas.

  //Si es que el cursor se encuentra posicionado sobre la representación de mes enero,
  //Se muestran la cantidad de datos de enero, día a día.
  if ((mouseX >= 50 && mouseX < 150) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);
    fill(120);
    noFill();
    textFont(fuente2);
    text("Enero", 625, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].enero();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes febrero,
  //Se muestran la cantidad de datos de febrero, día a día.
  if ((mouseX > 150 && mouseX < 250) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Febrero", 600, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].febrero();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes marzo,
  //Se muestran la cantidad de datos de marzo, día a día.
  if ((mouseX > 250 && mouseX < 350) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Marzo", 630, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].marzo();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes abril,
  //Se muestran la cantidad de datos de abril, día a día.
  if ((mouseX > 350 && mouseX < 450) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Abril", 630, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].abril();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes mayo,
  //Se muestran la cantidad de datos de mayo, día a día.
  if ((mouseX > 450 && mouseX <= 550) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Mayo", 630, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].mayo();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes junio,
  //Se muestran la cantidad de datos de junio, día a día.
  if ((mouseX > 550 && mouseX < 650) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Junio", 620, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].junio();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes julio,
  //Se muestran la cantidad de datos de julio, día a día.
  if ((mouseX > 650 && mouseX < 750) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Julio", 630, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].julio();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes agosto,
  //Se muestran la cantidad de datos de agosto, día a día.
  if ((mouseX > 750 && mouseX < 850) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Agosto", 620, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].agosto();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes
  //septiembre, se muestran la cantidad de datos de septiembre, día a día.
  if ((mouseX > 850 && mouseX < 950) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Septiembre", 590, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].septiembre();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes octubre,
  //Se muestran la cantidad de datos de octubre, día a día.
  if ((mouseX > 950 && mouseX < 1050) && (mouseY >=160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Octubre", 620, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].octubre();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes
  //noviembre, se muestran la cantidad de datos de noviembre, día a día.
  if ((mouseX > 1050 && mouseX < 1150) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Noviembre", 600, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].noviembre();
    }
  }
  //Si es que el cursor se encuentra posicionado sobre la representación de mes
  //diciembre, se muestran la cantidad de datos de diciembre, día a día.
  if ((mouseX > 1150 && mouseX <= 1250) && (mouseY >= 160 && mouseY <= 320)) {
    background(70);

    fill(120);
    noFill();
    textFont(fuente2);
    text("Diciembre", 610, height/2);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].diciembre();
    }
  }
}

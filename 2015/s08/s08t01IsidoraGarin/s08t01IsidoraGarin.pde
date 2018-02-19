//UDD - Expresión Digital II
//s08t01IsidoraGarin
/*Ejercicio s07t01, en la que incluí el ejercicio del versus s08VersusR04 en el fondo,
y en el fondo del círculo chico el ejercicio s08VersusR03 (sólo el for para los círculos
y el relleno de color. Corrección también del uso del teclado --> cambio a boolean para 
crear el mismo objetivo.*/


//Variables de color
color bla, neg, tur, ver, blat, negt, turt, vert, turt2, vert2, ccg, ccc, cb, crb, ccua, ccir;
//Rotación
float rotar, x;
//Boolean
boolean colores;

void setup() {
  size(700, 700);
  smooth(); 
  colorMode(RGB);

  //Colores
  bla = color(255, 255, 255);
  neg = color(0, 0, 0);
  tur = color(27, 204, 167);
  ver = color(128, 255, 130);

  //Transparencia 160
  blat = color(255, 255, 255, 160);
  negt = color(0, 0, 0, 160);
  turt = color(27, 204, 167, 160);
  vert = color(128, 255, 130, 160);

  //Transparencia rectángulo background 50
  turt2 = color(27, 204, 167, 50);
  vert2 = color(128, 255, 130, 50);

  //Variables color
  ccg = tur; //Color círculo grande turquesa
  ccc = neg; //Color círculo chico negro
  cb = ver; //Color del background verde
  crb = vert2; //Color rectángulo background
  ccua = blat; //Color cuadrados
  ccir = vert; //Color círculos

  //Rotación
  rotar = 0;
  
  //Boolean
  colores = true;
}

void draw() {  
  x = mouseX * -0.5;
  strokeWeight(10);
  background(255);
 
  for (int i = 0; i <= width; i += 10) {
    stroke(128, 255, 130, 255 - i *.6);
    line(width/2 + x + i, 0, width/2 + i + x, height);
  }
  for (int i = 0; i <= width; i += 10) {
    stroke(128, 255, 130, 255 - i *.6);
    line(width/2 - x - i, 0, width/2 - i - x, height);
  }
  for (int i = 0; i <= height; i += 10) {
    stroke(27, 204, 167, 255 - i *.6);
    line(0, height/2 + x + i, width, height/2 + x + i); 
  }
  for (int i = 0; i <= height; i += 10) {
    stroke(27, 204, 167, 255 - i *.6);
    line(0, height/2 - x - i, width, height/2 - x - i);
  }
  
  etnicocirculo(mouseX, mouseY);

  translate(mouseX, mouseY);
  rotate(rotar);
  rotar += 0.02;
  etnicocuadrado(0, 0);
  
  //Boolean
  /*Si el boolean es verdadero, círculo grande color turquesa, círculo chico negro, background 
  verde, rectángulo background verde transparente, cuadrados blanco transparente, círculos 
  verde transparente.*/
    if (colores == true) {
    ccg = tur;
    ccc = neg;
    cb = ver;
    crb = vert2;
    ccua = blat;
    ccir = vert;
  }
  
  /*Si el boolean es falso, círculo grande negro, círculo chico verde, background turquesa, 
  rectángulo background turquesa transparente, cuadrados verdes transparentes, círculos 
  turquesa transparente*/
    if (colores == false) {
    ccg = neg;
    ccc = ver;
    cb = tur;
    crb = turt2;
    ccua = vert;
    ccir = turt;
  }
}

void keyPressed() {
  if (key == ' '){
    colores = !colores;
  }
}


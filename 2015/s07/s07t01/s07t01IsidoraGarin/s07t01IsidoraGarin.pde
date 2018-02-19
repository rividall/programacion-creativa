//UDD - Expresión Digital II
//s07t01IsidoraGarin
//Creación de dos funciones específicas, de diseños étnicos estilo mandala diferentes,
//las cuales siguen el movimiento del mouse dejando una estela, y al presionar 
//las teclas "a" y "s" cambian de color.


//Variables de color
color bla, neg, tur, ver, blat, negt, turt, vert, turt2, vert2, ccg, ccc, cb, crb, ccua, ccir;
//Rotación
float rotar;

void setup() {
  size(700, 700);
  smooth(); 

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
}

void draw() {
  //Rectángulo background con transparencia --> ESTELA
  fill(crb);
  rect(0, 0, width, height);

  etnicocirculo(mouseX, mouseY);

  translate(mouseX, mouseY);
  rotate(rotar);
  rotar += 0.02;
  etnicocuadrado(0, 0);
}

void keyPressed() {
  //Si apreto "a", círculo grande color turquesa, círculo chico negro, background verde, rectángulo 
  //background verde transparente, cuadrados blanco transparente, círculos verde transparente
  if (key == 'a') {
    ccg = tur;
    ccc = neg;
    cb = ver;
    crb = vert2;
    ccua = blat;
    ccir = vert;
  }

  //Si apreto "s", círculo grande negro, círculo chico verde, background turquesa, rectángulo 
  //background turquesa transparente, cuadrados verdes transparentes, círculos turquesa transparente
  if (key == 's') {
    ccg = neg;
    ccc = ver;
    cb = tur;
    crb = turt2;
    ccua = vert;
    ccir = turt;
  }
}

/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea.
La lógica de cambiar colores entre ellos con dos letras distintas es recomendado hacerlo solo con una
e incluir booleans para eso.

Puedes intentar redactarlo de esta forma:
  1: por lógica si al hacer 'a' o 's' se sustituyen los estados,
  es recomendado hacer una boolean y usar el operador =! así 
  al hacer un click sin importar el estado inicial de colores, 
  estos se alternaran constantemente, en tu código si apreto 'a' nada cambia.
*/ 

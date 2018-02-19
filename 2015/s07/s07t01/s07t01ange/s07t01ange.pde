//UDD - Expreción Digital II
//s07t01ange
/*Programa con funciones especificas, de las cuales una parte de la funcion cubo sigue al mouse haciendo de foco 
y ilumina a la función figura2 cuando este pasa por esa zona, también se si se preciona la tecla "a" todo cambia 
a su color contrario y si se apreta "s" todo los colores cambian nuevamente, al hacer click con el mouse este 
vuelve al punto del centro o de inicio*/

//variable colores
color c1, c2, c3, c4;

//variables colroes de cada elemento 
color cBack, cTri1, cTri2, cST, cEllip, cSE, cLine;

void setup() {
  size(500, 500);

  //inicialización colores
  c1 = color(0); //blanco
  c2 = color(255); //negro
  c3 = color(32, 198, 234); //celeste
  c4 = color(234, 89, 32); //naranjo

  //inicialización variables de colores
  cBack = c1;
  cTri1 = c4;
  cTri2 = c3;
  cST = c2;
  cEllip = c3;
  cSE = c4;
  cLine = c4;

  mouseX = 250;
  mouseY = 250;
}

void draw() {
  background(cBack);
  if (mouseX < width/2 && mouseY < height/2) {
    figura2(50, 50);
  }
  if (mouseX > width/2 && mouseY < height/2) {
    figura2(300, 50);
  }
  if (mouseX < width/2 && mouseY > height/2) {
    figura2(50, 300);
  }
  if (mouseX > width/2 && mouseY > height/2) {
    figura2(300, 300);
  }

  cubo(mouseX - 75, mouseY - 75);
}

//función específica 2
void cubo(float posx, float posy) { 
  noFill();
  stroke(cLine);
  strokeWeight(1);
  rectMode(CORNER);
  rect(posx, posy, 150, 150);
  rectMode(CENTER);
  rect(250, 250, 150, 150);

  line(175, 175, posx, posy);
  line(325, 175, posx + 150, posy);
  line(175, 325, posx, posy + 150);
  line(325, 325, posx + 150, posy + 150);

  fill(cEllip);
  stroke(cSE);
  strokeWeight(3);
  ellipse(175, 175, 30, 30);
  ellipse(posx, posy, 30, 30);
  ellipse(325, 175, 30, 30);
  ellipse(posx + 150, posy, 30, 30);
  ellipse(175, 325, 30, 30);
  ellipse(posx, posy + 150, 30, 30);
  ellipse(325, 325, 30, 30);
  ellipse(posx + 150, posy + 150, 30, 30);
}

//función específica 1
void figura2(float pox, float poy) {
  fill(cTri1);
  stroke(cST);
  strokeWeight(2);
  triangle(pox, poy, pox + 60, poy, pox + 30, poy + 150);
  triangle(pox + 60, poy, pox + 120, poy, pox + 90, poy + 150);
  triangle(pox + 120, poy, pox + 150, poy, pox + 150, poy + 150);

  fill(cTri2);
  stroke(cST);
  strokeWeight(2);
  triangle(pox, poy + 150, pox + 30, poy + 150, pox, poy);
  triangle(pox + 30, poy + 150, pox + 90, poy + 150, pox + 60, poy);
  triangle(pox + 90, poy + 150, pox + 150, poy + 150, pox + 120, poy);

  noFill();
  stroke(cST);
  strokeWeight(7);
  rectMode(CORNER);
  rect(pox, poy, 150, 150);
}

void keyPressed() {
  if (key == 'a') {
    cBack = c2;
    cTri1 = c3;
    cTri2 = c4;
    cST = c1;
    cEllip = c4;
    cSE = c3;
    cLine = c3;
  }
  if (key == 's') {
    cBack = c1;
    cTri1 = c4;
    cTri2 = c3;
    cST = c2;
    cEllip = c3;
    cSE = c4;
    cLine = c4;
  }
}
void mousePressed() {
  mouseX = 250;
  mouseY = 250;
}

/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea. 
La lógica de cambiar colores entre ellos con dos letras distintas tiene errores de lógica, 
es recomendado hacerlo solo con una e incluir booleans para eso.

Pudiste usar strokeJoin(ROUND); para que no se vieran las puntas de los triángulos fuera del rectángulo.
Puedes investigar dos cosas:
  1: por lógica si al hacer 'a' o 's' se sustituyen los estados,
  es recomendado hacer una boolean y usar el operador =! así 
  al hacer un click sin importar el estado inicial de colores, 
  estos se alternarán constantemente, en tu código si apreto 's' nada cambia.
 
  2: agregar la función dist(); en el alplha del fill de la función figura2 
  para que a medida que el cubo se acerca más a la fgiura2, esta se ilumina más.    
*/

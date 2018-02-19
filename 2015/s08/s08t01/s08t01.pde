//UDD - Expreción Digital II
//s08t01ange
/*Programa con funciones especificas, de las cuales una parte de la funcion cubo sigue al mouse haciendo de foco y ilumina a la función figura2 cuando este pasa por esa zona, 
 también se si se preciona la tecla "a" todo cambia a su color contrario y si se apreta "s" todo los colores cambian nuevamente, al hacer click con el mouse este vuelve al punto del
 centro o de inicio, le agregue dos for uno son los puntos del fondo y el otro es la cortina que se abre dependiendo de mouseX*/

//variable colores
color c1, c2, c3, c4;

//variables colroes de cada elemento 
color cBack, cTri1, cTri2, cST, cEllip, cSE, cLine, cc, c;

float r;

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
  c = c3;

  mouseX = 250;
  mouseY = 250;
}

void draw() {
  background(cBack);

//puntos del fondo cambian de color con las teclas "a" y "s"
  for (float i = 10; i < width - 10; i += 30) {
    for (float j = 10; j < height - 10; j += 30) { 

      stroke(c);
      strokeWeight(5);
      point(i, j);
    }
  }
  
  //fondo como cortina se mueve con el mouseX y cambia de color con las teclas "a" y "s"
  for (int i = 0; i <= width; i += 10) {
    stroke(c, 300 - i);
    strokeWeight(20);
    line(width/2 + mouseX/2 + i, 0, width/2 + i + mouseX/2, height);
  }
  for (int i = 0; i <= width; i += 10) {
    stroke(c, 300 - i);
    line(width/2 - mouseX/2 - i, 0, width/2 - mouseX/2 - i, height);
  }
  for (int i = 0; i <= height; i += 10) {
    stroke(cc, 300 - i);
    line(0, height/2 + mouseX/2 + i, width, height/2 + mouseX/2 + i);
    cc = c2;
  }
  for (int i = 0; i <= height; i += 10) {
    stroke(cc, 300 - i);
    line(0, height/2 - mouseX/2 - i, width, height/2 - mouseX/2 - i);
    cc = c2;
  }

  cubo(mouseX - 75, mouseY - 75);

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
    cST = c3;
    cEllip = c4;
    cSE = c3;
    cLine = c3;
    c = c4;
  }
  if (key == 's') {
    cBack = c1;
    cTri1 = c4;
    cTri2 = c3;
    cST = c2;
    cEllip = c3;
    cSE = c4;
    cLine = c4;
    c = c3;
  }
}
void mousePressed() {
  mouseX = 250;
  mouseY = 250;
}


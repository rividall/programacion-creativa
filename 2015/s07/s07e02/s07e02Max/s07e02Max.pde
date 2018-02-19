//UDD - Expresion Digital II
//s07e02Max
//mickey mouse que se agranda a medida que llega al borde derecho

//declarar variables color
color m, c, y;

void setup() {
  size(950, 900);
  //asignar colores
  m= color(41, 128, 185);
  c= color(46, 204, 113);
  y= color(255, 0, 0);
}

void draw () {
  background(m);

  mickey(mouseX, mouseY, mouseX* .1);
}
//funcion mickey
void mickey(float posx, float posy, float altura) {
  strokeWeight(altura * 0.1);
  strokeWeight(5);
  stroke(c);
  fill(y);
 
 //circulos
  ellipse(posx-altura/2, posy-altura/2, altura-altura/3, altura-altura/3);
  ellipse(posx+altura/2, posy-altura/2, altura-altura/3, altura-altura/3); 
 ellipse(posx, posy, altura, altura); 
 
  //ojos
   fill(255);
   noStroke();
 ellipse(posx+altura/5, posy-altura/5, altura-altura*1.2, altura-altura*1.2);
 ellipse(posx-altura/5, posy-altura/5, altura-altura*1.2, altura-altura*1.2);
 
  //ojos puntitos
   fill(0);
   noStroke();
    ellipse(posx+altura/5, posy-altura/5, altura/10, altura/10);
 ellipse(posx-altura/5, posy-altura/5, altura/10, altura/10);

//boca
 arc(posx-altura/50, posy-altura/500, altura-altura/2, altura-altura/2, 0, PI);
}


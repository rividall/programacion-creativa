//UDD-Expresión Digital II
//s07e02Vicente
//Variables personalizadas MIQUEI MAUS

//variable color
color y, b, w;

void setup() {
  size(500, 500);
  b = color(69, 119, 232);
  y = color(232, 182, 71);
  w = color(255);
}

void draw () {
  background(y);

  miquei(mouseX, mouseY, mouseX* .1);
}
void miquei(float posx, float posy, float altura) {

  strokeWeight(0);
  stroke(b);
  fill(b);
  //cara miquei
  ellipse(posx, posy+2, altura, altura);
  //orejas miquei
  ellipse(posx-altura/2, posy-altura/2, altura-5, altura-5);
  ellipse(posx+altura/2, posy-altura/2, altura-5, altura-5);
  fill(y);
  //ojos miquei
  ellipse(posx-posx*0.018, posy, altura-20, altura-20);
  ellipse(posx+posx*0.018, posy, altura-20, altura-20);
  //boca miquei
  ellipse(posx, posy+posy*0.008, altura-30, altura-20);
}


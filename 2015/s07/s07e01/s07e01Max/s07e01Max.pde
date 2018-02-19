//UDD - Expresion Digital II
//s07e01Max
//crear una variable que adopta el mismo valor que otras tres variables a medida que apreto 'a' o 's'
float s1, s2, s3;
color c1, c2, c3, c4;

void setup() {
  size(500, 500);
  //variables stroke
  s1=5;
  s2=10;
  s3=s1;
  //variables color
  c1= color(46, 204, 113);
  c2= color(41, 128, 185);
  smooth();
  c3= c1;
  c4= c2;
}

void draw() {
  //dibujar fondo
  background (240);
  //rect dibujado
  strokeWeight(s3);
  stroke (c3);
  noFill();
  rect(width/2, height/2, width, height);
  //ellipse sigue al mouse
  strokeWeight(s3);
  stroke(c4);
  ellipse(mouseX, mouseY, 100, 100);
}

void keyPressed() {
  //si apreto a, cambia valores color y weight de strokes
  if (key=='a') {
    s3=s2;
    c3=c2;
    c4=c3;
  }
  //si apreto a, cambia valores a color establecido y weight de stroke
  if (key=='s') {
    s3=s1;
    c3=color(255, 0, 0);
  }
}


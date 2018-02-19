
color m, c, y;

void setup() {
  size (400, 400);
  smooth();
  
  m = color(0, 0, 0);
  c = color(0, 255, 255);
  y = color(255, 0, 98);
  
}

void draw() {
  background(255);
  
  Mickeymouse(mouseX, mouseY, mouseX* .1);
}

void Mickeymouse (float posx, float posy, float altura) {
  
  stroke(c);
  fill(m);
  ellipse(posx - altura, posy - altura, altura, altura);
  ellipse(posx + altura, posy - altura, altura, altura);
  ellipse(posx, posy, altura * 2, altura * 2);
  
  noStroke();
  fill(255);
  ellipse(posx - altura/3, posy - altura/3, altura/1.5, altura/1.5);
  ellipse(posx + altura/3, posy - altura/3, altura/1.5, altura/1.5);
  
  stroke(255);
  curve(posx-6, posy+4, posx-3, posy+15, posx+4, posy+15, posx+6, posy+4);
} 
  

// dibujar con una estela

float transparencia;

void setup(){
  size(600, 600);
  smooth();
  noStroke();
  transparencia = 50;
  background(255, 0, 255);
}

void draw(){
  //un rectangulo con alpha para reemplazar el background
  fill(255, 0, 255, transparencia);
  rect(0, 0, width, height);
  
  //element0
  fill(0, 255, 255);
  ellipse(mouseX, mouseY, 20, 20);
}
  

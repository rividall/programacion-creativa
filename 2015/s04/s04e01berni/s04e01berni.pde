//UDD - Expresión Digital II
//S04e01berni 
//corrección tarea semana 4, pelota que se mueva por el canvas y cambie de color y tamaño. 

int bc;
int c1;
int c2;

void setup() {
  size(500, 500);

  bc = 0;
  c1 = color (6, 252, 252); //color celeste
  c2 = color(255, 0, 98); //color rosado
}

void draw() {
  background(c1);
  noStroke(); 
  if (bc <= width/2) {
    //ellipse rosada
    fill(c2);
    stroke(0);
    strokeWeight(10);
    ellipse(bc, bc, 30, 30);
  } else if (bc > width/2) {
    background(c2);
    fill(c1);
    stroke(255);
    strokeWeight(8);
    ellipse(bc, height/2, 60, 60);
  }
  bc += 3;
  if (bc == width) {
    bc = 0;
  }
}

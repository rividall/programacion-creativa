// UDD - Expresión Digital II
// s06c01Andres
// secuencia infinita de elipses concentricas que varian su centro dependidiendo
// del lugar donde se haga click, con las teclas 'espacio' y 'm' se cambia el 
// color del background entre cyan y magenta, y al mover el mouse aparece una 
// elipse semi transparente con centro en el origen del movimiento que 
// desaparece al estar quieto el mouse.


float posx, posy, movx, movy;
color cy, mg, gr, nj, pr;
float rad, rad2;

void setup() {
  size(1280, 800);
  
  rectMode(CENTER);
  
  frameRate(90);
  
  cy = color(0, 200, 252);
  mg = color(252, 0, 148);
  gr = color(142, 252, 0);
  nj = color(255, 201, 3, 70);
  pr = color(167, 0, 252, 200);
  
  posx = width/2;
  posy = height/2;
  movx = -30;
   
  rad = 1;
  

  }
  
void keyPressed() {
  if (key == ' ') {
    cy = mg;
  } 
  if (key == 'm') {
    cy = color(0, 200, 252);
  }
}


void draw() {
  background(cy);
  for (int e = 4000; e > 0; e -= 200) {
    noFill();
    stroke(gr);
    strokeWeight(50);
    ellipse(posx, posy, e+rad, e+rad);
  }
  
  rad = rad + movx;
  
  if (rad < -width) {
    rad = 1;
   }
   
  }
 
 void mouseClicked() {
  if (posx == width/2) {
  posx = mouseX;
  } else { 
    posx = mouseX;
  }
  if (posy == height/2) {
    posy = mouseY;
  } else {
    posy = mouseY;
  }
}

void mouseMoved() {
  
  ellipseMode(CENTER);
    
    fill(nj);
    stroke(pr);
    ellipse(mouseX, mouseY, 400, 400);
}

  

  
  
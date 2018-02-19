//UDD Expresion Digital II
//s05e01ANDRES
//ELIPSE QUE REBOTA CON POSICION RANDOM Y QUE AL APRETAR ESPACIO HAY CUADRADOS DE OTRO COLOR CON  RANDOM POS



int rad = 60;        
float xpos, ypos;        

float xspeed = 2.8;  
float yspeed = 2.2;  

int xdirection = 1; 
int ydirection = 1; 

color c;
color m;

boolean n;

void setup(){
  size(600, 600);
  ellipseMode(RADIUS);
  
  n = true;
  
  c = color(3, 232, 255);
  m = color(255, 3, 91);
  
  xpos = width/2;
  ypos = height/2;
  
}

 void keyPressed() {
    if (key == ' ') {
     n = !n;
    }
  }

void draw(){
  
  background(174, 255, 3);  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );

if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
   for (int i = 0; i <= 1; i += 1) {
        noStroke();
        fill(m);
        ellipse(xpos+random(1,50), ypos+random(1,50), 10, 10);
      }
      
      if ( n == false) {
        for (int i = 0; i <= 1; i += 1) {
        
          noStroke();
        fill(c);
        rect(xpos+random(1,200), ypos+random(1,200), 20, 20);
      }
}
  
}
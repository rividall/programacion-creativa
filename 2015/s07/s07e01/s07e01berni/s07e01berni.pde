//UDD - Expresión Digital II
//s07e01Berni
//keypress funcion

float s1, s2;
color c1, c2;

 //variable fill y stroke
float g1;
color c3;

void setup () {
  size (500, 500);
  
  //valores en stroke
  s1 = 10;
  s2 = 15;
  
  //valores de colores
  c1 = color (6, 252, 252);
  c2 = color (255, 0, 98);
  
  g1 = s2;
  c3 = c2;
 
}

void draw () {
  background (250);
  
  strokeWeight(g1);
  stroke(c3);
  noFill();
  rectMode(CENTER);
  rect (width/2, height/2, 380, 380);
  
  strokeWeight (s1);
  stroke (c2);
  noFill();
  rectMode(CENTER);
  rect (width/2, height/2, 200, 200);
  
}

void keyPressed () {
   if (key == 'a') {
      g1 = s1;
      c3 = c1;
    }  
   if (key == 'b'){
      g1 = s2;
      c3 = c2;
    } 
  } 
  
  
  
  
  
  

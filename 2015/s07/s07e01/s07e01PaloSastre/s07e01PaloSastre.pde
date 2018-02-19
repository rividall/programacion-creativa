//UDD - Expresion Digital II
//s07e01PaloSastre
//crear una variable que adopta el mismo valor que otras dos variables según apreto las flechas de izquierda y derecha en el keyboard.
// 

float s1, s2, s3;
color c1, c2, c3;

void setup(){
size(500, 500);

//variables stroke
s1 = 20;
s2 = 40;

//variables color
c1 = color(61, 177, 171); //color turquesa
c2 = color(255, 151, 161); //color rosado

s3 = s1;
c3 = c1;

rectMode(CENTER);
}

void draw(){
  background(255);
  
  strokeWeight(s3);
  stroke(c3);
  noFill();  
  rect(width/2, height/2, 380, 380);
  
  strokeWeight(70);
  stroke(c2);
  noFill();
  ellipse(width/2, height/2, 200, 200);
}

void keyPressed(){
  if (key == CODED){
    if(keyCode == LEFT){
      s3 = s2;
      c3 = c2;
    } 
     
    if (keyCode == RIGHT){
      s3 = s1;
      c3 = c1;
    }
  }
}

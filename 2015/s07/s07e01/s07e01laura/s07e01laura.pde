//UDD - Expresion digital II
//s07e01laura
//cuadrado que cambia de color cuando se apreta las teclas de spacio y b

//variable de color y stroke
float s1, s2;
color c1, c2, c3;

//variable de stoke y de color
float sgrosor;
color cborde;

void setup(){
size(400, 400);

//valores de stroke
s1 = 20;
s2= 6;

//valores colores
c1 = color(251, 255, 158);//amarillo
c2 = color(255, 140, 239);//rosado

//asignacion de valor a variable especifica
sgrosor = s1;

// asignacion de valor a variable espesifica
cborde = c1;
}

void draw(){
background(240);

//cuadrado dibujado que cambia de color
strokeWeight(sgrosor);
stroke(cborde);
noFill();
rectMode(CENTER);
rect(width/2, height/2, 150, 150);

//elipse envuelve al cuadrado
strokeWeight(s2);
stroke(c2);
ellipse(width/2, height/2, 250, 250);
}

void keyPressed(){
  if ( key == 'b'){
  cborde = c2;
  }
   if ( key == ' '){
  cborde = c1;
  }
}

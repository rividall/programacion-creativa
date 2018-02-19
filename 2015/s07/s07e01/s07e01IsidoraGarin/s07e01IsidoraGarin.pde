//UDD - Expresión Digital II
//s07e01IsidoraGarin
//Cambiarle la variable a uno de los dos elementos dibujados en el canvas

//Colores
color bla, neg, ver, tur;

//Variables de strokeWeight
float sw1, sw2, sw3;

//Variables para strokeWeight y color
float g;
color c;

//Variable boolean
boolean t;

void setup(){
  size(500, 500);
  
  //Colores
  bla = color(250, 250, 250);
  neg = color(0, 0, 0);
  ver = color(128, 255, 130);
  tur = color(27, 204, 167);
  
  //strokeWeight
  sw1 = 12;
  sw2 = 30;
  
  //Inicialización variables strokeWeight y color
  g = sw1;
  c = ver;
  
  //Boolean
  t = true;
}

void draw(){
  //Background
  background(c);
  
  //Línea recta
  stroke(tur);
  strokeWeight(4);
  line(width, 0, 0, height);
  
  //Cuadrado
  stroke(bla);
  strokeWeight(sw3);
  rect(200, 200, 100, 100);
  noFill();
  
  //Si t = verdadero, el strokeWeight cambia a 20
  if(t == true){
   sw3 = sw2; 
  }
  
  //Si t = falso, el strokeWeight cambia a 4
  if(t == false){
   sw3 = sw1; 
  }
}

void keyPressed(){
 if(key == ' '){
  t = !t; 
 }
}

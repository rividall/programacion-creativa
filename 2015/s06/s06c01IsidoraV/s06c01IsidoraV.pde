//UDD- Expresión Digital II
//s06c01IsidoraV 
/*
Una pelotita de color verde rebotando por el lienzo azul, 
atras se ven varias pelotitas negras, 
al apretar 'c' los colores cambian y se agranda el tamaño de la pelotita, 
al apretar el mouse las pelotitas del fondo se cambian por lineas, 
al mover el mouse por el lienzo de modo horizontal la opacidad de, 
tanto las pelotitas como las lineas, cambia, cuando apretas espacio se generan
dos lineas del color de la pelotita que se mueve a su alrededor
*/

//Posicion y diametro
float x, y, d;

//Suma de las posiciones
float sy, sx;

//colores
color v, a, n, b;

//Variables de fill
color fe, fb, ff;

//Boolean
boolean cc, cf;

void setup( ){
  size(1280, 800);
  
  //Posicion y diametro
  x = 1;
  y = 30;
  d = 50;
  
  //Sumatoria
  sy = 10;
  sx = 30;
  
  //Colores
  v = color(103, 155, 53); //verde
  a = color(0, 72, 156); //azul
  n = color(0); //negro
  b = color(250); //blanco
  
  //Fills
  fe = v; //ellipse
  fb = a; //background
  ff = n; //Forloop
  
  //Boolean
  cc = true; //cambio color
  cf = true; //cambio de for loop
}

void draw() {
  background(fb);
  
  //Si cf es falso, el fondo se llena de cuadrados del color del relleno del forloop que cambian la opcacidad segun el mouse
    if (cf == false) {
    for(int i=0; i <= height*2; i+=10){
      noStroke();
      fill(ff, mouseX/5);
      rect(i, 0, 5, height);
    }
   }
    
    //Si cf es verdadero, el fondo se llena de ellipses del color del relleno del forloop que cambia opacidad segun el mouse
    if(cf == true) {
    for(int i=0; i <= height*2; i+=25){
      for (int e=0; e<= width*2; e+=25){
        noStroke();
      fill(ff, mouseX/5);
      ellipse(i, e, 8, 8);
      }
    }
  }
    
  //Circulo de 50x50px con relleno variable
  noStroke();
  fill(fe);
  ellipse(x, y, d, d);
   
  //Suma de variables para generar movimiento al circulo
  y -= sy;
  x += sx;
  
 //Cuando el Boolean es falso la ellipse cambia de color y tamaño, ademas el for loop y el fondo cambian de color
  if (cc == false) {
    fb = n;
    ff = a;
    fe = b;
    d = 100;
  }
  
  //Cuando el Boolean es verdadero la ellipse tiene los colores predeterminados en el principio
  if (cc == true) {
    fb = a;
    ff = n;
    fe = v;
    d = 50;
  }
  
  //Cuando el circulo llegue a lo alto del canvas, cambia su direccion de Y hacia abajo
  if (y <= 0+d/2) {
    sy *= -1;
  }
   
   //Cuando el circulo llegue a el extremo derecho del canvas, cambia su direccion X hacia la izquierda
   if (x >= width) {
     sx  *= -1;
  }
  
  //Cuando el circulo llegue a el extremo izquierdo del canvas, cambia su direccion X hacia la derecha
  else if (x <= 0) {
    sx *= -1;
  }
  
  //Cuando la ellipse sale de la parte baja del canvas, cambia su direccion Y hacia arriba
  else if (y >= height-d/2) {
    sy *= -1;
  }
}



void keyPressed () {
  
  //Apretando 'c' cambia el color del forloop, background, ellipse y tambien cambia el tamaño de la ellipse
  if(key == 'c') {
    cc = !cc;
  }
  
  //Apretando espacio se generan dos lineas de color de la ellipse alrededor de esta
  if (key == ' ') {
    noFill();
    stroke(fe);
    strokeWeight(2);
    ellipseMode(CENTER);
    ellipse(x, y, d*3,d*3);
    ellipse(x, y, d*2, d*2);
  }
}

//Cuando se aprieta el mouse cambia el forloop por el de los cuadrados
void mousePressed (){
cf= !cf;
}

  

//Expresion digital 2 
//s06c01 Laura

/*
certamen1 donde se queneran 2 circulos los cuales se mueven de acuerdo al movimiento del mouse
y al apretar la letra g se genera una linea y al apretar el mouse se borran todo lo 
anteriormente dibujados.
*/

//colres : rosado, amarillo y blanco
color c1, c2, c3;

//varianle espesifica de ellipse 
color cmaestro;
color cool;
float esize;

//condicionales 
boolean v, g;


float x, y;

void setup() {
  size(600, 400);
  
// inicializacion tamaño elipse
  esize = mouseY;
//inicializacion booleans
  g = true;
  v = true;

//inicializacion colores
  c1 = color (255, 140, 239);//rosado
  c2 = color (251, 255, 158);//amarillo
  c3 = color (255, 255, 255);//blanco
  cmaestro = c2;
  cool = c3;
  
  background(c1);
}

void draw() {
  //randoms para crear la linea con el keypressed
  x = random(0, 600);
  y = random(0, 400);
 
 //variable que permite que se dibujen 2 ellipses 
 for ( int i = 0; i < 20; i += 10){
  noFill();
  stroke(cool);
  strokeWeight(2);
  ellipse(mouseX + i, mouseY, esize, esize);
 }
 // condicional que controla es tamaño de las ellipses
  if (mouseY < 200){
    esize = esize +1;   
  }
  
  if (mouseY > 200){
    esize = esize - 1 ;
  }

// condicinal que controla el cambio de color de la elipse segun su movimiento en x  
  if (mouseX < width/2) {
    cmaestro = c3;
    cool = c2;
  }

  if (mouseX > 300) {
    cmaestro = c2;
    cool = c3;
  }

}
// key pressed que permite que al apretar g se cree una linea 
void keyPressed(){
  if (g == true){
   stroke(0);
   strokeWeight(6);
   line (mouseX, mouseY, x, y);
  
  
  }
}
//variable que permite que al apretar el mouse se borre los circulos anteriormente dibujados
void mousePressed() {
  if (v == true) {
    background(c1);
  }
}


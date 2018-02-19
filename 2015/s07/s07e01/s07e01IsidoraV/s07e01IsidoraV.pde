//UDD- Expresión Digital II
//s07e01IsidoraV 
//Crear dos elementos, un rectangulo y una ellipse, sobre fondo negro y al presionar espacio el color de la ellipse cambia

//boolean
boolean cc;

//colores
color v, a, n, b;

//variables de fill
color fe;

void setup() {
  size(500, 500);
  
  //colores
  v = color(103, 155, 53); //verde
  a = color(0, 72, 156); //azul
  n = color(0); //negro
  b = color(250); //blanco
  
  //boolean
  cc = true;
}

void draw() {
  background(n);
  
  //rectangulo verde con 50px de margen al fondo
  noStroke();
  fill(v);
  rect(50, 50, 400, 400);
  
  //ellipse con 10px de margen al rectangulo verde
  noStroke();
  fill(fe);
  ellipse(250, 250, 390, 390);
  
  //si cc es verdadero, la ellipse es azul
  if (cc == true) {
    fe = a;
  }
  
  //si cc es falso, la ellipse es verde
  if (cc == false) {
    fe = b;
  }
}

void keyPressed() {
 //Si presionas espacio, el color de la ellipse cambia
  if(key == ' ') {
  cc = !cc;
  }
}
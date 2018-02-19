//UDD - Expreción Digital II 
//s06c01ange
/*
programa que cuando se mueve el mouse se pinta del color que indica el teclado y al hacer click se vuelve 
a dibujar el fondo también tiene un for que hace que pelotitas del fondo se agrande o se achiquen segun 
el mouse
*/
//variable colores
color c1, c2, c3, c4;

//variable de fill, stroke, background, pelotitas
color cFill, cStroke, cBackground, cPelotitas, cWeight;

//variable de separación de las pelotitas del fondo
float z; 

void setup() {
  size(1280, 800);

  //inicilización de colores
  c1 = color(255); //blanco
  c2 = color(0); //negro
  c3 = color(32, 198, 234, 150); //celeste  con alfa
  c4 = color(234, 89, 32); //naranjo

  //inicialización fill, background, stroke, strokeWeight, pelotitas, z y mouse x e y
  cBackground = c2;
  cPelotitas = c2;
  cFill = c1;
  cStroke = c1;
  cWeight = 30;
  z = 30;
  mouseX = 2000;
  mouseY = 2000;

  //fondo
  background(cBackground);
}

void draw() {
  //ellipse sigue al mouse en el eje x e y 
  fill(cFill);
  stroke(cStroke);
  strokeWeight(cWeight);
  ellipse(mouseX, mouseY, 100, 100);

  //for que genera puntos que se agranda al mover el mouse en eje x  
  for (float i = 0; i < width; i += z) {
    for (float j = 0; j < height; j += z) { 
      fill(cPelotitas);
      strokeWeight(mouseX*0.008);
      stroke(cPelotitas);
      point(i, j);
    }
  }
}

//teclado
void keyPressed () {
  //si se apreta la tecla a cambia el fill a celeste, el fondo y las pelotitas a naranjas
  if (key == 'a') {
    cFill = c3;
    cStroke = c3;
    cWeight = 60;
    cBackground = c4;
    cPelotitas = c4;
  } 
  //si se apreta la tecla s cambia el fill a naranjo, el fondo y las pelotitas a blanco
  if (key == 's') {
    cFill = c4;
    cStroke = c4;
    cWeight = 40;
    cBackground = c1;
    cPelotitas = c1;
  } 
  //si se apreta la tecla d cambia el fill a negro, el fondo y las pelotitas a celeste
  if (key == 'd') {
    cFill = c2;
    cStroke = c2;
    cWeight = 20;
    cBackground = c3;
    cPelotitas = c3;
  }
  //si se apreta la tecla d cambia el fill a blanco, el fondo y las pelotitas a negro
  if (key == 'f') {
    cFill = c1;
    cStroke = c1;
    cWeight = 0;
    cBackground = c2;
    cPelotitas = c2;
  }
}

//click del mouse
void mousePressed() {
  //al hacer click con el mouse se dibuja el fondo de nuevo y se borra todo lo anterior
  background(cBackground);
}


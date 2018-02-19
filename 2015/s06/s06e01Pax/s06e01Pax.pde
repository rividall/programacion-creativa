//UDD - Expresión digital II
//S06c01Pax
/*Certamen 1: Dividi el canvas en 4 y cada vez que el mouse se posiciona sobre alguna de estas divisiones 
 aparece un rectangulo de color diferente y desaparece cuando el mouse sale del cuadrante. 
 Luego hice que una fila de elipses siguiera el mouse y mientras mas arriba este el mouse el espacio de las elipses 
 disminuye y aumenta el numero de elipses. 
 Despues aparece una grilla de elipses que cambia de color junto con los cuadrantes mencionados antes. 
 Al hacer click aparace un rectangulo de color amarillo que sigue al mouse.
 y apretando las teclas b y n  cambia el color de fondo, tambien el borde de los elipses de la grilla y su color.
 */

//variables
int x = 0, w;
//variables de color
color t, r, rt, b, g, n, rtt;

void setup() {
  size(1280, 800);
  //colores
  t = color (6, 255, 192); //turqueza
  r = color (232, 1, 20);//rojo
  rt = color (random(6, 232), random( 0), random( 0));//random 1
  rtt = color (random(101), random(232), random(180));//random2
  b = color(255);//blanco
  g = color(125);//gris
  n = color(0);//negro
  //variable de stroke
  w = 0;//
}

void draw() {
  background(b); 
  
  // Cuadrantes que aparecen con el mouse
  if (mouseX < width/2  && mouseY < height*0.5) { //primer cuadrante
    fill(t);
    rect(0, 0, width/2, height/2);
  } else if (mouseX < width/2  && mouseY >= height*0.5) {//segundo cuadrante
    fill(r);
    rect(0, height/2, width/2, height/2);
  } else if (mouseX >= width/2  && mouseY < height*0.5) {//terce cuadrante
    fill(0);
    rect(width/2, 0, width/2, height/2);
  } else if (mouseX >= width/2  && mouseY >= height*0.5) {//cuarto cuadrante
    fill(g);
    rect(width/2, height/2, width/2, height/2);
  }
  //For para puntos del fondo con separación de 60px
  for (int i = 10; i < width; i = i+60) {
    for (int j = 0; j < height; j = j+60) {
      ellipse(i, j, 20, 20 );
      strokeWeight(w);
      stroke(n);
    }
  }
  x = 0;
//while que genera fila de punto que siguen el mouse en eje Y
  while (x < width) {
    if (mouseX < 1) {
      x = x + 50;
    } else {
      x = x + mouseY + 10;
    }
    if (mouseY > 250) {
      fill(rtt);
    } else {
      fill (rt);
    }
    println(mouseY);
    noStroke();
    ellipse(width/2, x, 50, 50);
  }
//Mousepressed que muestra recatangulo amarillo que sigue al mouse
  if (mousePressed) {
    fill(255, 231, 0);
    rect(mouseX, mouseY, 100, 100);
  }
}
//Teclas 
void keyPressed() {
  if (key == 'n') {
    b = color (0);//que cambia el color del fondo
    w = 8;//cambia fill
    n = (255);//cambia color
  } 
  if (key == 'b') {
    b = (255);//que cambia el color del fondo
    w = 2;//cambia fill
    n = (0);//cambia color
  }
}


//udd - expresión digital II
//s07t01Pax
//crear dos funciones especificas que dibujen 2 elementos y que se pueda interactuar con estos.
//Al mover el mouse, el triangulo y los elipses cambian de tamaño. 
//Al hacer click, el mosaico cambia de posición. Al mover el mouse
//en el eje y, cambia el color del mosaico. Al apretar las flechas de
//izq y derecha, cambia el color del fondo.

//variables
color cr, ct, cn, cb, c3, cg, c4, ctrans, cro;
float st, a, b;


void setup() {
  size (600, 600); 
  smooth();
  st = 0; //stroke lineas
  a = 0;
  b = 0;

  //colores
  ct = color (6, 255, 192, 220);
  cr = color (232, 1, 20, 200);
  cn = color (0);
  cb = color (255);
  //color nuevo
  cro = color(255, 120, 63, 200);
  c3 = cn;
  c4 = cb;
  cg = color(152);
  ctrans = color(255, 255, 255, 200);
}

void draw () {
  background (c3);
  strokeWeight(2);
  stroke(cn);
  triangulo (mouseX, mouseY, mouseY*0.3);
  mosaico (450, 550, 300, 450, 500, 350);
}

void triangulo (float posx, float posy, float altura) {

  //triangulo 
  fill(ct);
  noStroke();
  triangle(posx, posy, 300, 200, 50, 300);
  fill(cr);
  triangle(100, 100, posx, posy, 50, 300);
  fill(cro);
  triangle(100, 100, 300, 200, posx, posy);

  //elipses del triangulo
  fill(cro);
  ellipse(posx + altura*2, posy - altura, altura, altura);
  fill(cr);
  ellipse(posx - altura*2, posy - altura/2, altura, altura);
  fill(ct);
  ellipse(posx, posy + altura, altura, altura);
}

void mosaico (float x1, float y2, float x2, float y1, float x3, float y3) {
  translate(a, b);
  //octagono
  fill(c4);
  beginShape();
  vertex(x1, y2); 
  vertex(350, y2); 
  vertex(x2, 500); 
  vertex(x2, 400); 
  vertex(350, y3); 
  vertex(x1, y3); 
  vertex(x3, 400); 
  vertex(x3, 500); 
  endShape(CLOSE); 


  //hexagono
  fill(cg);
  noStroke();
  beginShape();
  vertex(x1, y2);
  vertex(350, y2);
  vertex(x2, y1);
  vertex(350, y3);
  vertex(x1, y3);
  vertex(x3, y1);
  endShape(CLOSE);

  //circulo blanco
  ellipse(400, y1, 80, 80);
  //lineas negras
  fill(cn);
  strokeWeight(st);
  stroke(cn);
  line(x1, y2, 350, y3);
  line(x1, y3, 350, y2);

  fill(cg);
  strokeWeight(st);
  line(x2, y1, x3 - x2/3, y2 - y1 /4.5);
  line(x3 - x2/3, y2 - y1 /4.5, x3, y1);

  //if que cambia color, stroke, transparencia
  if (mouseX < width/2  && mouseY < height*0.5) {
    cg = ctrans;
    c4 = ct;
    st = 0;
  }
  if (mouseX < width/2  && mouseY >= height*0.5) {
    cg = cb;
    c4 = cr;
    st = 5;
  }
  if (mouseX >= width/2  && mouseY < height*0.5) {
    cg = ctrans;
    c4 = ct;
    st = 0;
  }
  if (mouseX >= width/2  && mouseY >= height*0.5) {
    cg = cb;
    c4 = cr;
    st = 5;
  }
  if (mousePressed) {
    a = 100;
    b = -300;
  } else {
    a = 0;
    b = 0;
  }
} 

//flechas cambian el color de fondo
void keyPressed () {
  if (key == CODED) {
    if (keyCode == LEFT) {
      c3 = cg;
    }
    if (keyCode == RIGHT) {
      c3 = cn;
    }
  }
}

/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea.
Tienes un error de lógica al escribir dentro de la función mosaico, las condicionales para mousePressed.
Es una buena práctica escribir por separado dentro del void mousePressed(){} todas las interacciones que 
quieras que estén en el programa. 
En el caso de tu programa al usar variables globales dentro de las condicionales de mousePressed,
no debería estar en la función mosaico.
*/

//udd - expresión digital II
//s07t01berni
//Creación de dos funciones específicas, Flor y Flor2. 
//Primer elemento pueden ser controlado con el movimiento del mouse
//por el canvas, reduce y agranda su tamaño por el eje X y tiene una rotación constante.
//Segundo elemento puede ser controlado con el movimiento del mouse
//por el eje Y, reduce y agranda su tamaño por el eje Y. 
//Tienen cierta transparencia que al juntarse una arriba de la otra
//permite la mezcla de color de mabas dos.
// Con diferentes teclas del teclado, van cambiando los colores de 
//los elementos y el canvas. (a,z,s,x,d,c)

//variables de color
color  bg1, bg2, b, b2, c, c2, d, d2, e, e2, f, g;
//rotación
float r;

void setup() {
  size (500,500);
  noStroke();
  smooth();
  
  bg2 = color(0); //negro
  b = color(255, 0, 98, 90); //rosado 
  c = color(221, 142, 178, 90); //rosado claro
  d = color(6, 252, 252, 90); //celeste
  e = color(2, 198, 174, 90); //celeste oscuro
  b2 = color(255, 0, 98, 90); //rosado
  c2 = color(221, 142, 178, 90); //rosado claro
  d2 = color(6, 252, 252, 90); //celeste
  e2 = color(2, 198, 174, 90); //celeste oscuro 
  f = color(255); //banco
  
  bg1 = bg2;
  //rotación
  r = 0;
} 

void draw(){
  background(bg1);
  for (float i = 10; i < width + 10; i += 20) {
    for (float j = 10; j < height + 10; j += 20) { 

      stroke(d);
      strokeWeight(10);
      point(i, j);
    }
  }

  Flor2(mouseY, mouseX, mouseY* .04);
  
  translate(mouseX, mouseY);
  rotate(r);
  r += 0.03;
  Flor(0, 0, mouseX* .05);
  
} 

//letras del teclado cambian el color del fondo y elementos
void keyPressed() {
  if(key == 'a') {
    bg1 = f; 
  }
  if(key == 'z') {
    bg1 = bg2;
  }
  if(key == 's') {
    b = b2;
    c = c2;
  }
  if(key == 'x') {
    b = e2;
    c = f;
  }
  if(key == 'd') {
    d = d2;
    e = e2;
  }
  if(key == 'c') {
    d = c2;
    e = bg1;
  }
} 

/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea.
La lógica de cambiar colores entre ellos con dos letras distintas 
es recomendado hacerlo solo con una e incluir booleans para eso.
Como requerimientos de notación, las funciones se escriben con minúsuculas.
Esto es fundamental al momento en que lleguemos a escribir Clases, que son con Mayúsuclas
y así evitar confucinoes de código.
Puedes investigar hacer las flores son for loop, haciendo rotar las ellipses
y que se disminuya o aumente su tamaño con i y dividir con TWO_PI (360º) en 6
*/   

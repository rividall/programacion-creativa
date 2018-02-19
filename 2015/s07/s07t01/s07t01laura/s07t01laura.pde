//UDD - Expresion Digital II
//s07t01laura
/*funciones propias que dibujan cuadrados, 
lineas y circulos y fomran una especie de mandala geometrica*/
float dig = 45.0;
color r, a, b, n;


void setup() {
  size(600, 600);
  background(25);
  smooth();
  
//inicialisacion colores 
  r = color (255, 140, 239);//rosado
  a = color (251, 255, 158);//amarillo
  b = color (255);//blanco
  n = color (0);
}

void draw() {
  superduper (mouseX, mouseY, mouseX);
  superstar (300, 300, mouseX);
  superlinea(mouseX, mouseY, mouseX);
}

// funcion propia donde se dibuja una linea entremedio de los cuadrados
void superlinea (float posx, float posy, float ancho) {
  if (mousePressed) {
    stroke(a);
    strokeWeight(4);
    pushMatrix();
    translate(300, 300);
    rotate(radians(frameCount * 22.5  % 360));
    line(posx, posy, posx + ancho, posy + ancho);
    popMatrix();
  }
}
//funcion propia donde se dibujan los cuadrados que rotan
void superduper(float posx, float posy, float ancho) {
  if (mousePressed) {
    fill(r);
    stroke(r);
    strokeWeight(6);
    pushMatrix();
    translate(300, 300);
    rotate(radians(frameCount * 45  % 360));
    rect(posx, posy, ancho, ancho);
    popMatrix();
  }
}
// funcion que dibuja 2 circulos uno mas central y otro x fuera
void superstar(float posx, float posy, float ancho) {
  if (keyPressed) {
    noFill();
    stroke(a);
    strokeWeight(3);
    ellipse (posx, posy, ancho * 4.5, ancho * 4.5);
    //circulo central relleno
    noFill();
    stroke(a);
    strokeWeight(3);    
    ellipse (posx, posy, ancho, ancho);
    
  }
}


/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea. 
La lógica de cambiar colores entre ellos con dos letras distintas tiene errores de lógica, 
es recomendado hacerlo solo con una e incluir booleans para eso.

La lógica de usar un keyPressed dentro de cada función llega a un flujo erróneo del programa
Una buena práctica es escribir las funciones gráficas por separado y usarlas por medio
del voi KeyPressed de manera separada. 
Trata de reescribir el código de esta manera.
*/

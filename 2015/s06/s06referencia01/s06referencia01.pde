// UDD - Expresión Digital II
// s06referencia01 todas las funciones y argumentos vistos en las últimas semanas


//Conocimientos hasta ahora:
//Funciones:
size(width, height);
//comentarios
point(x, y);
line(x1, y1, x2, y2);

// rect
rect(x, y, width, height);
rectMode(CORNER); 
CORNERS, CENTER, RADIUS

// ellipse
ellipse(x, y, width, height);
ellipseMode(CENTER); 
RADIUS, CORNER, CORNERS

// relleno
noFill();
fill(rgb);
fill(rgb, alpha); 
fill(gray);
fill(gray, alpha);
fill(v1, v2, v3);
fill(v1, v2, v3, alpha);

// color stroke
noStroke();
stroke(rgb);
stroke(rgb, alpha); 
stroke(gray);
stroke(gray, alpha);
stroke(v1, v2, v3);
stroke(v1, v2, v3, alpha):

// tipo de color
colorMode(RGB); 
HSB
colorMode(mode, max);

// tipo de stroke
strokeWeight(weight); 
strokeJoin(MITER); 
ROUND, BEVEL
strokeCap(ROUND); 
SQUARE, PROJECT

//Operators
% (modulo)
* (multiply)
*= (multiply assign)
+ (addition)
++ (increment)
+= (add assign)
- (minus)
-- (decrement)
-= (subtract assign)
/ (divide)
/= (divide assign)

//Operadores Lógicos:
! (logical NOT)
//pendiente pero si quieren usarlos hay referencia y los puedo ayudar en esto 
&& (logical AND)
|| (logical OR)

//Relational Operators
!= (inequality)
< (less than)
<= (less than or equal to)
== (equality)
> (greater than)
>= (greater than or equal to)

//Iteración:
// if
if (expression) { 
  statements
} else if (expression) { 
  statements
} else { 
  statements
}

// for
for (init; test; update) {
  statements
}

// variables
int;
float
color;
boolean;  
mouseX; 
mouseY; 
pmouseX; 
pmouseY; 
mousePressed; 
mouseButton;
random();

//Teclado
void mousePressed() {
}

//Mouse interacción
void mousePressed() {
}
void mouseReleased() {
}
void mouseClicked() {
}
void mouseMoved() {
}
void mouseDragged() {
}
void mouseWheel() {
}


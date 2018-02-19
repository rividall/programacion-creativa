//UDD - Expresion Digital II
//s04t01 - Laura CAlvo
//hacer que una pelota rebote en los bordes con cambio de color y posicion

int c1 = color(255, 140, 239);//rosado
int c2 = color(251, 255, 158);//amarillo
int c3 = color(255, 255, 255);//blanco

float py;// posicion de la pelota en y
float px;//posicion de la pelota en x

float movy = 4;//velocidad en y
float movx = 6;//velocidad en x


void setuo() {
  size(500, 500);
 //colors
  c1 = color(255, 140, 239);//rosado
  c2 = color(251, 255, 158);//amarillo
  c3 = color(255, 255, 255);//blanco

  px = height / 3;//posicion en x dentro del canbas
  py = width / 3;//posicion en y dentro del canbas

  movx = 2;//velocidad a la que se mueve la pelota en x
  movy = 1;// velocidad en la que se mueve la pelota en y
  
}
void draw() {
    background(c1);//color de fondo rosado
    ellipse(px, py, 60, 60); //
    px = px + movx; //se va sumando 2 pixeles a la posicion en el eje y
    py = py + movy; //se va sumando 1 pixeles a la posicion en el eje y
  
  if (px > width ) { //si la elipse se encuentra superior a la mitad del cambas en el eje x
    px = width;
    movx = - movx; //este cambia de direccion
    fill(c2); //elipse tiene relleno amarillo
    stroke(c1);//ellipse un borde rosado
    strokeWeight(60);//el grosor del color rosado es de 60 px
  }
  
  if (py > height ) { //si la posicion de la elipse en el eje y es mayor al alto del canvas
    py = height;
    movy = - movy; //cambia a la direccion contraria en el eje y
    fill(c3); //elipse tiene relleno blanco
    stroke(c2);//ellipse un borde amarillo
    strokeWeight(60);//el grosor del color rosado es de 60 px
  }
  
  if (px < 0) { //posicion en x menor a cero( es para que revote)
    px = 0;
    movx = - movx; //cambia a la direccion contraria en el eje x
    fill(c2); //elipse tiene relleno amarillo
    stroke(c3);//ellipse un borde blanco
    strokeWeight(30);//el grosor del color rosado es de 60 px
  }
  
  if (py < 0) { //posicion en y menos a cero(es para que revote )
    py = 0;
    movy = - movy; //cambia a la direccion contraria en el eje y
    fill(c3); //elipse tiene relleno blanco
    stroke(c2);//ellipse un borde amarillo
    strokeWeight(60);//el grosor del color rosado es de 60 px
  }
}
/*

Cuando trabajas en tu código, eres la única que tiene la responsabilidad por lo que 
se ejecuta, por lo tanto, si no entiendes lo que estás escribiendo, pueden pasar cosas
como la de tu trabajo en donde tu crees que algo está malo, pero no sabes qué.
Particularmente tu void draw está bien escrito, el problema ocurre cuando la pelota
rebota por primera vez que pareciera que desaparece es porque al no tener control de lo 
que haz escrito, la pelota rebota y tiene el mismo color del fondo por eso se crea el efecto.
Efecto que no tenías en mente que pasara. 
Debes tener mucha precaución con cada linea de código que escribes e ir probando cada tanto
si tu código refleja lo que quieres dibujar. 

*/

/*
errores
 0 run
 1 programa: void setup mal escrito
 0 sintaxis
 0 código:
 0 comentario:
 0 variables:
 15 ortografía: espacios
 1 notación: no entrega en la carpeta de la semana, entrega en doble carpeta con su nombre
 0 github: El error de Laura hizo imposible seguir el camino de los commits :/
 */

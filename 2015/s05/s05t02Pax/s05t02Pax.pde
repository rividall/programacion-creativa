//UDD - Expresion Digital II
//s05t01PascualaSylleros
/*
Reescribir la tareas s05e01; hacer que la pelota rebote a traves 
 del canvas y hacer uso de for para separar los puntos del fondo
 */
//variables de colores
color cn, cb, cr, ct;//color negro, blanco,rojo y turqueza cm vairable de color
int z;
//variables de posicion inicial del elipse y de desplazamiento en cada frame
float circleX, circleY, moveX, moveY;

void setup() {
  size(500, 500); 

  //colores
  cn = color(0); // negro
  cb = color(255); // blanco
  cr = color(232, 1, 20); // rojo
  ct = color(6, 255, 192); //turqueza
  z = 4;
  //inicializacion de posicion y movimiento
  circleX = width; 
  circleY = height/2;
  moveX = 4; 
  moveY = 5;
}

void draw() {
  background(cb);

  //posicion y tamaño de la elipse
  ellipse(circleX, circleY, 65, 65); 
  // variable de movimiento 
  circleX = circleX + moveX; 
  circleY = circleY + moveY; 




  // si circleX es mayor, cambia su direccion, fill rojo, stroke turqueza de 5
  if (circleX > width) { 
    moveX = -moveX; 
    fill(cr); 
    stroke(ct);
    strokeWeight(5); 
    z += 5;
  }
  //si circleY es mayor,cambia de dirección, fill negro, stroke turqueza de 40
  if (circleY > height) { 
    moveY = -moveY; 
    fill(cn);
    stroke(ct); 
    strokeWeight(40); 
    z += 8;
  }
  //si circleX es menor cambia de direccion, fill rojo y sroke negro de 15
  if (circleX < 0) {
    moveX = -moveX; 
    fill(cr); 
    stroke(cn); 
    strokeWeight(15); 
    z += 3;
  }
  //si circleY es menor cambia de direccion, fill blanco y stroke turqueza de 60
  if (circleY < 0) { 
    moveY = -moveY; 
    fill(cb); 
    stroke(ct); 
    strokeWeight(60);
    z += 1;
  }
  //for que por cada rebote de la pelota el valor de i o j va sumando el valor de la variable z
  for (int i = 0; i <= width; i += z) {
    for (int j = 0; j <= height; j += z) {
      ellipse(i, j, 20, 20);
      fill(cr);
      noStroke();
    }
  }
}

/*
errores
 0 run
 0 programa
 12 sintaxis:
   1 inicialización solamente del elemento y no de funciones
     de color, éstas últimas las usaste en cada if y se reescriben
     el objetivo de la tarea era precisamente ese cambio de sintaxis.
     
   2 inicialización de velocidad
   circleX = circleX + moveX;
   circleX += moveX;
   
   4 cambio de valor en velocidad
   moveX = -moveX;
   moveX *= -1;
   
   4 en if: reescribes funciones y no asigana valores
   fill(cr); 
   stroke(ct);
   strokeWeight(5);
   Debes usar una nueva variable para cada función
   cr = cr1; por ejemplo
   
   1 for loop: dibujas y luego pintas por eso
   el primer elemento no tiene los valores que quieres
   ellipse(i, j, 20, 20);
   fill(cr);
   noStroke();
   
   fill(cr);
   noStroke();
   ellipse(i, j, 20, 20);
 
 0 código:
 1 comentario: descripción en bloque de comentario
 0 variables:
 4 ortografía: espacios 
 0 notación: 
 0 github: no hay commit por problema con archivo de Laura 
 */

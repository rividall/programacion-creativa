//UDD-Expresión Digital II
//s04t01Vicente ¿porqué acá escribes bien la notación y en el archivo no? pierdes puntos innecesariamente
//Mover un elemento que rebote en los bordes del canvas


  int color_b; 
  int color_n;
  int color_a;
  int color_y; //variables colores

  float circulo_x;
  float circulo_y;
  float movimiento_x;
  float movimiento_y;


void setup() {
  
  size(700, 400); //tamaño canvas
  stroke(255); // este es el color inicial de la pelota
  strokeWeight(0); //color pelota inicial, nopoh! este es tamaño de la linea de la pelota
  
  color_n = color(0); //negro
  color_b = color(255); //blanco
  color_a = color(69, 119, 232); //azul
  color_y = color(232, 182, 71); //amarillo
  circulo_x = 0; //posicion inicial 
  circulo_y = 0; //posicion inicial
  movimiento_x = 1.9; //cuanto se mueve el elemento
  movimiento_y = 7; //cuanto se mueve el elemento
  frameRate(20);
}

void draw() {
  background(color_a); //color de fondo azul
  ellipse(circulo_x, circulo_y, 40, 40);
  for(int i = 0; i < width; i +=10){
        fill(color_y);
         ellipse( i, height/2, random(10), random(50));
       }
 
  circulo_x = circulo_x + movimiento_x; //movimiento horizontal del elemento (1.9px/frame)
  circulo_y = circulo_y + movimiento_y; //movimiento vertical del elemento (7px/frame)

  if (circulo_x > width) { //si el movimiento horizontal es mayor al ancho del canvas
//    circulo_x = width;     // realiza el movimiento en sentido contrario
    movimiento_x = - movimiento_x;
    println("muy a la derecha"); //se despliega info en la pantalla de que el elemento se encuentra muy a la derecha del canvas
    fill(color_b);
    strokeWeight(19);
    stroke(color_y);
  }
  if (circulo_y > height) { //si el movimiento vertical es mayor al ancho del canvas
//    circulo_y = height;     // realiza el movimiento en sentido contrario
    movimiento_y = -movimiento_y;
    println("muy abajo"); //se despliega info en la pantalla de que el elemento se encuentra muy abajo del canvas
    fill(color_y);
    strokeWeight(5);
    stroke(color_n);
  }
  if (circulo_x < 0) { //si el movimiento vertical es  menor a 0 horizontalmente
//    circulo_x = 0;     // realiza el movimiento en sentido contrario
    movimiento_x = -movimiento_x;
    println("muy a la izquierda"); //se despliega info en la pantalla de que el elemento se encuentra muy a la izquierda del canvas
    fill(color_y);
    strokeWeight(8);
    stroke(color_n);   
  }
  if (circulo_y < 0) {
     //si el movimiento vertical es  menor a 0 veticalmente
//    circulo_y = 0;      // realiza el movimiento en sentido contrario
    movimiento_y = - movimiento_y;
    println("muy arriba");  //se despliega info en la pantalla de que el elemento se encuentra muy arriba del canvas
    fill(color_b);
    strokeWeight(12);
    stroke(color_y);
  }
}
 
 /*
errores
 0 run
 0 programa
 0 sintaxis
 0 código:
 1 comentario: 
 4 variables: primera variable después de cada if no es necesaria
 0 ortografía:
 2 notación: el archivo debe ser son minúsculas, sin guión y la inicial del nombre en mayúscula, la ruta es en la carpeta de la semana.
 0 github: El error de Laura hizo imposible seguir el camino de los commits :/
 */

//UDD - Expresion Digital II
//s04e01PaloSastre
//pelota que se mueve en la pantalla

float strokeSize;
int c1;
int c2;
int cy;

void setup() {
  size(500, 500);

  strokeSize = 10; //comentario para el uso de la variable
  //strokeSize = 30;
  c1 = color(255, 151, 161); //comentario para el uso de la variable ROSA
  c2 = color(61, 177, 171);  //comentario para el uso de la variable VERDE
  cy = 0; //comentario para el uso de la variable
}

void draw() {

  background(c1);
  //comentario del bloque de texto
  //Ejemplo: circulo de color verde y stroke blanco en la mitad del ancho
  strokeWeight(30);
  //strokeWeight(strokeSize);
  stroke(255);
  fill(c2);
  ellipse(width/2, cy, 100, 100);

  //si el circulo está en la mitad de la pantalla, el strokeweight es 10
  //si el circulo está en la mitad de la pantalla, el background y el color del elipse cambian
  //el comentario es: si el circlo PASA MÁS DE LA MITAD DE LA PANTALLA, tu comentario dice que solamente cuando el circulo está en la mitad, algo pasará
  if (cy >= height/2) {
    //comentario de lo que hace si el if es verdadero
    background(c2);
    strokeWeight(strokeSize);
    stroke(255);
    fill(c1);
    ellipse(width/2, cy, 100, 100);
  } 

  //si la elipse llega abajo, vuelve a arriba
  if (cy == height) {
    cy = 0;
    //strokeSize = 30;
  }

  //el circulo va sumando uno en el eje y
  cy = cy + 1; //para sumar de 1 en 1 el argumento es ++
  //cy++;
}


/*
errores
 0 run
 0 programa
 2 sintaxis: uso de strokeSize, diferencia entre el comentario y lo escrito, dos veces linea 31, 32
 1 código: argumento válido, pero de notación incorrecta linea 50
 6 comentario: falta de comentario del uso de variables y bloques de texto
 0 variables:
 0 ortografía:
 1 notación: carpeta s04e01PaloSastre archivo s04e01PaloSastreLoop.pde 
 1 github: summary = s04e01PaloSastreLoop no es igual al ejercicio s04e01PaloSastre
 */

/*
 Tienes un error de sintaxis en el uso de la variable strokeSize, la creaste para ser usada en strokeWeight
 y en tu programa strokeWeight lo usas dos veces y la variable strokeSize una sola vez.
 Al inicializar la variable strokeSize = 10 solo la usas en el IF, pero debiste usarla en cada momento 
 de strokeWeight, comenté 3 lineas que es lo que debería haber estado escrito con respecto al uso de 
 la variable strokeSize que creaste, las lineas son:
 14 en reemplazo de la 13
 26 en reemplazo de la 25
 añadir la 46
 
 */

//UDD - Expresión Digital II
//s05t02ange
/*
reescribir s05e01 con nuevos comentarios y parametros de mejor 
 escritura, también mejorar el for y yo cambie el fondo
 */

//varibles de colores
color c1b, c2n, c3c, c4o;

//variable de fill y stroke
color cEllipse, cStroke, cBackground, cPelotitas;

//variables de posición y dirección
float px, py, dx, dy;

//varibles de distancia en el fondo, strokeWeight
int z, sg; 

void setup() {
  size(500, 500); //tamaño del canvas de 500 px por 500 px

  //colores
  c1b = color(255); //blanco
  c2n = color(0); //negro
  c3c = color(32, 198, 234); //celeste
  c4o = color(234, 89, 32); //naranjo

  //inicialización de colores para ellipse, stroke, background, pelotitas
  cEllipse = c2n;
  cStroke = c2n;
  cBackground = c3c;
  cPelotitas = c1b;

  //inicialización de posición y dirección
  //la posición no se inicializa en 0 porque luego no se pude restar el diametro para que rebote bien
  px = width/4; 
  py = height/2;
  dx = 8;
  dy = 5;

  //inicialización de distancia pelotas del fondo
  z = 10;
  sg = 10;
}

void draw() {
  background(cBackground); 
  //for que genera pelotitas de fondo que van de i,j y su tamaño es mas grande hacia la esquina inferior derecha por el loop 
  for (float i = 0; i <= width; i += z) {
    for (float j = 0; j <= height; j += z) { 
      fill(cPelotitas);
      noStroke(); 
      ellipse(i, j, i/50, j/50);
    }
  }
  //Colres de ellipse, stroke, grosor stroke y tamaño ellipse
  fill(cEllipse);
  stroke(cStroke);
  strokeWeight(sg);
  ellipse(px, py, 60, 60);

  //velocidad
  px = px + dx;
  py = py + dy;

  //si px es mayor al ancho, cambia dx a su negativo, background naranjo, fill celeste, stroke celeste de 60 px, fill pelotitas negro
  if (px > width - 60) { //restar 60 equivale a el radio de la ellipse más la mitad del stroke para que rebote en el borde
    dx = -dx;
    cBackground = c4o;
    cEllipse = c3c; 
    cStroke = c3c;
    sg = 60;
    cPelotitas = c2n;
  }

  //si px en menor que 0, cambia dx a su negativo, background celeste, fill naranjo, stroke naranjo de 40 px, fill pelotitas blanco
  if (px < 0 + 50) { //sumar 50 equivale a el radio de la ellipse más la mitad del stroke para que rebote en el borde
    dx = -dx;
    cBackground = c3c;
    cEllipse = c4o;
    cStroke = c4o;
    sg = 40;
    cPelotitas = c1b;
  }

  //si py es mayor que en alto, cambia dy a su negativo, background blanco, fill negro, stroke negro de 0 px, fill pelotitas celestes
  if (py > height - 30) { //restar 30 equivale a el radio de la ellipse
    dy = -dy;
    cBackground = c1b;
    cEllipse = c2n;
    cStroke = c2n;
    sg = 0;
    cPelotitas = c3c;
  }

  //si py es menor que 0, cambia dy a su negativo, background negro, fill celeste, stroke naranjo de 20 px, fill pelotitas naranjas
  if (py < 0 + 40) { //sumar 40 equivale a el radio de la ellipse más la mitad del stroke para que rebote en el borde
    dy = -dy;
    cBackground = c2n;
    cEllipse = c3c;
    cStroke = c4o;
    sg = 20;
    cPelotitas = c4o;
  }
}

/*
errores
 0 run
 0 programa
 0 sintaxis
 0 código:
 1 comentario: descripción del programa en bloque de comentario
 0 variables:
 1 ortografía: 
 1 notación: s05t02ange - s05t02Ange
 2 github: s05t02ange + la descripción dice "prematuros"
 
*/

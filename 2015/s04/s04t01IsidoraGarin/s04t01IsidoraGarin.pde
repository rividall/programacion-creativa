// UDD - Expresión Digital II
// s04t01IsidoraGarín
// Mover un objeto que rebote en los bordes del canvas, con cambio de posición, tamaño y color


float posx; // posición en x
float posy; //posición en y
float velx; //velocidad de x
float vely; //velocidad de y
float dirx; //dirección de x
float diry; //dirección de y
float escala; //variable para cambiar tamaño de la ellipse
float sw; //strokeWeight
int bla; //color blanco
int neg; //color negro
int tur; //color turquesa
int ver; //color verde

void setup() {

  size(500, 500); //tamaño del canvas

  posx = width/3; //posición en x
  posy = width/3; //posición en y
  velx = 1.5; //velocidad en x de 1,5
  vely = 2; //velocidad en y de 2
  dirx = 1; //dirección en x de 1
  diry = 1; //dirección en y de 1
  sw = 4; //strokeWeight de 4
  bla = color(255, 255, 255); //color blanco
  neg = color(0, 0, 0); //color negro
  tur = color(27, 204, 167); //color turquesa
  ver = color(128, 255, 130); //color verde

  frameRate(30); //cantidad de cuadros por segundo
}

void draw() {

  escala = random(50); //random de escala de ellipse (tamaño) entre 1 y 50
  
  posx = posx + velx * dirx; //posición de x es igual a la posición de x más la velocidad de x por la dirección de x
  if (posx > width - escala/2) { //si la posición en x es mayor al ancho del canvas menos la mitad del diámetro (al restarle la mitad del diámetro evita que se corte la pelota)...
    dirx = dirx * -1; //dirección de x es igual a la dirección en x multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
    fill(tur); //cambiar relleno a color turquesa
    stroke(ver);//hacer stroke color verde
    strokeWeight(sw); //strokeWeight de 4
  }

  if (posx < 0 + escala/2) { //si la posición en x es menor a 0 más la mitad del diámetro...
    dirx = dirx * -1; //dirección de x es igual a la dirección en x multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
    fill(ver); //cambiar relleno a color verde
    stroke(bla); //hacer stroke color blanco
    strokeWeight(sw); //strokeWeight de 4
  }

  posy = posy + vely * diry;//posición de y es igual a la posición de y más la velocidad de y por la dirección de y
  if (posy > height - escala/2) { //si la posición en y es mayor al alto del canvas menos la mitad del diámetro...
    diry = diry * -1; //dirección de y es igual a la dirección en y multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
    fill(bla); //cambiar relleno a color blanco
    stroke(tur); //hacer stroke color turquesa
    strokeWeight(sw); //strokeWeight de 4
  }

  if (posy < 0 + escala/2) { //si la posición en y es menor a 0 más la mitad del diámetro...
    diry = diry * -1; //dirección de y es igual a la dirección en y multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
    fill(bla); //cambiar relleno a color blanco
    stroke(tur); //hacer stroke color turquesa
    strokeWeight(sw); //strokeWeight de 4
  }

  background(neg); //fondo negro; se pone acá para mantener siempre el fondo negro, con las condiciones genera "estelas" de los colores
  //al no usar funciones de stroke, strokeWieght y fill para inicializar la pelota y tampoco antes de dibujarla por primera vez, (en ésta línea) la pelota parte con los colores por defecto de Processing
  ellipse(posx, posy, escala, escala); //posición de ellipse en posx y posy, tamaño dependiendo del random de la escala
  
}


/*
errores
 0 run
 0 programa
 0 sintaxis
 1 código: no inicializa funciones de stroke, strokeWeight y fill
 0 comentario:
 0 variables:
 25 ortografía: 25 espacios + 1 void draw estaba indentado
 2 notación: el archivo debe ser son minúsculas, sin guión y la inicial del nombre en mayúscula, la ruta es en la carpeta de la semana.
 0 github: El error de Laura hizo imposible seguir el camino de los commits :/
 */

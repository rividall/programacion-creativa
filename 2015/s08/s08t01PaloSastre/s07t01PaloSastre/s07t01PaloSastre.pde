//UDD - Expresion Digital II
//s07t01PaloSastre
//Creación de dos funciones específicas, gráficamente diferentes, para dibujar un elemento cada una. Un elemento
//gira y para de girar al hacer click. El otro se va haciendo grande hasta llegar a un maximo y se vuelve a hacer
//pequeño. Con las teclas 'a' y 's', cambian los colores.

color t, r, n, b, bt, na, ch, co, cb;
boolean dirrotar;
float rotar;
float escalar;
float escalar2;

void setup() {
  size(500, 500);

  escalar = 0.0;
  escalar2 = 0.0;

  //inicialización de colores  
  t = color(61, 177, 171); //turquesa
  r = color(255, 151, 161); //rosado
  n = color(0); //negro
  b = color(255); //blanco

  //inicialización de colores extras
  bt = color(255, 255, 255, 200); //blanco transparente
  na = color(255, 159, 59); //naranjo

  ch = r; //color rosado del hexagono
  co = na; //color naranjo del octagono
  cb = t; //color turquesa del background

  dirrotar = false;
}

void draw() {
  background(cb);

  escalar = escalar + 0.009;
  escalar2 = cos(escalar)*1;

  //el punto 0,0 del canvas está al centro
  translate(mouseX, mouseY);
  //el hexagono rota hacia la izquierda
  rotate(rotar);
  hexagono(ch);
  rotar = rotar - 0.02;

  if (dirrotar == false) {
    rotar = rotar - 0.02;
  }
  if (dirrotar == true) {
    rotar = rotar + 0.02;
  }

  scale(escalar2);
  octagono(co);
}

void mousePressed() {
  dirrotar =! dirrotar;
}

void keyPressed() {

  //Si apreto "a", el hexagono es naranjo, background es negro
  if (key == 'a') { 
    ch = na;
    cb = r;
    co = t;
  }

  //Si apreto "s", el hexagono es rosado, background es turquesa
  if (key == 's') {
    ch = r;
    cb = t;
    co = na;
  }
}


/*
Tus funciones no se sustituyen entre sí, requerimiento de la tarea. 
La lógica de cambiar colores entre ellos con dos letras distintas tiene errores de lógica, 
es recomendado hacerlo solo con una e incluir booleans para eso.
Puedes investigar: 
  1: por lógica si al hacer 'a' o 's' se sustituyen los estados,
  es recomendado hacer una boolean y usar el operador =! así 
  al hacer un click sin importar el estado inicial de colores, 
  estos se alternaran constantemente, en tu código si apreto 's' nada cambia.

*/

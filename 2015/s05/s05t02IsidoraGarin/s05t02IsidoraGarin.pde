//UDD - Expresión Digital II
//s05t02IsidoraGarín
//Reescribir el programa s05e01 bajo nuevos parámetros de notación


//Variables de posición, velocidad y dirección ejes x e y
float posx, posy, velx, vely, dirx, diry;
//Variables tamaño de diámetro, stroke y cambio dirección rectángulos
float dia, sw, m, n;
//Variables para colores
color bla, neg, tur, ver;
//Variables para fill y stroke de color
color colorEllipse, colorStroke;


void setup() {
  size(500, 500);

  //Inicialización de posición, velocidad y dirección eje x e y
  posx = width/3;
  posy = width/3;
  velx = 1.5;
  vely = 2;
  dirx = 1;
  diry = 1;

  //Inicialización de diámetro, strokeWeight y dirección rectángulos
  dia = 30;
  sw = 4;
  m = 4;
  n = 6;

  //Colores
  bla = color(255, 255, 255); //blanco
  neg = color(0, 0, 0); //negro
  tur = color(27, 204, 167); //turquesa
  ver = color(128, 255, 130); //verde

  //Asignación de color a colorEllipse y colorStroke
  colorEllipse = bla;
  colorStroke = tur;
}


void draw() {
  //Color de fondo, ellipse, stroke y tamaño ellipse
  background(neg);
  fill(colorEllipse);
  strokeWeight(sw);
  stroke(colorStroke);
  ellipse(posx, posy, dia, dia);

  //Velocidad
  posx = posx + velx * dirx;
  posy = posy + vely * diry;

  //Si posx mayor al ancho, cambia dirección, fill turquesa, stroke verde de 4
  if (posx > width - dia/2) {
    dirx *= -1;
    colorStroke = ver;
    //strokeWeight(sw);
    colorEllipse = tur;
    //if para cambio de valor de m y n
    if (m == 4) {
      m = 6;
      n = 4;
    } else if (m == 6) {
      m = 4;
      n = 6;
    }
  }

  //Si posx menor a 0, cambia dirección, fill verde, stroke blanco de 4
  if (posx < 0 + dia/2) {
    dirx *= -1;
    colorStroke = bla;
   // strokeWeight(sw);
    colorEllipse = ver;  
    //if para cambio de valor de m y n
    if (m == 4) {
      m = 6;
      n = 4;
    } else if (m == 6) {
      m = 4;
      n = 6;
    }
  }

  //Si posy mayor al ancho, cambio dirección, fill blanco, stroke turquesa de 4
  if (posy > height - dia/2) {
    diry *= -1;
    colorStroke = tur;
    //strokeWeight(sw);
    colorEllipse = bla;  
    //if para cambio de valor de m y n
    if (m == 4) {
      m = 6;
      n = 4;
    } else if (m == 6) {
      m = 4;
      n = 6;
    }
  }

  //Si posy menor a 0, cambia dirección, fill blanco, stroke turquesa de 4
  if (posy < 0 + dia/2) {
    diry *= -1;
    colorStroke = tur;
    //strokeWeight(sw);
    colorEllipse = bla;
    //if para cambio de valor de m y n
    if (m == 4) {
      m = 6;
      n = 4;
    } else if (m == 6) {
      m = 4;
      n = 6;
    }
  }

  //for para generar un patrón de rectángulos que cambian de dirección
  for (int i = 0; i <= width; i += 10) {
    for (int j = 0; j <= height; j += 10) {
      noStroke();
      //fill (tur);
      rect(i, j, m, n);
    }
  }
}

/*
errores
 0 run
 0 programa
 0 sintaxis
 0 código:
 0 comentario:
 4 variables: strokeWeight(sw); si no cambia luego de la inicialización no es necesario que esté en las condicionales IF
 18 ortografía: espacios entre función y (argumentos); 
 0 notación: 
 0 github:
*/

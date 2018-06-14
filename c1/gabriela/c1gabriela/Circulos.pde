// Universidad del Desarrollo - Facultad de Diseño - Certamen 1 - Gabriela Vergara Barentin
class Circulos {
  // Se declaran las variables globales:
  color [] colores;
  int x, y, tam, p, q, cant, col;
  int r = 0;
  float cantt, di, dMap;
  color [] paleta = {#D9E1A6, #15938A, #6DAB79, #003443}; // Código de colores de void anillos.
  color f, from, to;
  color [] colorr;

  Circulos(int i) {
    colores = new color [7]; // Lista de colores.
    colorr = new color [24]; // Lista de colores anillos.
    colores[0] = color(150, 74, 129); // Rosado.
    colores[1] = color(64, 54, 133); // Lila.
    colores[2] = color(12, 27, 72); // Azul, color de fondo.
    colores[3] = color(230, 183, 120); // Naranjo claro.
    colores[4] = color(205, 109, 98); // Naranjo.
    colores[5] = color(196, 64, 60); // Rojo.
    colores[6] = color(139, 32, 82); // Morado.

    // Se declara el valor de orígen de las siguientes variables:
    x = 75;  // Posición en x.
    y = 75;  // Posición en y.
    tam = 8; // Tamaño de circulos de void cir().
    q = i * 15; // Velocidad.
    cant = 24; // Cantidad de círlulos de void cir() y grados en torno al orígen width/2, height/2.

   from = color(150, 74, 129); // Desde el color rosado.
   to = color(64, 54, 133);  // Al color lila.
   for (int m = 0; m < 24; m++) { // Crear 24 colores.
       float amt = map(m, 0, 24, 0, 1); // Mapa de 24 colores.
       colorr[m] = lerpColor(from, to, amt); // Crear un lerp que hace que hayan 22 colores entre el rosado al lila. 24 colores en total.
     }
  }

  void cir() {
    if (n == 0) {
      q++; //  El aro gira hacia la derecha.
      p++; // El anillo gira hacia la derecha.
    } else if (n == 1) {
      q--; // El aro gira hacia la izquierda.
      p--; // El anillo gira hacia la izquierda.
    }
    // Construcción de un anillo de círculos.
    pushMatrix();
    translate(width / 2, height / 2); // Nuevo centro, si no, girarían en torno a 0,0.
    rotate(radians(q)); // Rotación en torno al nuevo orígen (width/2, height/2).
    pushMatrix();
    translate(width / 4, height / 4); // Los círculos pequeños giran en torno al círculo que forman.
    rotate(radians(p));  //  Rotación en torno al orígen (width/4, height/4).
    for (int i = 0; i < cant; i++) {
      fill(colorr[i]);
      noStroke();
      ellipse(x, y, tam, tam); // Dibujo de ellipse.
      rotate(radians(360 / cant));  // Dibujar cada "cant" grados entre los 360º de un círculo, en torno al orígen (width/4, height/4).
    }
    popMatrix();
    popMatrix();
  }

  void anillos() {
    // Construcción anillos de círculos.
    pushMatrix();
    translate(width / 2, height / 2); // Nuevo orígen.
    rotate(radians(r)); // Giro en torno al orígen.
    r++; // Giran hacia la derecha.
    cantt= 40; // cantidad de líneas y de grados.
    for (int k = 0; k < cantt; k++) {
        // val debe ser local a la función y el valor pasado por parametros
      for (int l = 0; l < val; l++) {
        noStroke();
        f= paleta [l % 4]; // 4 = Cantidad de colores que iran en l.
        fill(f, k * 5); // 5 = Nivel de opacidad en k.
        ellipse(2+ l * 25, 0, 10, 10); // Dibujo de ellipse.
      }
      rotate(radians(360 / cantt)); // Dibujar cada "cantt" grados entre los 360º de un círculo, en torno al orígen (width/2, height/2).
    }
    popMatrix();
  }

  void cuadrados() {
    // Contrucción de cuadrados.
    rectMode(CENTER); // Se dibujan los rectángulos desde el centro.
    noStroke();
    for (int i = 30; i < width; i+= 50) { // Desde el pixel 30 dibuja 50 cuadrados hasta el ancho.
      for (int j = 30; j < height; j+= 50) {  // Desde el pixel 30 dibuja 50 cuadrados hasta el largo.
        di = dist(mouseX, mouseY, i, j);  // Distancia entre los cuadrados.
        dMap = map(di, 300, 0, 0, 25);  // Mapa de posición de cuadrados. Los cuadrados se agrandan al pasar el mouse en una circunferencia de 300 pixeles.
        if (dMap <= 0) dMap = 0;
        if (dMap < 4) {  // Si dMap es menor a 4, pinta de color naranjo claro.
          fill(colores [3]);
        } else if (dMap <= 10) {  // Si dMap es menor o igual a 10, pinta de color naranjo.
          fill(colores [4]);
        } else if (dMap <= 13) { // Si dMap es menor o igual a 13, pinta de color rojo.
          fill(colores [5]);
        } else if (dMap > 15 ) { // Si dMap es mayor a 15, pinta de color morado.
          fill(colores [6]);
        }
        if (i < mouseX) {  // En el eje x, los cuadrados se acercan al mouse desde la derecha i-dMap y desde la izquierda i+dMap. Se acerca 2 pixeles.
          rect(i+ dMap, j, dMap +2, dMap +2);
        } else {
          rect(i- dMap, j, dMap +2, dMap +2);
        }

        if (j < mouseY) {  // En el eje y, los cuadrados se acercan al mouse desde arriba j-dMap y desde abajo j+dMap.  Se acerca 2 pixeles.
          rect(i, j+ dMap, dMap +2, dMap +2);
        } else {
          rect(i, j- dMap, dMap +2, dMap +2);
        }
      }
    }
  }
}

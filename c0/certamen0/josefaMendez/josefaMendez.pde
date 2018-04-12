/*Certamen 0
 Josefa Méndez Gómez
 5 / 4 / 2018
 Se presenta un sketch cuyas orillas son similares a las ondas de los parlantes
 que represetan el ritmo de ella. Cada barra es creada por un solo rectángulo dependiendo
 de la posición de ella y se le aplica un for loop para repetir la secuencia en todas las orillas.
 Además, los colores estan establecidos en un array para crear una paleta de colores, donde las
 ondas de las orillas tendran colores aleatorios de esa paleta cada vez que se ejecute
 */

ArrayList <Membrana> nMembranas = new ArrayList(); //creo el ArrayList para mi clase

Membrana md; //declaro que mi clase membrana se representa como m Barra de abajo
Membrana mu; //declaro que mi clase membrana se representa como m Barra de arriba
Membrana ml; //declaro que mi clase membrana se representa como m Barra de la izquierda
Membrana mr; //declaro que mi clase membrana se representa como m Barra de la derecha
void setup() {
  size(800, 400); //tamaño del canvas
  noStroke(); //Defino que no tendre color de lineas

  for (int i = 0; i < width; i++) { //Creo un for loop para poder repetir las figuras de mi for loop
    //Inicializo mi clase, establezco los parámetros respectivamente según todas mis opciones de constructor
    md = new Membrana(i * 50, height, 50, 0, 0, 0, random(-98), 0, random(1, 3), -1, 0, 0, 0);
    mu = new Membrana (i * 50, 0, 50, 0, 0, 0, 0, random(98), random(1, 3), 0, -1, 0, 0);
    ml = new Membrana (0, i * 50, 0, random(97), 0, 50, 0, 0, random(1, 3), 0, 0, -1, 0 ) ;
    mr = new Membrana (width, i * 50, 0, 0, random(-98), 50, 0, 0, random(1, 3), 0, 0, 0, -1);
    // se agregan mis posibles objetos a sus respectivas listas
    nMembranas.add(md);
    nMembranas.add(mu);
    nMembranas.add(ml);
    nMembranas.add(mr);
  }
}

void draw() {
  background(230); //tendré un color de fondo casi blanco

  // establezco que para mi lista membrana se verán las siguiente funciones
  for (Membrana md : nMembranas) {
    md.dibujo(); //se mostrará mi dibujo de la barra de abajo
    md.movimientoY(); //establece el movimiento de la barra de abajo
  }

  // establezco que para mi lista membrana se verán las siguiente funciones
  for (Membrana mu : nMembranas) {
    mu.dibujo(); //se mostrará mi dibujo de la barra de arriba
    mu.movimientoY2(); //establece el movimiento de la barra de arriba
  }

  // establezco que para mi lista membrana se verán las siguiente funciones
  for (Membrana ml : nMembranas) {
    ml.dibujo(); //se mostrará mi dibujo de la barra de la izquiersa
    ml.movimientoX(); //establece el movimiento de la barra de la izquierda
  }

  // establezco que para mi lista membrana se verán las siguiente funciones
  for (Membrana mr : nMembranas) {
    mr.dibujo(); //se mostrará mi dibujo de la barra de la derecha
    mr.movimientoX2();//establece el movimiento de la barra de la derecha
  }

  fill(245, 132, 26); //color rojizo
  rect(0, height - 100, 100, 100); //rectangulo inferior derecha
  fill (187, 0, 41); //color mostaza
  rect(width - 100, height - 100, 100, 100); //rectangulo inferior izquierdo
  fill(3, 0, 44); //color azul
  rect(0, 0, 100, 100); //rectangulo superior izquierdo
  fill(252, 224, 130); //color amarillo
  rect(width-100, 0, 100, 100); //rectangulo superior derecho
}

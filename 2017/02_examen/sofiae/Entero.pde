/* Se inicia la clase Entero, en donde se muestran los 365 días del año, con las variables
 máxima y mínima temperatura, máximo punto de rocío y la precipitación. */
class Entero {
  // Declaración de las variables a utilizar.
  float n, c, r, x, y, mint, maxt, rocio, precipitacion, i;

  // Declaración de los parametros a utilizar dentro de la clase.
  Entero(int maxt, int rocio, int precipitacion, int mint, int i) {
    this.i = map(i, 0, 364, 0, TWO_PI);
    this.maxt = map(maxt, 15, 33, 30, 66);
    this.mint = map(mint, 4, 19, 8, 38);
    this.precipitacion = precipitacion;
    this.rocio = rocio;
    this.x = 250; // Mint
    this.r = 120; // Maxt
    this.c = 80; // Rocio
    this.n = 200; // Lluvia
  }

  /* Se inicia la función maxtem, para la máxima temperatura. Se utiliza push y pop
   matrix, para que no afecte a las demás funciones la rotación. */
  void maxtem() {
    pushMatrix();
    rotate(i);
    stroke(#9C64FF);
    strokeWeight(1);
    line(r, y, r+ maxt, y);
    popMatrix();
  } // Fin de la clase maxtem.

  /* Se inicia la función rocio, para el máximo punto de rocío. Se utiliza push y pop
   matrix, para que no afecte a las demás funciones la rotación. */
  void rocio() {
    pushMatrix();
    rotate(i);
    stroke(#FCDB1C);
    line(c, y, c+ rocio, y);
    popMatrix();
  } // Fin de la clase rocío.

  /* Se inicia la función lluvia, para la precipitación. Se utiliza push y pop
   matrix, para que no afecte a las demás funciones la rotación. */
  void lluvia() {
    pushMatrix();
    rotate(i);
    stroke(#E72FF5);
    line(n, y, n+ precipitacion, y);
    popMatrix();
  } // Fin de la clase lluvia.

  /* Se inicia la función mintem, para la mínima temperatura. Se utiliza push y pop
   matrix, para que no afecte a las demás funciones la rotación. */
  void mintem() {
    pushMatrix();
    rotate(i);
    stroke(#03DBFF);
    line(x, y, x+ mint, y);
    popMatrix();
  } // Fin de la función maxtem.

  /* Se crea la función todos, para unificar las funciones nombradas anteriormente en una
   sóla, para así llamar esta función en el void draw. */
  void todos() {
    lluvia();
    mintem();
    maxtem();
    rocio();
  } // Fin de la clase todos.
}
// Fin de la clase Entero.
/* Se inicia la clase Meses, en donde se muestran los 12 meses del año, con los datos de 
 máxima y mínima humedad, el promedio medio del nivel del mar. */
class Meses {
  // Declaración de las variables a utilizar.
  float x, y, maxh, minh, mar, dia, mes, i;

  // Declaración de los parametros a utilizar dentro de la clase.
  Meses(int mar, int maxh, int minh, int dia, int mes, int i) {
    this.i = map(i, 0, 364, 0, TWO_PI);
    this.dia = dia;
    this.mes = mes;
    this.maxh = maxh; 
    this.minh = minh;
    this.mar = map(mar, 1009, 1028, 20, 40);
  }
  /* Se inicia la grilla, para mostrar los 12 meses. Si mes es igual al número de mes que
   se quiere mostrar, se dibuja la función correspondiente.
   */
  void anillos() {
    if (mes == 1) {
      x = width * .20;
      y = height * .3;
      enero();
    } else if (mes == 2) {
      x = width * .40;
      y = height * .3;
      febrero();
    } else if (mes == 3) {
      x = width * .60;
      y = height * .3;
      marzo();
    } else if (mes == 4) {
      x = width * .80;
      y = height * .3;
      abril();
    } else if (mes == 5) {
      x = width * .20;
      y = height * .5;
      mayo();
    } else if (mes == 6) {
      x = width * .40;
      y = height * .5;
      junio();
    } else if (mes == 7) {
      x = width * .60;
      y = height * .5;
      julio();
    } else if (mes == 8) {
      x = width * .80;
      y = height * .5;
      agosto();
    } else if (mes == 9) {
      x = width * .20;
      y = height * .7;
      septiembre();
    } else if (mes == 10) {
      x = width * .40;
      y = height * .7;
      octubre();
    } else if (mes == 11) {
      x = width * .60;
      y = height * .7;
      noviembre();
    } 
    if (mes == 12) {
      x = width * .80;
      y = height * .7;
      diciembre();
    }
  } // Fin de la función anillos.

  // Se inician las funciones de cada mes.
  void enero() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void febrero() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void marzo() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void abril() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void mayo() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void junio() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void julio() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void agosto() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void septiembre() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void octubre() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void noviembre() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  }
  void diciembre() {
    strokeWeight(0.5);
    noFill();
    stroke(#FCDB1C);
    ellipse(x, y, minh, minh);
    stroke(#00CEBB);
    ellipse(x, y, maxh, maxh);
    strokeWeight(0.5);
    stroke(#4E015A);
    ellipse(x, y, mar, mar);
  } // Fin de las funciones de cada mes.
} // Fin de la clase Meses.
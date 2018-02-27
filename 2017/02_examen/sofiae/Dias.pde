/* Se inicia la class Dias, en donde se mostrarán los datos de promedio de humedad, punto
 de rocío y viento. */
class Dias {
  // Declaración de las variables a utilizar.
  float x, y, vis, meanh, meanp, viento, dia, mes;
  // Declaración de los parametros a utilizar dentro de la clase.
  Dias(int vis, int meanh, int meanp, int viento, int dia, int mes) {
    this.dia = dia;
    this.mes = mes;
    this.vis = vis;
    this.viento = map(viento, 2, 29, 4, 58);
    this.meanp = map(meanp, 9, 21, 18, 42);
    this.meanh = meanh;
  }

  /* Se inicia la grilla, para mostrar los primeros días de cada mes. Si día es igual a 1
   & mes es igual a 1 o el mes que se quiera dibujar, se dibuja la función correspondiente.
   */
  void primerosdias() {
    if (dia == 1 && mes == 1) { 
      x = width * .20;
      y = height * .3;
      enero();
    } else if (dia == 1 && mes == 2) {
      x = width * .40;
      y = height * .3;
      febrero();
    } else if (dia == 1 && mes == 3) {
      x = width * .60;
      y = height * .3;
      marzo();
    } else if (dia == 1 && mes == 4) {
      x = width * .80;
      y = height * .3;
      abril();
    } else if (dia == 1 && mes == 5) {
      x = width * .20;
      y = height * .5;
      mayo();
    } else if (dia == 1 && mes == 6) {
      x = width * .40;
      y = height * .5;
      junio();
    } else if (dia == 1 && mes == 7) {
      x = width * .60;
      y = height * .5;
      julio();
    } else if (dia == 1 && mes == 8) {
      x = width * .80;
      y = height * .5;
      agosto();
    } else if (dia == 1 && mes == 9) {
      x = width * .20;
      y = height * .7;
      septiembre();
    } else if (dia == 1 && mes == 10) {
      x = width * .40;
      y = height * .7;
      octubre();
    } else if (dia == 1 && mes == 11) {
      x = width * .60;
      y = height * .7;
      noviembre();
    } 
    if (dia == 1 && mes == 12) {
      x = width * .80;
      y = height * .7;
      diciembre();
    }
  }
  // Fin de la grilla.

  //Se inician las distintas funciones, para cada día de cada mes.
  void enero() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void febrero() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void marzo() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void abril() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void mayo() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void junio() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void julio() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void agosto() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void septiembre() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void octubre() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void noviembre() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  }

  void diciembre() {
    strokeWeight(2);
    noFill();
    stroke(#9C64FF);
    rect(x, y, vis, vis);
    stroke(#00CEBB);
    rect(x, y, meanh, meanh);
    stroke(#E72FF5);
    rect(x, y, viento, viento);
    stroke(#FCDB1C);
    rect(x, y, meanp, meanp);
  } 
  // Fin de las funciones
}
//Fin de clase Días.
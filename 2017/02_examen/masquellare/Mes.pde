class Mes {//Se inicia la clase.
//Declaran las variables.
  float mes, lluvia, viento, vientito, dirviento, humedad;
  int i, x, y, d; 

//Constructor
  Mes(float mes, Float lluvia, int i, float viento, float dirviento, float humedad) {
    //valorizan las variables
    this.mes = mes;
    this.lluvia = lluvia;
    this.i = i;
    this.viento = viento;
    this.dirviento = dirviento;
    this.humedad = humedad;
    x = 0;
    y = 0;
    vientito = viento;
    d = 0;
  }
  //Métodos.
  //Función de la leyenda de la visualización de los meses.
  void leyendames() {
    textSize(20);
    fill(#D8B8A7);
    text("Viento en Bruselas", 1020, 110);
    noStroke();
    textSize(20);
    fill(#8EB0A7);
    text("Leyenda", 1020, 400);
    noStroke();
    fill(#8EB0A7);
    textSize(15);
    text("Dirección del viento", 1050, 432);
    ellipse(1030, 428, 20, 20);
    textSize(10);
    text("Tamaño", 1013, 445);
  }
  /*Función de la visualización de los meses, donde se separan los meses de acuerdo al 
  número de su mes y se ponen condicionantes para crear una grilla*/
  void mes1() {
    if (mes == 1) {
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);/*Se cambia el rango de los valores
      del viento y se crea la variable dirvientito.*/
      translate(100, 200);
      float angulo = map(mes, 0, 31, 0, TWO_PI);/*Se cambia el rango de los valores de 
      mes y se crean ángulos a parir de sus valores.*/
      // Se escribe el nombre del mes.
      textSize(12);
      fill(#D8B8A7);
      text("Enero", -20, 3);
      /*Para los días de ese mes, se rota el ángulo alrededor de la ellipse, la cúal su 
      tamaño es la cantidad de viento*/
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        noStroke();
        ellipse(50, 0, 7 + dirvientito++, 7);
        }
        popMatrix();
    } 
    else if (mes == 2) {
      //Se repite lo anterior con el mes dos.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(250, 200);
      float angulo = map(mes, 0, 29, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Febrero", -25, 3);
      for (i = 0; i < 29; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 3) {
      //Se repite lo anterior con el mes tres.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(410, 200);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Marzo", -20, 3);
      for (i = 0; i < 30; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 4) {
      //Se repite lo anterior con el mes cuatro.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(560, 200);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Abril", -20, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 5) {
      //Se repite lo anterior con el mes cinco.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(720, 200);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Mayo", -20, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 6) {
      //Se repite lo anterior con el mes seis.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(870, 200);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Junio", -20, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 7) {
      //Se repite lo anterior con el mes siete.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(100, 400);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Julio", -20, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito ++, 7);
      }
      popMatrix();
    } 
    else if (mes == 8) {
      //Se repite lo anterior con el ocho.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(250, 400);
      float angulo = map(mes, 0, 29, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Agosto", -20, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito ++, 7);
      }
      popMatrix();
    } 
    else if (mes == 9) {
      //Se repite lo anterior con el mes nueve.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(410, 400);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Septiembre", -36, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 10) {
      //Se repite lo anterior con el mes diez.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(560, 400);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Octubre", -28, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    } 
    else if (mes == 11) {
      //Se repite lo anterior con el mes once.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(720, 400);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Noviembre", -36, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }

      popMatrix();
    } 
    else if (mes == 12) {
      //Se repite lo anterior con el mes doce.
      pushMatrix();
      float dirvientito =  map(viento, 6, 351, 0, 5);
      translate(870, 400);

      float angulo = map(mes, 0, 31, 0, TWO_PI);
      textSize(12);
      fill(#D8B8A7);
      text("Diciembre", -30, 3);
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7 + dirvientito++, 7);
      }
      popMatrix();
    }
  }
  void semestre() {

    if (mes <= 6) {//Condicional donde se eligen solo los meses menores o iguales a seis.
      pushMatrix();
      translate(550, 230);//Se mueve el punto de origen.
      stroke(0);
      float dirvientito =  map(dirviento, 6, 351, 0, TWO_PI);/*Se cambia el rango de la 
      dirección del viento, se convierte en ángulos*/
      rotate(dirvientito);// Línea se rota a parit de los ángulos. 
      stroke(#8EB0A7);// Se da color a la línea
      line(0, 0, 80, dirviento);/*Línea se dibuja pon la posiion vertical de un punto
      con el valor de la dirección del viento.*/
      float humedito = map(humedad, 80, 100, 0.1, 0.99);//Se revaloriza la humedad.
      color colorhumedad = lerpColor(#E6D8C0, #D8B8A7, humedito);/*Se le da un rango de 
      color a el valor de la humedad.*/
      fill(colorhumedad);
    //Se le da movimiento para poder visualizar todos los días.
      ellipse(0, -0, humedad++, humedad++);
      if (humedad >100) {
        humedad = 0;
      }
      popMatrix();
    }
  }
  void segundos() {
//Se repite lo anterior con el segundo semestre.
    if (mes >= 6) {
      pushMatrix();
      translate(550, 230);
      stroke(0);
      float dirvientito =  map(dirviento, 6, 351, 0, TWO_PI);
      rotate(dirvientito);
      stroke(#8EB0A7);
      line(0, 0, 80, dirviento);
      float humedito = map(humedad, 80, 100, 0.0, 0.99);
      color colorhumedad = lerpColor(#E6D8C0, #D8B8A7, humedito);
      fill(colorhumedad);
      ellipse(0, -0, humedad++, humedad++);
      if (humedad >100) {
        humedad = 0;
      }
      popMatrix();
    }
  }
  void leyendasegsem() {
    //Se dibuja el título de cada visualización.
    textSize(20);
    fill(#D8B8A7);
    text("Segundo Semestre", 1020, 110);
  }
  void leyendaprimersem() {
     //Se dibuja el título de cada visualización.
    textSize(20);
    fill(#D8B8A7);
    text("Primer Semestre", 1020, 110);
  }

  void leyendasemestre() {
    //Se dibuja las leyenda de la visualización semestral
    noStroke();
    textSize(20);
    fill(#8EB0A7);
    text("Leyenda", 1020, 400);
    color precipitaciones = lerpColor(#E6D8C0, #D8B8A7, 0.8);
    fill(precipitaciones);
    ellipse(1030, 426, 10, 10);
    textSize(15);
    fill(#8EB0A7);
    text("humedad", 1050, 430);
    textSize(10);
    text("color", 1021, 436);
    text("dirección", 1011, 470);
    textSize(15);
    stroke(#8EB0A7);
    strokeWeight(2);
    line(1030, 462, 1030, 455);
    noStroke();
    fill(#8EB0A7);
    text("Dirección del viento", 1050, 462);
  }
}
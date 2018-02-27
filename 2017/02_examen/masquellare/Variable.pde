class Variable {//Se inicia la clase.
//Declaran las variables.
  int  minima, media, maxviento, niveldelmar, i, x, y, d;
  float mes, lluvia, vy, vx, z, r, viento, vientito, maxima, humedad;
  color myColor;
  //Constructor.
  Variable(float mes, float maxima, int minima, float humedad, float viento, float lluvia, int i) {
    this.mes = mes;
    this.maxima = maxima;
    this.minima = minima;
    this.humedad = humedad;
    this.viento = viento;
    this.lluvia = lluvia;

    this.i = i;
    myColor = #e6795f;
    x = 1;
    y = 1;
    d = 1;
    vy = 1;
    vx = 2;
    z = 0;
    r = 0;
  }  
  //Métodos.
     /*Función de la visualización del año, donde se separan los días de acuerdo al 
  número de su mes y se ponen condicionantes para crear una grilla.*/
  void singular() {
    noStroke();
    println(mes);//imprime número mes.
    if (mes == 1) {
      x=70;//Valoriza la x.
      maxima = map(i, -1, 34, 0, 15);//Se cambia el rango de la Tº máxima.
      float mesm = map(i, 0, 30, 20, width - 337);//Se cambia el rango del  valor del mes.
      float atm = map(lluvia, 0, 1, 0, 0.99);  //Se cambia el rango del  valor de la lluvia.
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);/*se le asigna un rango de 
      color a los valores de la lluvia.*/
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);/*Se dibuja el ellipse con su y más el nuevo rango 
      del mes, y su tamaño depende del nuevo rango de la máxima.*/
      pushMatrix(); 
      translate(y+mesm, x);//Se mueve el punto de orígen.
      vientito= map(viento, 18, 50, -45, 45);/*Se crea nuevo rango para los valores del
      viento.*/
      float angulo = radians(vientito);//Se crean y valoriza la variable ángulo.
      rotate(angulo - 45);//Se rota la línea de acuerdo a los ángulos y se cambia el grado 0.
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    } 
    if (mes == 2) {
      //Se repite lo anterior en el mes dos.
      x = 110;
      float mesm = map(i, 31, 31 + 28, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99); 
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix();
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    } 
    else if (mes == 3) {
    //Se repite lo anterior en el mes tres.
      x = 150;
      float mesm = map(i, 60, 60 + 30, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse( y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);
      popMatrix();
    } 
    else if (mes == 4) {
    //Se repite lo anterior en el mes cuatro.
      x = 190;
      float mesm = map(i, 91, 91 + 29, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);
      popMatrix();
    } else if (mes == 5) {
      //Se repite lo anterior en el mes cinco.
      x = 230;
      float mesm = map(i, 121, 121 + 30, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate( y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);
      popMatrix();
    } else if (mes == 6) {
      //Se repite lo anterior en el mes seis.
      x = 270;
      float mesm = map(i, 152, 152 + 29, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99); 
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);
      popMatrix();
    } 
    else if (mes == 7) {
      //Se repite lo anterior en el mes siete.
      x = 310;
      float mesm = map(i, 182, 182 + 30, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);
      popMatrix();
    } 
    else if (mes == 8) {
      //Se repite lo anterior en el mes cocho.
      x = 350;
      float mesm = map(i, 213, 213 + 30, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    } 
    else if (mes == 9) {
      //Se repite lo anterior en el mes nueve.
      x = 390;
      float mesm = map(i, 244, 244 + 29, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    } 
    else if (mes == 10) {
      //Se repite lo anterior en el mes diez.
      x = 430;
      float mesm = map(i, 274, 274 + 30, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    } 
    else if (mes == 11) {
      //Se repite lo anterior en el mes once.
      x = 470;
      float mesm = map(i, 305, 305 + 29, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99);  
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse(y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito = map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    } 
    else if (mes == 12) {
      //Se repite lo anterior en el mes doce.
      x = 510;
      float mesm = map(i, 335, 335 + 30, 50, width - 300);
      float atm = map(lluvia, 0, 1, 0, 0.99); 
      color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      ellipse( y+ mesm, x, maxima, maxima);
      pushMatrix(); 
      translate(y+mesm, x);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo - 45);
      strokeWeight(2);
      stroke(#745F44);
      line(0, 0, 10, 0);

      popMatrix();
    }
  }   
  void leyendaano() {
     //Se dibuja las leyenda de la visualización anual
    textSize(20);
    fill(#D8B8A7);
    text("Un año", 1020, 110);
    pushMatrix();
    translate(0, 330);
    textSize(20);
    fill(#8EB0A7);
    text("Leyenda", 1020, 70);
    noStroke();
    color precipitaciones = lerpColor(#8EB0A7, #D8B8A7, 0.8);
    fill(precipitaciones);
    ellipse(1030, 96, 10, 10);
    textSize(15);
    fill(#8EB0A7);
    text("Precipitaciones", 1050, 100);
    textSize(10);
    text("color", 1021, 106);
    text("dirección", 1011, 140);
    text("Tamaño", 1013, 185);
    textSize(15);
    stroke(#745F44);
    strokeWeight(2);
    line(1030, 132, 1030, 125);
    noStroke();
    fill(#8EB0A7);
    text("Velocidad del viento", 1050, 132);
    ellipse(1030, 165, 20, 20);
    text("Temperatura máxima", 1050, 169);
    popMatrix();
  }
}
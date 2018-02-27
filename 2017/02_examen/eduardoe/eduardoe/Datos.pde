class Datos { // Clase

  //Variables locales.
  String fecha, eventos;    // String para texto.
  int maxima, minima, media, nubes, humedad, viento, minhumedad, maxhumedad;
  int x1, y1, t, velX, velY;
  float x, y, xspeed, yspeed, vx, ran;
  color rojo, azul, blanco;
  color c, cajauno, cajados, cajatres, cajacuatro;


  Datos(String fecha, int maxima, int minima, int media, String eventos, int nubes, int humedad, int viento, int minhumedad, int maxhumedad) { //Se vinculan los datos.

    this.fecha = fecha;

    float nuevamaxima = map(maxima, -21, 45, 0, width); // Se mapea una región para hacer visible los datos.
    this.maxima = (int)nuevamaxima;

    float nuevaminima = map(minima, -21, 45, 0, width);
    this.minima = (int)nuevaminima;

    float nuevamedia = map(media, -21, 45, 0, width);
    this.media = (int)nuevamedia;

    this.eventos = eventos;
    this.nubes = nubes;
    this.humedad = humedad;
    this.viento = viento;
    this.minhumedad = minhumedad;
    this.maxhumedad = maxhumedad;

    x = 0;
    y = 0;

    t = 60;
    x1 = t;
    y1 = 350;
    velX = 2;
    velY = 3;

    xspeed = random(0, 0.75);
    yspeed = random(-0.75, 0);

    rojo = #FF0000;
    azul = #2303FF;
    blanco = #DEDEDE;

    c = color(255);
    cajauno = #D7EDFA;
    cajados = #FFD1D1;
    cajatres = #D1FFD8;
    cajacuatro = #FFF9B4 ;
    ran=random(50, 650);

    vx=random(0, 0.25);


    if ( minima>-20 && minima<0) { //Degradado de color según mínimas y máximas temperaturas en la primera visualización.
      azul = #03FFF9;
    }
    if ( minima>-1 && minima<10) {
      azul = #03B1FF;
    }

    if ( minima>9 && minima<20) {
      azul = #0365FF ;
    }

    if ( maxima>-15 && maxima<0) {
      rojo = #FFF703;
    }

    if ( maxima>-1 && maxima<10) {
      rojo = #FFA703;
    }

    if ( maxima>9 && maxima<20) {
      rojo = #FF5F03 ;
    }
  }
  // veloxidad a x e y.
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }
  // Dibujo de los símbolos.
  void simbolos() {

    stroke(100);
    strokeWeight(2);
    line(30, 250, 50, 250);

    line(630, 250, 650, 250);
    line(640, 240, 640, 260);

    //println(mouseX, mouseY);
  }
  // Dibujo de las líneas de la media.
  void mediamantiene() {

    stroke(blanco);
    noFill();
    strokeWeight(0.1);
    line(media, 0, media, 200);
    line(media, 500, media, 300);
  }
  // Dibujo de la mínima cayendo.
  void minimacae() {

    stroke(azul, humedad);
    strokeWeight(nubes);
    point(minima, 250+x);
  }
  //Dibujo de la máxima subiendo.
  void maximasube() {

    stroke(rojo, humedad);
    strokeWeight(nubes);
    point(maxima, 250+y);
  }
  // Dibujo de la leyenda en la primera visualización.
  void leyenda() {

    if (mousePressed) {  // Si se presiona el mouse aparece la primera la leyenda.

      fill(30);
      textSize(14);
      text("Nukus,Uzbekistan", 510, 410);


      fill(255);
      textSize(10);
      text("Opacidad = Humedad media", 525, 435);
      text("Tamaño = Cubierto de nubes", 525, 455);
      text("Lineas = Temperatura media", 525, 475);
      fill(#272727, 5);
      noStroke();
      rectMode(CENTER);
      rect(595, 450, 170, 65);
    }
  }


  // Se dibuja la segunda visualización.
  void clima() {

    if (eventos.equals("Rain")) {   // Se escribe una condicional diferente para String, y decimos que cuando se lea Rain se dibuje la lluvia.

      background(#299BE0);
      fill(#6C6C6C, 20);
      stroke(100);
      strokeWeight(1);
      quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
      noFill();
      stroke(255);
      strokeWeight(2);
      rect(325, 270, 340, 10, 12);

      strokeWeight(10);
      point(325+viento * cos(frameCount *0.1)*8, 270);  // Movimiento del punto en forma de onda según el viento.
      textSize(9);
      fill(#555555);
      text("viento", 300, 273);
      textSize(23);
      fill(255);
      stroke(#495B6A);
      strokeWeight(4);
      rectMode(CENTER);
      fill(255);
      text("Evento: Luvia", 250, 305);

      particles.add(new Lluvia());   // Se añaden las partículas de lluvia.
      for (Lluvia p : particles) {
        p.run();       //Se mueve la lluvia.
        p.display();   //Se dibuja la lluvia.
      }
    } else {

      if (eventos.equals("Snow")) {  // Se dibuja nieve.

        background(#8BCAFF);
        fill(#6C6C6C, 20);
        stroke(100);
        strokeWeight(1);
        quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
        noFill();
        stroke(255);
        strokeWeight(2);
        rect(325, 270, 340, 10, 12);

        strokeWeight(10);
        point(325+viento * cos(frameCount *0.1)*8, 270);
        textSize(9);
        fill(#555555);
        text("viento", 300, 273);
        textSize(23);
        fill(255);
        stroke(#57A2DE);
        strokeWeight(4);
        rectMode(CENTER);
        fill(255);
        text("Evento: Nieve", 250, 305);

        noStroke();
        fill(255);

        for (int i = 0; i < xPosition.length; i++) {  // Se inicia i que lee de uno en uno la posicion del copo y el tamaño.
          //Se dibuja la elipse que simula la nieve.
          ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);

          if (direction[i] == 0) {
            xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
          } else {
            xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
          }

          yPosition[i] += flakeSize[i] + direction[i];

          if (xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
            xPosition[i] = random(0, width);
            yPosition[i] = -flakeSize[i];
          }
        }
      }
    }
    if (eventos.equals("Fog")) { // Se dibuja la niebla.

      background(#F0F0F0);

      nieblitas.add(new Niebla()); // Se añaden las partículas de niebla.
      for (Niebla n : nieblitas) {
        n.run();
        n.display();
      }
      fill(#6C6C6C, 20);
      stroke(100);
      strokeWeight(1);
      quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
      noFill();
      stroke(#3B3B3B);
      strokeWeight(2);
      rect(325, 270, 340, 10, 12);

      strokeWeight(10);
      point(325+viento * cos(frameCount *0.1)*8, 270);
      textSize(9);
      fill(#555555);
      text("viento", 300, 273);
      textSize(23);
      fill(255, 230);
      stroke(#495B6A);
      strokeWeight(4);
      rectMode(CENTER);
      fill(0);
      text("Evento: Niebla", 250, 305);
    } else {
      if (eventos.equals("Rain-Snow")) {

        background(#3F3386);

        particles.add(new Lluvia());
        for (Lluvia p : particles) {

          p.run();
          p.display();
        }
        fill(#6C6C6C, 20);
        stroke(200);
        strokeWeight(2);
        quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
        noFill();
        stroke(255);
        strokeWeight(2);
        rect(325, 270, 340, 10, 12);

        strokeWeight(10);
        point(325+viento * cos(frameCount *0.1)*8, 270);
        textSize(9);
        fill(#555555);
        text("viento", 300, 273);
        textSize(23);
        fill(255);
        stroke(#495B6A);
        strokeWeight(4);
        rectMode(CENTER);
        fill(255);
        text("Evento: Lluvia/Nieve", 230, 305);

        noStroke();
        fill(255);

        for (int i = 0; i < xPosition.length; i++) {

          ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);

          if (direction[i] == 0) {
            xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, 0.01, 0.05);
          } else {
            xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, 0.01, 0.05);
          }

          yPosition[i] += flakeSize[i] + direction[i];

          if (xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
            xPosition[i] = random(0, width);
            yPosition[i] = -flakeSize[i];
          }
        }
      }
    }
    if (eventos.equals("Fog-Rain")) {

      background(#A9A6B7);

      nieblitas.add(new Niebla());
      for (Niebla n : nieblitas) {

        n.run();
        n.display();
      }
      particles.add(new Lluvia());
      for (Lluvia p : particles) {

        p.run();
        p.display();
      }
      fill(#6C6C6C, 20);
      stroke(100);
      strokeWeight(1);
      quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
      noFill();
      stroke(#3B3B3B);
      strokeWeight(2);
      rect(325, 270, 340, 10, 12);

      strokeWeight(10);
      point(325+viento * cos(frameCount *0.1)*8, 270);
      textSize(9);
      fill(#555555);
      text("viento", 300, 273);
      textSize(23);
      fill(255);
      stroke(#495B6A);
      strokeWeight(4);
      rectMode(CENTER);
      fill(255);
      text("Evento: Niebla/LLuvia", 210, 305);
    }
    if (eventos.equals("Rain-Thunderstorm")) {

      background(#FEFF00, 10);
      fill(#3B3B3B, 255 * cos(frameCount *0.1));
      rect(0, 0, width*2, height*2);

      particles.add(new Lluvia());
      for (Lluvia p : particles) {
        p.run();
        p.display();
      }
      fill(#6C6C6C, 20);
      stroke(100);
      strokeWeight(1);
      quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
      noFill();
      stroke(#3B3B3B);
      strokeWeight(2);
      rect(325, 270, 340, 10, 12);

      strokeWeight(10);
      point(325+viento * cos(frameCount *0.1)*8, 270);
      textSize(9);
      fill(#555555);
      text("viento", 300, 273);
      textSize(23);
      fill(255);
      stroke(#495B6A);
      strokeWeight(4);
      rectMode(CENTER);
      fill(#495B6A);
      text("Evento: Lluvia/Tormenta", 200, 305);
    }
    if (eventos.equals("")) {


      background(#F7F7F7);
      fill(#6C6C6C, 20);
      stroke(100);
      strokeWeight(1);
      quad(0, maxhumedad, 0, 500, 700, 500, 700, minhumedad);
      noFill();
      stroke(#3B3B3B);
      strokeWeight(2);
      rect(325, 270, 340, 10, 12);

      strokeWeight(10);
      point(325+viento * cos(frameCount *0.1)*8, 270);
      textSize(9);
      fill(#555555);
      text("viento", 300, 273);
      textSize(23);
      fill(c, 200);
      stroke(0);
      strokeWeight(2);
      rectMode(CENTER);
      rect(x1, y1, 200+t, t);
      fill(0);
      text("Evento: Sin evento", x1-100, y1+5);

      x1 += velX;
      y1 += velY;

      if (x1 > width-120|| x1 < 60) {
        velX *= -1;
      }

      if (y1 > width - 220 || y1 < 0) {
        velY *= -1;


        int rdm = (int)random(4);   // Se inicia un random entre cuatro colores.
        if (rdm == 0) {             // Primera opción de random.
          c = cajauno;
        }
        if (rdm == 1) {            // Segunda opcón de random.
          c = cajados;
        }
        if (rdm == 2) {            // Tercera opción de random.
          c = cajatres;
        }
        if (rdm == 3) {            // Cuarta opción de random.
          c = cajacuatro;
        }
      }
    }

    textSize(50);
    text(fecha, 185, 250);
  }
}

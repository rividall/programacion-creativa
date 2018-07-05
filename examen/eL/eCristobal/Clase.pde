class Clase {
  String mes, dia;
  float maxima, minima, temp, media;
  float humedadmin, humedadmax, humedadmedia, 	promedioanualtmax, promedioanualtmin, 
  promtmeanmes, dirViento, dewmax, dewmean, dewmin, meanviento;
  PFont font;
  float r;
  float proman, tmaxmes, tminmes, x;
  int totdias, evento;
  int rojo, verde, azul, c, y;
  color [] colores;

  Clase(String mes, String dia, float maxima, float media, float minima, float minHum, 
  float maxHum, float meanHum, float promanualtmax, float promanualtmin, float promtmeanmes, 
  float dirViento, float dewmax, float dewmean, float dewmin, float meanviento, int evento, 
  float tmaxmes, float tminmes) {
    this.mes = mes;
    this.dia = dia;
    this.maxima = map(maxima, 27, 34, 0, 255);
    this.minima = map(minima, 20, 24, 0, 255);
    this.temp = this.maxima;
    this.media = media;
    this.humedadmax = maxHum ;
    this.humedadmin = minHum;
    this.humedadmedia = meanHum;
    this.promedioanualtmax = promanualtmax;
    this.promedioanualtmin = promanualtmin;
    this.promtmeanmes = promtmeanmes;
    this.dewmax = dewmax;
    this.dewmean = dewmean;
    this.dewmin	 = dewmin;
    this.dirViento = dirViento;
    this.meanviento = meanviento;
    x=random(width); // Utilizado en void días.
    y=0; //Utilizado en void días.
    this.tmaxmes = tmaxmes;
    this.tminmes = tminmes;
    colores = new color[4];
    colores[0] = color(0, 255, 0); //Ningún evento.
    colores[1] = color(255, 0, 0); //Fog
    colores[2] = color(0, 0, 255); //Rain
    colores[3] = color(255, 0, 255); //Fog-Rain
    this.evento = evento;
    if (evento == 121) {//Fog
      c = 1;
    } else if (evento == 122) {//Rain
      c =  2;
    } else if (evento == 123) {//Fog-rain
      c = 3;
    } else {
      c = 0;
    }
    font = createFont("Calibri-Bold", 32);
    proman = (maxima + minima)/2;
    totdias = 365;
  }

  void funcion(int index) {
    anual(index);
    textoanual();
  }

  /*
  Crea líneas las cuales muestran  cuanto es la media de temperaturas por día en un año.
   	Los colores azul representan lluvia, el verde nada,el rojo neblina y el rosa o magenta representa lluvia y neblina.
   */
  void anual(int index) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(index* 360/totdias));
    strokeWeight(1);
    stroke(colores[c]);
    line(0, 0, 0, (media*15)*-1); //Promedio anual temperatura(está mutiplicado debido a que el valor el dato creaba una figura muy pequeña).
    popMatrix();
  }

  /*
  Se visualizan ellipses con posición en el eje y  que varía según las max temperaturas y su opacidad varía según la 
  humedad del lugar en meses.
  */
  void meses() {
    pushMatrix();
    for (int a = 0; a<12; a++) {
      strokeWeight(1);
      noStroke();
      fill(0, 0, 230, humedadmedia);
      ellipse(300, tminmes*25+50, 50, 50);
      fill(0, 0, 230, humedadmedia/5);
      ellipse(1000, tmaxmes*10+21, 200, 200);
    }
    popMatrix();
  }

  /*
  Se muestran los datos por día, en donde la rotación de las elipses equivale a la dirección del viento.
   y la posición de las elipses son el número max de rocío y en las segundas elipses son el mínimo y el tamaño son las medias.
   */
  void dias(int index) {
    txt();
    pushMatrix();
    translate(width/2, height/2);
    for (int u= 0; u < totdias; u++ ) {// el número de esferas equivale a los 365 días del año.
      rotate(radians(index* 360/dirViento));
      stroke(0);
      strokeWeight(1);
      fill(255, 0, 0);
      ellipse((dewmax*u)/25, (dewmax*u)/25, dewmean, dewmean);
      fill(0, 0, 255);
      ellipse((dewmin*u)/25, (dewmin*u)/25, dewmean, dewmean);
    }

    for (int e = 0; e<dewmax; e++) { //líneas representando lluvia.
      rotate(dirViento);
      strokeWeight(10);
      line(x, y, x+5, y+5);
      x += dirViento/5;
      y += dirViento/5;
      if (x > width || x< 0 || y > height || y < 0) {
        x = random(width);
        y= 2;
      }
    }
    popMatrix();
  }
  //Texto en void anual.
  void textoanual() {
    fill(255);
    textFont(font);
    text("2015", width*.25, height*.1);
    if (index <= 30 ) {
      text("Enero", width * .1, height * .1);
      textSize(55);
    } else if (index > 30 && index <=58 ) {
      text("Febrero", width * .1, height * .1);
      textSize(55);
    } else if ( index > 58 && index <= 89) {
      text("Marzo", width * .1, height * .1);
      textSize(55);
    } else if ( index > 89 && index <= 119) {
      text("Abril", width * .1, height * .1);
      textSize(55);
    } else if ( index > 119 && index <= 150) {
      text("Mayo", width * .1, height * .1);
      textSize(55);
    } else if ( index > 150 && index <= 180) {
      text("Junio", width * .1, height * .1);
      textSize(55);
    } else if ( index > 180 && index <= 211) {
      text("Julio", width * .1, height * .1);
      textSize(55);
    } else if (index >211 && index <= 242) {
      text("Agosto", width * .1, height * .1);
      textSize(55);
    } else if ( index > 242 && index <= 272) {
      text("Septiembre", width * .1, height * .1);
      textSize(55);
    } else if (index > 272 && index <=303) {
      text("Octubre", width * .1, height * .1);
      textSize(55);
    } else if (index > 303 && index <= 333) {
      text("Noviembre", width * .1, height * .1);
      textSize(55);
    } else if (index > 333 && index <= 364 ) {
      text("Diciembre", width * .1, height * .1);
      textSize(55);
    }
  }


  // Muestra en texto, el mes y el día (en visualizacón por días).
  void txt() {
    fill(255);
    textFont(font);
    if (index <= 30 ) {
      text("Enero", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if (index > 30 && index <=58 ) {
      text("Febrero", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if ( index > 58 && index <= 89) {
      text("Marzo", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if ( index > 89 && index <= 119) {
      text("Abril", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if ( index > 119 && index <= 150) {
      text("Mayo", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if ( index > 150 && index <= 180) {
      text("Junio", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if ( index > 180 && index <= 211) {
      text("Julio", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if (index >211 && index <= 242) {
      text("Agosto", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if ( index > 242 && index <= 272) {
      text("Septiembre", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if (index > 272 && index <=303) {
      text("Octubre", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if (index > 303 && index <= 333) {
      text("Noviembre", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    } else if (index > 333 && index <= 364 ) {
      text("Diciembre", width * .1, height * .1);
      textSize(55);
      text(dia, width * .2, height * .1);
    }
  }
}
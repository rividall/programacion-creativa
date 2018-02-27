class Objetos {
  // Estos corresponden a los valores de del vieto,humedad , temperatura y el número del valor en la tabla.
  float posX;// Las coordenadas, horizontales y verticales, tanto para temperatura y viento.
  float posH_1, posH_2, posH_3;
  int index, todo, mint, maxt, meant, maxH, meanH, minH, w, wind_max, wind_mean, wind_gust;
  float x, y, t, x2, y2, maxX, maxY, minX, minY;
  color rojo, blanco, celeste, celeste2, verde, amarillo, azul, d, f, g; // colores


  Objetos(int index, int maxt, int mint, int meant, int maxH, int meanH, int minH, int w, int wind_max, int wind_mean, int wind_gust) {

    //funciones
    x = 0;
    y = 0;
    this.w = w;
    this.index = index;

    //set de varibles de viento.
    this.wind_max = wind_max;
    this.wind_mean = wind_mean;
    this.wind_gust = wind_gust;

    //set de variables de humedad.
    this.maxH = maxH;
    this.meanH = meanH;
    this.minH = minH;

    //set de variables de temperatura.
    this.mint = mint;
    this.meant = meant;
    this.maxt = maxt;

    //set de variables de colores.
    this.azul = color(25, 25, 112);
    this.amarillo = color(255, 255, 0);
    this.verde = color(0, 255, 0);
    this.blanco = color(255);
    this.celeste = color(0, 255, 255);
    this.celeste2=color (0, 140, 140);
    this.rojo = color(255, 0, 0);
  }

  /*
3 Elipses la cual estan ordenado de manera vertical y cada una de estas representa un día,
   las elipses que están unidad por una línea son la máxima y mínima del viento y la elipse que está sola representa una ráfaga de viento máximo que hubo en el día
   */

  void viento() {
    pushMatrix();
    translate(0, height/1.8);  //
    rotateX(PI);  // rotar PI en el eje X.
    posX = map(w, diasMin - 1, diasMax, 140, 1700); // Posiciones de la data en el canvas.

    posH_1 = map( wind_max, 2, 100, 0, height/1.5);  // Función correspondiente a al viento máxima,mínima y rafagas.
    posH_2 = map(wind_gust, 2, 100, 0, height/1.5);
    posH_3 = map(wind_mean, 2, 100, 0, height/1.5);

    stroke(360);
    line(posX, posH_1, posX, posH_3);  // linea que cruza la minima y la maxima
    noStroke();
    fill(celeste2*2);
    ellipse(posX, posH_1, 20, 20); // ellipse con las coordenadas de la velocidad maxima del viento
    fill(celeste);
    ellipse(posX, posH_2, 20, 20); // ellipse con las coordenadas de un rafaga
    fill(azul*2);
    ellipse(posX, posH_3, 20, 20); // ellipse con las coordenadas de la velocidad minima del viento
    popMatrix();
  }

  /*
  Círculos blancos que representan humedad, los datos son representados
   3 por su opacidad y tamaño. (por trimestre)
   */
  void humedad() {

    float wowie = map(maxH, 6, 31, 0, 50);
    float wowie2 = map(maxH, 6, 31, 1, 5); //el map esta fuera de rango en el set de variable
    fill(verde/2, wowie);
    noStroke();
    ellipse(x, y - 16, wowie2, wowie2); //arriba

    float wow = map(meanH, 6, 31, 31, 90);
    float wow2 = map(meanH, 6, 31, 5, 8);//el map esta fuera de rango en el set de variable
    fill(celeste, wow);
    noStroke();
    ellipse(x, y, wow2, wow2); //centro

    float wowi = map(minH, 6, 31, 71, 110);
    float wowi2 = map(minH, 6, 31, 8, 10);//el map esta fuera de rango en el set de variable
    fill(celeste2, wowi);
    noStroke();
    ellipse(x, y + 23, wowi2, wowi2); //abajo
  }

  /*
 Las líneas que van hacia afuera son la temperatura máxima,
   las líneas que van hacia dentro son la temperatura mínima, .
   */
  void Temp() {

    pushMatrix();
    translate((width / 2 - 970), (height / 102));


    rotate(TWO_PI * 3 / 4);
    float poh = map(index, 0, 364, 0, TWO_PI);
    float c1 = map(maxt, 16, 40, 200, 250); //el map esta fuera de rango en el set de variable
    float c2 = map(mint, 4, 33, 200, 150); //el map esta fuera de rango en el set de variable
    color CoCeles = color (#49B4AE);

    if (index == 0 ) {

      stroke(190, 100);

      line(x2, y2, 130 * cos(poh), 130 * sin(poh));
    }

    stroke(CoCeles);
    x = 203 * cos(poh)*2;
    x2 = 197 * cos(poh)*2;
    maxX = c1 * cos(poh)*2;
    minX = c2 * cos(poh)*2;
    y = 203 * sin(poh)*2;
    y2 = 197 * sin(poh)*2;
    maxY = c1 * sin(poh)*2;
    minY = c2 * sin(poh)*2;

    line(x, y, maxX, maxY);  // Se dibujan las líneas (días)
    line(x2, y2, minX, minY);
    popMatrix();
  }

  void dias(int todo) {
    for (int i = 0; i < objetos.length; i++) {
      if (index >= i * todo && index < i * todo + todo) {
        float causa = map(todo, 7, 182, .03, .4);  //distancia Y
        float causa1 = map(todo, 7, 182, 1, .6); //distancia Y
        float causa2 = map(todo, 7, 182, .09, .1); // distancia x
        float causa3 = map(todo, 7, 182230, .9, .9); //distancia x

        float x1 = map(index % todo, 0, todo - 1, width * causa2, width * causa3);
        x = x1;

        float y1 = map((i), 0, 365 / todo, height * causa, height * causa1);
        y = y1;
      }
    }
  }
}

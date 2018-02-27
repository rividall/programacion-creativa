class France3 {// inicio clase France (año)
  float maxHum, minHum, i; // declaración de variables
  int y, x; // declaración de variables
  String titulo = "La Rochelle, France 2015"; // declaración de string
  color hum1, hum2; // declaración de color
  PFont fuente, fuente1, fuente2; // declaración de fuentes

  // constructor
  France3(float maxHum, float minHum, float i) { //  iniciación de clase France3
    this.i = map(i, 0, 364, 0, TWO_PI); //contador tranformado en angulo
    this.maxHum = maxHum; // iniciación de variable
    this.minHum = minHum; // iniciación de variable
    this.i = i; // iniciación de variable
    y = 0; // iniciación de variable
    hum1 = color (#7CBC7B); // iniciación de color
    hum2 = color (#639562); // iniciación de color

    fuente = loadFont("AvenirNext-Medium-20.vlw"); // iniciación fuente
    fuente1 = loadFont("AvenirNext-Regular-14.vlw"); // iniciación fuente
    fuente2 = loadFont("AvenirNext-Regular-10.vlw"); // iniciación fuente
  } // fin constructor

  void ao() { // inicio función año
    //rocio = map(i, -5, 21, 100, 200);
    float max = map(maxHum, 16, 100, 100, 200); //map humedad máxima
    float min = map(minHum, 16, 100, 100, 200); //map humedad minima

    rotate(i);

    strokeWeight(5);
    stroke(hum1);
    point(max*sin(frameCount*0.08), y); // humedad máxima

    strokeWeight(2);
    stroke(hum2);
    point(min*cos(frameCount*0.08), y); // humedad minima
  }// fin función año

  void titulo() { // inicio función título
    textSize(20);
    fill(50);
    textFont(fuente);
    text(titulo, 10, 25);
  }// fin función título

  void leyenda() { // inicio función leyenda
    fill(50);
    textFont(fuente1);
    text("Leyenda", 20, 540);
    textFont(fuente2);
    strokeWeight(5);
    stroke(hum1);
    point(50, 560);
    text("Humedad Max", 60, 565);
    strokeWeight(2);
    stroke(hum2);
    point(160, 560);
    text("Humedad Min", 170, 565);
  }// fin función leyenda
}// fin clase France3

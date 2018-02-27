class France2 { // inicio clase France (meses)
  float rocio, meanRo, meanVisi, i; // declaración de variables
  int y; // declaración de variables
  PFont fuente, fuente1; // declaración de fuente

  color summer[] = new color[3]; // declaración de array de color summer
  color spring[] = new color[3]; // declaración de array de color spring
  color winter[] = new color[3]; // declaración de array de color winter
  color automn[] = new color[3]; // declaración de array de color automn

  // constructor
  France2(float rocio, float meanVisi, float i) { //  iniciación de clase France2
    this.i = map(i, 0, 364, 0, TWO_PI); //contador tranformado en angulo
    this.rocio = rocio; // iniciación de variable
    this.meanVisi = meanVisi; // iniciación de variable


    y = 0; // iniciación de variable

    summer[0] = color(#9CCB55); // iniciación array de color summer
    summer[1] = color(#86A252); // iniciación array de color summer
    summer[2] = color(#B0D075); // iniciación array de color summer

    spring[0] = color(#9B6B8A); // iniciación array de color spring
    spring[1] = color(#6A4566); // iniciación array de color spring
    spring[2] = color(#E28FA2); // iniciación array de color spring

    winter[0] = color(#0E2C4E); // iniciación array de color winter
    winter[1] = color(#4577A0); // iniciación array de color winter
    winter[2] = color(#89C9E5); // iniciación array de color winter

    automn[0] = color(#FF5C3B); // iniciación array de color automn
    automn[1] = color(#FF9A44); // iniciación array de color automn
    automn[2] = color(#E89552); // iniciación array de color automn

    fuente = loadFont("AvenirNext-Regular-14.vlw"); // iniciación fuente
    fuente1 = loadFont("AvenirNext-Regular-10.vlw"); // iniciación fuente
  }// fin constructor
  void enero() { // inicio función enero
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(winter[0]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(winter[0]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función enero
  void febrero() { // inicio función febrero
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(winter[1]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(winter[1]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función febrero
  void marzo() { // inicio función marzo
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(winter[2]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(winter[2]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función marzo
  void abril() { // inicio función abril
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(spring[0]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(spring[0]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función abril
  void mayo() { // inicio función mayo
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(spring[1]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(spring[1]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función mayo
  void junio() { // inicio función junio
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(spring[2]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(spring[2]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función junio
  void julio() { // inicio función julio
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(summer[0]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(summer[0]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función julio
  void agosto() { // inicio función agosto
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(summer[1]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(summer[1]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función agosto
  void septiembre() { // inicio función septiembre
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(summer[2]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(summer[2]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función septiembre
  void octubre() { // inicio función octubre
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(automn[0]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(automn[0]);
    line(ro/2, y, visi, y); // promedio visibilidad
  }// fin función octubre
  void noviembre() { // inicio función noviembre
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(automn[1]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(automn[1]);
    line(ro/2, y, visi, y); // promedio visibilidad
  } // fin función noviembre
  void diciembre() { // inicio función diciembre
    float visi = map(meanVisi, -5, 21, 100, 200); //map promedio visibilidad
    float ro = map(rocio, 0, 10, 100, 200); //map punto de rocio

    noStroke();
    fill(automn[2]);

    rotate(i);
    ellipse(ro/2, y, rocio, rocio); //punto de rocio
    stroke(automn[2]);
    line(ro/2, y, visi, y); // promedio visibilidad
  } // fin función diceimbre

  void leyenda() { // inicio función leyenda

    fill(50);
    textFont(fuente);
    text("Leyenda", 20, 530);
    fill(50);
    textFont(fuente1);
    fill(50);
    ellipse(50, 550, 10, 10);
    text("Punto de rocio", 60, 555);
    stroke(50);
    line(155, 550, 165, 550);
    fill(50);
    text("Visibilidad media", 175, 555);

    noStroke();
    fill(winter[0]);
    ellipse(50, 575, 7, 7);
    fill(50);
    text("en", 60, 580);
    fill(winter[1]);
    ellipse(90, 575, 7, 7);
    fill(50);
    text("feb", 100, 580);
    fill(winter[2]);
    ellipse(130, 575, 7, 7);
    fill(50);
    text("mar", 140, 580);

    noStroke();
    fill(spring[0]);
    ellipse(180, 575, 7, 7);
    fill(50);
    text("abr", 190, 580);
    fill(spring[1]);
    ellipse(220, 575, 7, 7);
    fill(50);
    text("my", 230, 580);
    fill(spring[2]);
    ellipse(260, 575, 7, 7);
    fill(50);
    text("jun", 270, 580);

    noStroke();
    fill(summer[0]);
    ellipse(300, 575, 7, 7);
    fill(50);
    text("jul", 310, 580);
    fill(summer[1]);
    ellipse(340, 575, 7, 7);
    fill(50);
    text("agto", 350, 580);

    fill(summer[2]);
    ellipse(390, 575, 7, 7);
    fill(50);
    text("sept", 400, 580);

    noStroke();
    fill(automn[0]);
    ellipse(440, 575, 7, 7);
    fill(50);
    text("oct", 450, 580);

    fill(automn[1]);
    ellipse(480, 575, 7, 7);
    fill(50);
    text("nov", 490, 580);

    fill(automn[2]);
    ellipse(525, 575, 7, 7);
    fill(50);
    text("dic", 535, 580);
  }// fin función leyenda
}// fin clase France2
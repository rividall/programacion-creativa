class France { // inicio clase France (estaciones)
  int max, min, x, y; // declaración de variables
  float i; // declaración de variables

  PFont fuente, fuente1; // declaración de fuentes

  color summer[] = new color[3]; // declaración de array de color summer
  color spring[] = new color[3]; // declaración de array de color spring
  color winter[] = new color[3]; // declaración de array de color winter
  color automn[] = new color[3]; // declaración de array de color automn

  // constructor
  France (float i, int max, int min) { //  iniciación de clase France
    this.i = map(i, 0, 364, 0, TWO_PI); //contador tranformado en angulo 
    this.max = max; // iniciación de variable
    this.min = min; // iniciación de variable

    x = 0; // iniciación de variable
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

  void invierno() { // inicio función invierno
    enero(); //función enero
    febrero(); //función febero
    marzo(); //función marzo
  } // fin función invierno

  void primavera() { // inicio función primavera
    abril(); //función abril
    mayo(); //función mayo
    junio(); //función junio
  } // fin función primavera

  void verano() { // inicio función verano
    julio(); //función julio
    agosto(); //función agosot
    septiembre(); //función septiembre
  } // fin función verano

  void otono() { // inicio función otoño
    octubre(); //función octubre
    noviembre(); //función noviembre
    diciembre(); //función diciembre
  } // fin función otoño

  // Invierno
  void enero() { // inicio función enero
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(winter[0]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  } // fin función enero
  void febrero() { // inicio función febrero
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(winter[1]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función febrero
  void marzo() { // inicio función marzo
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(winter[2]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función marzo

  // Primavera
  void abril() { // inicio función abril
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(spring[0]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función abril
  void mayo() { // inicio función mayo
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(spring[1]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función mayo
  void junio() { // inicio función junio
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(spring[2]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función junio


  // Verano
  void julio() { // inicio función julio
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(summer[0]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función julio
  void agosto() { // inicio función agosto
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(summer[1]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función agosto
  void septiembre() { // inicio función septiembre
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(summer[2]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función septiembre

  // Otoño
  void octubre() { // inicio función octubre
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(automn[0]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función octubre
  void noviembre() { // inicio función noviembre
    float temMax = map(max, 2, 37, 100, 200); //map temperatura maxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(automn[1]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  }// fin función noviembre
  void diciembre() { // inicio función diciembre
    float temMax = map(max, 2, 37, 100, 200); //map temperatura máxima
    float temMin = map(min, 2, 37, 100, 200); //map temperatura minima

    noStroke();
    fill(automn[2]);

    rotate(i * frameCount*0.08); 
    ellipse(temMax + 50, y, max, max); // círculo exterior
    ellipse(temMin, y, min, min); // círculo interior
  } // fin función diciembre

  void leyenda() { // inicio función leyenda
    fill(50);
    textFont(fuente);
    text("Leyenda", 20, 540);
    textFont(fuente1);
    ellipse(50, 560, 10, 10);
    text("Temperatura", 60, 565);
    stroke(50);
    noFill();
    ellipse(200, 560, 20, 20);
    text("Temperatura Max", 220, 565);
    stroke(50);
    noFill();
    ellipse(355, 560, 10, 10);
    text("Temperatura Min", 365, 565);

    // colores invierno
    noStroke();
    fill(winter[0]);
    ellipse(50, 585, 5, 5);
    fill(winter[1]);
    ellipse(60, 585, 5, 5);
    fill(winter[2]);
    ellipse(70, 585, 5, 5);
    fill(50);
    text("Invierno", 80, 590);

    // colores primavera
    noStroke();
    fill(spring[0]);
    ellipse(140, 585, 5, 5);
    fill(spring[1]);
    ellipse(150, 585, 5, 5);
    fill(spring[2]);
    ellipse(160, 585, 5, 5);
    fill(50);
    text("Primavera", 170, 590);

    // colores verano
    noStroke();
    fill(summer[0]);
    ellipse(240, 585, 5, 5);
    fill(summer[1]);
    ellipse(250, 585, 5, 5);
    fill(summer[2]);
    ellipse(260, 585, 5, 5);
    fill(50);
    text("Verano", 270, 590);

    // colores otoño
    noStroke();
    fill(automn[0]);
    ellipse(330, 585, 5, 5);
    fill(automn[1]);
    ellipse(340, 585, 5, 5);
    fill(automn[2]);
    ellipse(350, 585, 5, 5);
    fill(50);
    text("Otoño", 360, 590);
  }// fin función leyenda
}// fin Clase France
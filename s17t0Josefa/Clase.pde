class Clase {

  int index; 
  int maxTemp, minTemp, velVie, hum, maxRo, minRo ; 
  float posX, vel;
  float dirX = 1;




  Clase(int index, int maxTemp, int minTemp, int velVie, int hum, int maxRo, int minRo) {

    this.index = index;
    this.maxTemp = maxTemp;
    this.minTemp = minTemp;
    this.velVie = velVie;
    this.hum = hum;
    this.maxRo = maxRo;
    this.minRo = minRo;
  }

  void anoInfo() {
    anoTemp(ta);
    anilloAno(fa);
    velVientoAno(vva);
    humedadAno(huma);
    varRocio(roca);
    txt();
  }

  void anoEspecificoInfo() {
    humAnual();
  }

  void mesInfo() {
    mesHum();
  }

  void mesHum() {
    float humT = map(hum, 42, 92, 0, 40);

    fill(255, 0, 0);
    ellipse(index * 40+ 20, 375, humT, humT);
  }
  void humAnual() {
    // Tengo que achicar el mapeo y centrar más los datos para que quepan todos
    float Rmax = map(maxRo, -20, 12, 1, 50);
    float Rmin = map(minRo, -20, 12, 1, 50);
    float humT = map(hum, 42, 92, 0, 255);

    noStroke();
    fill(12, 66, 110, humT);
    //Enero
    if (index > 0 && index < 32) {
      ellipse(index * 40 + 10, height/12, Rmin, Rmax);
    }
    // Febrero
    if (index > 31 && index < 60) {
      ellipse(index * 40 - 1230, 116, Rmin, Rmax);
    }
    // Marzo
    if (index > 59 && index < 91) {
      ellipse(index * 40 - 2350, 180, Rmin, Rmax);
    }
    // Abril
    if (index > 90 && index < 121) {
      ellipse(index * 40 - 3590, 244, Rmin, Rmax);
    }
    // Mayo
    if (index > 120 && index < 152) {
      ellipse(index * 40 - 4790, 308, Rmin, Rmax);
    }
    // Junio
    if (index > 151 && index < 182) {
      ellipse(index * 40 - 6030, 372, Rmin, Rmax);
    }
    // Julio
    if (index > 181 && index < 213) {
      ellipse(index * 40 - 7230, 436, Rmin, Rmax);
    }
    // Agosto
    if (index > 212 && index < 244) {
      ellipse(index * 40 - 8470, 500, Rmin, Rmax);
    }
    // Septiembre
    if (index > 243 && index < 274) {
      ellipse(index * 40 - 9710, 564, Rmin, Rmax);
    }
    // Octubre
    if (index > 273 && index < 305) {
      ellipse(index * 40 - 10910, 628, Rmin, Rmax);
    }
    // Noviembre
    if (index > 304 && index < 335) {
      ellipse(index * 40 - 12150, 692, Rmin, Rmax);
    }
  }
  void varRocio(boolean roca) {

    if (roca) {

      pushMatrix();

      translate(width/2, height/2);
      rotate(radians(270));
      rotate(radians(index * 360 / 365)); // 360 grados / 365 dias 

      noStroke();
      fill(5, 242, 212);
      ellipse(maxRo + 130, 0, 1.5, 1.5);
      ellipse(minRo + 80, 0, 1.5, 1.5);

      popMatrix();
    }
  }


  void humedadAno(boolean huma) {

    if (huma) {

      //float hum = map(Humedad, 52, 92, 0, 100); 

      pushMatrix();


      translate(width/2, height/2);
      rotate(radians(270));
      rotate(radians(index * 360 / 365)); // 360 grados / 365 dias 
      noStroke();

      //fill(5, 242, 175);
      //ellipse(hum + 50, 0, 1.5, 1.5);

      popMatrix();
    }
  }

  void velVientoAno(boolean vva) {

    if (vva) {

      pushMatrix();

      translate(width/2, height/2);
      rotate(radians(270));
      rotate(radians(index * 360 / 365)); // 360 grados / 365 dias 
      rectMode(CENTER);
      noStroke();

      pushMatrix();
      translate(-width/5, -height/5);
      rotate(radians(velVie));
      fill(255, 0, 0);
      rect(0, 0, 50, 1);   
      //vel += velViento/5;

      popMatrix();

      popMatrix();
    }
  }

  void anoTemp(boolean ta) {
    //float maxT = map(maxTemp, -9, 23, 100, 200); // mapeo de las temperaturas máximas
    //float minT = map(minTemp, -15, 13, 100, 200); // mapeo de las temperaturas minimas

    float difT = maxTemp - minTemp;
    float ptoM = map(difT, 0, 13, 0, 100);

    if (ta) {
      rectMode(CORNER);
      pushMatrix();

      translate(width/2, height/2);
      //rotate(radians(270));
      rotate(radians(index * 360/365)); // 360 grados / 365 dias 

      noStroke();
      ////fill(3, 114, 141);
      fill(12, 66, 110);
      rect(maxTemp + 280, 0, -ptoM, 1); // Lineas de las diferencias de temperatura

      ////fill(35, 76, 135);
      fill(147, 39, 143);
      ellipse(maxTemp + 280, 0, 4, 4); // Temperaturas Máximas

      //////fill(1, 211, 165);
      fill(22, 152, 150);
      ellipse((minTemp - ptoM)+ 280, 0, 3, 3); // Temperaturas minimas

      stroke(255);
      popMatrix();
    }
  }

  void anilloAno(boolean f) {

    if (f) {
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(270));
      rotate(radians(index * 360 / 365)); // 360 grados / 365 dias 

      rectMode(CENTER);
      stroke(150);
      noStroke();
      fill(255);
      rect(330, 0, 10, 1);

      if (index == 1 || index == 32 || index == 60 || index == 91|| index == 121 ||
        index == 152 || index == 182 || index == 213 || index == 244 || index == 274 ||
        index == 305 || index == 335 ) {
        ////stroke(255, 0, 0);
        ////line(300, 0, 345, 0);   
        noStroke();
        fill(0, 0, 120);
        rect(330, 0, 20, 3);
      }
      popMatrix();
    }
  }

  void txt() {
    fill(255);
    textFont(txt);
    text("t = Temperatura anual || f = Periodos del año || r = Rocio max y min ", 20, 20);
  }
}
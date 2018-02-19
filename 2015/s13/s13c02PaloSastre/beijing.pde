void beijing(float x1, float y1, float tempmax, float tempmin, float rocio, float humedadmax, float humedadmed, float humedadmin, float visibmax, float visibmed, float visibmin, float viento, float maxviento, float velrafagas, float precip, float cloud, String eventos){
  float rtm = maxviento * (TWO_PI/360);
  float rvme = visibmed * (TWO_PI/360);
  
  pushMatrix();
    translate(x1,y1);
  //Cuadrados grises
    if (eventos.equals("Nieve")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Niebla")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Lluvia")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Niebla-Nieve")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Niebla-Lluvia")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Lluvia-Tormenta")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Tormenta")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    }
    if (eventos.equals("Niebla-Lluvia-Tormenta")) {
      fill(g);
      rectMode(CENTER);
      rect(0, 0, 10, 10);
    } 
  popMatrix(); 
  
  pushMatrix();
    translate(x1,y1);
    rotate(rtm);
    float mapvisibmin = map (visibmin, 0, 31, 50, 255);
    float mapvisibmax = map (visibmax, 2, 31, 50, 200);
    float mapprecip = map (precip, 0, 76, 0, 15);
         
    //rectangulos rosados borde morado
    stroke(153, 105, 255, 180);
    strokeWeight(precip);
    if (precip == 0.00){
      noStroke();
    }
    fill(255, 151, 161, mapvisibmin*1.5);
    rectMode(CENTER);
    rect(0, 0, rocio, rocio);
    
    //triangulos naranjos
    noStroke();
    fill(255, 159, 59, mapvisibmax*2);
    triangle(0, humedadmin, humedadmin, 5, 10, 10);
  popMatrix();
  
  pushMatrix();
    translate(x1,y1);
    rotate(rvme);
    float maphumedadmax = map (humedadmax, 23, 100, 2, 40);
    float maphumedadmed = map (humedadmed, 11, 93, 2, 40);
    float maptempmin = map (tempmin, -13, 27, 25, 2);
    float maptempmax = map (tempmax, -2, 42, 1, 5);
    float mapvelrafagas = map (velrafagas, 0, 93, 0, 30);
    
  //lineas turquesa
    stroke(61, 177, 171, 150);
    strokeWeight(viento);
    line(0, 0, -mapvelrafagas, mapvelrafagas);
    
  //circulos grises
    noStroke();
    fill(200, 200, 229, visibmax*5);
    ellipse(0, 0, maphumedadmax, maphumedadmed);
    
  //lineas amarillas
    stroke(218, 232, 29, 100);
    strokeWeight(maptempmax);
    line(0, 0, maptempmin, maptempmin);
    
   //circulos negros
    noStroke();
    fill(n);
    ellipse(0, 0, cloud, cloud);
  popMatrix();
}
void beijing2008(float x1, float y1, float tempmax, float tempmin, float humedadmax, float visibmax, float velrafagas, String eventos){

  pushMatrix();
    translate(x1,y1);
    float maphumedadmax = map (humedadmax, 23, 100, 2, 40);
    float maptempmin = map (tempmin, -13, 27, 50, 2);
    float maptempmax = map (tempmax, -2, 42, 2, -50);
    float mapvisibmax = map (visibmax, 2, 31, 150, 1);
    float mapvelrafagas = map (velrafagas, 0, 93, 0, 35);
    
  //Circulos amarillos   
    if (eventos.equals("Nieve")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Lluvia")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla-Nieve")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla-Lluvia")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Lluvia-Tormenta")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Tormenta")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    }
    if (eventos.equals("Niebla-Lluvia-Tormenta")) {
      noStroke();
      fill(a);
      ellipse(0, maptempmin, 10, 10);
    } 
    
  //circulos grises
    stroke(g);
    strokeWeight(mapvelrafagas);
    if (mapvelrafagas == 0){
      noStroke();
    }
    fill(156, 156, 156, mapvisibmax);
    ellipse(0, 0, maphumedadmax, maphumedadmax);
    
   //lineas turquesas
     stroke(t);
     strokeWeight(2);
     line(0, 0, 0, maptempmin);
     
   //lineas rosadas
   stroke(r);
   strokeWeight(2);
   line(0, 0, 0, maptempmax);

  popMatrix();
}
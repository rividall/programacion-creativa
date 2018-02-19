void funcion(float x1, float y1, String vientoDirT, float vientoDir, float temMax, float temMax2, float temMin, float temMin2, float temMed, float temMed2, String event, float velvien, String temMednum) {
  float ap = vientoDir * (TWO_PI/360);




  ////temperatura media




  ////temperatura maxima
  float maptemMax = map(temMax, -8, 35, 5, 40);
  float maptemMax2 = map(temMax2, -8, 35, 50, 150);
  fill(231, 76, 60, maptemMax2);
  noStroke();
  ellipse(x1, y1, maptemMax, maptemMax);

  ////temperatura minima
  float maptemMin = map(temMin, -14, 23, 40, 5);
  float maptemMin2 = map(temMin2, -14, 23, 50, 150);
  fill(69, 119, 232, maptemMin2);
  noStroke();                                                                                                                                                                                                                                                                                                                                                                                         
  ellipse(x1, y1, maptemMin, maptemMin);

  //eventos
  //pushMatrix(); 
  //fill(127, 140, 141, 150);
  //translate(x1, y1);
  //textFont(font);
  //text(event, 0, 20);
  //textAlign(CENTER);
  //popMatrix();

  

  pushMatrix();
  translate(x1, y1);
  rotate(ap);
  noStroke();
  stroke(26, 188, 156);
  line(0, 0, velvien, 0);
  fill(0);
  //text(vientoDirT, 0, 0);
  popMatrix();

//temperatura media numeros
  pushMatrix(); 
  fill(255);
  translate(x1, y1+5);
  textSize(30);
  textFont(font);
  text(temMednum, 0, 0);
  textAlign(CENTER);
  popMatrix();



  pushMatrix();
  //translate(x1, y1);

  //LOGOS
   if (event.equals("Niebla-Nieve")) {
   shape(nn, x1-10, y1-10, 20, 20);
   }
   if (event.equals("Niebla-Lluvia")) {
   shape(nl, x1-10, y1-10, 20, 20);
   }
   if (event.equals("Niebla-Lluvia-Tormenta")) {
   shape(nlt, x1-10, y1-10, 20, 20);
   }
   if (event.equals("Nieve")) {
   shape(n, x1-10, y1-10, 20, 20);
   }
   if (event.equals("Lluvia")) {
   shape(l, x1-10, y1-10, 20, 20);
   }
   if (event.equals("Lluvia-Nieve")) {
   shape(ln, x1-10, y1-10, 20, 20);
   }
   if (event.equals("Luvia-Tormenta")) {
   shape(lt, x1-10, y1-10, 20, 20);
   }
  
   
  popMatrix();
}
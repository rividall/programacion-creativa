v
void temperatura (float x1, float y1, float tmaxAU, float tminAU, float tmaxBE, float tminBE, float tmaxCA, float tminCA, float tmaxES, float tminES, float tmaxHA, float tminHA, float tmaxPA, float tminPA, float tmaxRO, float tminRO, float tmaxSP, float tminSP, float tmaxSN, float tminSN, float tmaxSY, float tminSY) {
  float conversion;
  //tmaxAU, tminAU - AUSTRIA = PARECIDO A BERLIN PERO TEMPERATURA MINIMAS
  //tmaxBE, tminBE - BERLIN = FRIO Y HUMEDO
  //tmaxCA, tminCA - CANCUN = HUMEDAD ALTA
  //tmaxES, tminES - ESTAMBUL = PROMEDIO
  //tmaxHA, tminHA - HAWAI = TODO EL AÑO PARECIDO TEMPERATURAS ALTAS
  //tmaxPA, tminPA - PARIS 
  //tmaxRO, tminRO - ROMA
  //tmaxSP, tminSP - SAN PEDRO = TEMPERATURAS ALTAS Y LA MINIMA MUY BAJA/ SECO
  //tmaxST, tminST - SANTIAGO 
  //tmaxSY, tminSY - SYDNEY = REGULAR

  conversion = tminAU * (TWO_PI/10); 
  pushMatrix();
  translate(x1, y1);
  rotate(-conversion);
  noFill();
  stroke(color (226, 20, 20)); //rojo 
  strokeWeight(tmaxHA);
  rectMode(CENTER);
  rect(0, 0, 15, 15); //temperatura HAWAI
  popMatrix();

  conversion = tminBE * (TWO_PI/30); 
  pushMatrix();
  translate(x1, y1);
  rotate(-conversion);
  noFill();
  stroke(color (219, 118, 27)); // naranjo
  strokeWeight(tmaxCA);
  rectMode(CENTER);
  rect(0, 0, 10, 10); //temperatura CANCUN 
  popMatrix();

  conversion = tminPA * (TWO_PI/50); 
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(color(216, 153, 29)); //naranjo claro
  strokeWeight(tmaxSY);
  rectMode(CENTER);
  rect(2, 2, 7, 7); //temperatura SYDNEY
  popMatrix();

  conversion = tminRO * (TWO_PI/70); 
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(color(255, 243, 16)); //amarillo 
  strokeWeight(tmaxSP);
  rectMode(CENTER);
  rect(0, 0, 6, 6); //temperatura SAN PEDRO
  popMatrix();

  conversion = tminSN * (TWO_PI/90); 
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(color(36, 206, 108)); //amarillo verdoso
  strokeWeight(tmaxES);
  rectMode(CENTER);
  rect(0, 0, 2, 2); //temperatura ESTAMBUL
  popMatrix();

  conversion = tminES * (TWO_PI/110); 
  pushMatrix();
  translate(x1, y1);
  rotate(-conversion);
  noFill();
  stroke(color(39, 192, 204, 90));  //verde agua
  strokeWeight(tmaxSN);
  rectMode(CENTER);
  rect(0, 0, 2, 2); //temperatura SANTIAGO
  popMatrix();

  conversion = tminSP * (TWO_PI/140); 
  pushMatrix();
  translate(x1, y1);
  rotate(-conversion);
  noFill();
  stroke(color(43, 124, 204));  //verdeceleste
  strokeWeight(tmaxRO);
  rectMode(CENTER);
  rect(0, 0, 3, 3); //temperatura ROMA
  popMatrix();

  conversion = tminSY * (TWO_PI/170); 
  pushMatrix();
  translate(x1, y1);
  rotate(-conversion);
  noFill();
  stroke(color(21, 15, 219)); //azul
  strokeWeight(tmaxPA);
  rectMode(CENTER);
  rect(0, 0, 3, 3); //temperatura ROMA
  popMatrix();

  conversion = tminBE * (TWO_PI/360);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  rect(0, 0, tminSY, tminSY);
  popMatrix();

  conversion = tminPA * (TWO_PI/300);
  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  noFill();
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  rect(0, 0, tminES, tminES);
  popMatrix();

}
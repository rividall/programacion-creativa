
//circulo sin fill blanco de 30x30px
void mickeymouse(float posx, float posy) {
  
  strokeWeight(5);
  stroke(b);
  noFill();
  ellipse(posx, posy, 30, 30);
}

//circulo azul sin fill de 10px de ancho
void circuloconaltura(float posx, float posy, float altura) {
  strokeWeight(10);
  stroke(a);
  noFill();
  ellipse(posx, posy, altura, altura);
}

//Mickey Mouse con cara y boca sonriente
void therealmickeymouse(float posx, float posy, float altura) {
  
  //forma del Mickey Mouse, orejas y cara
  noStroke();
  fill(b);
  ellipse(posx+(altura/2), posy-(altura/2), altura/1.5, altura/1.5);
  ellipse(posx-(altura/2), posy-(altura/2), altura/1.5, altura/1.5);
  ellipse(posx, posy, altura, altura);
  
  //ojos del Mickey Mouse
  noStroke();
  fill(n);
  ellipse(posx-6, posy-4, altura/8, altura/4);
  ellipse(posx+6, posy-4, altura/8, altura/4);
  
  //Sonrisa del Mickey Mouse
  noFill();
  stroke(n);
  strokeWeight(2);
  curve(posx-6, posy, posx-3, posy+10, posx+4, posy+10, posx+6, posy);
}

  
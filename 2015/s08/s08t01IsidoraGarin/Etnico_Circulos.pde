//Función específica para crear diseño étnico con círculos
void etnicocirculo(float x, float y){
  
  for (int i = 0; i <= width; i += 20){
    stroke(800);
    strokeWeight(10);
    fill(0, 0, 0, 255 - i);
    ellipse(x + 200, y, i, i);
  }
  
  //Ellipse fondo
  noStroke();
  fill(ccc);
  ellipse(x + 200, y, 100, 100);
  
  //Círculos chicos
  noStroke();
  fill(ccir);
  ellipse(x + 175, y - 25, 30, 30); //Círculo izq-arriba
  ellipse(x + 175, y - 25, 20, 20);
  ellipse(x + 175, y - 25, 10, 10);
  ellipse(x + 225, y + 25, 30, 30);//Círculo der-abajo
  ellipse(x + 225, y + 25, 20, 20);
  ellipse(x + 225, y + 25, 10, 10);
  
  //Círculos grandes
  noStroke();
  fill(ccir);
  ellipse(x + 225, y - 25, 60, 60); //Círculo der-arriba
  ellipse(x + 225, y - 25, 40, 40);
  ellipse(x + 225, y - 25, 20, 20);
  ellipse(x + 175, y + 25, 60, 60); //Círculo izq-abajo
  ellipse(x + 175, y + 25, 40, 40);
  ellipse(x + 175, y + 25, 20, 20);
  
  //Líneas diagonales
  stroke(bla);
  strokeWeight(4);
  line(x + 175, y - 25, x + 225, y + 25);
  
  //Cuadrado medio
  noStroke();
  fill(blat);
  rect(x + 190, y - 10, 20, 20);
}

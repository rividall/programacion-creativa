//Función específica para crear diseño étnico con cuadrados
void etnicocuadrado(float x, float y){
  
  //Ellipse fondo
  noStroke();
  strokeWeight(2);
  fill(ccg);
  ellipse(x, y, 240, 240);
  
  //Cuadrados esquinas
  noStroke();
  strokeWeight(2);
  fill(ccua);
  rect(x - 130, y - 130, 80, 80); //Cuadrado izq-arriba
  rect(x - 115, y - 115, 50, 50); 
  rect(x - 100, y - 100, 20, 20); 
  rect(x + 50, y - 130, 80, 80); //Cuadrado der-arriba
  rect(x + 65, y - 115, 50, 50); 
  rect(x + 80, y - 100, 20, 20); 
  rect(x - 130, y + 50, 80, 80); //Cuadrado izq-abajo
  rect(x - 115, y + 65, 50, 50); 
  rect(x - 100, y + 80, 20, 20); 
  rect(x + 50, y + 50, 80, 80); //Cuadrado der-abajo
  rect(x + 65, y + 65, 50, 50); 
  rect(x + 80, y + 80, 20, 20);
  
  //Líneas diagonales
  stroke(blat);
  strokeWeight(4);
  line(x - 90, y - 90, x + 90, y + 90); //Línea diagonal izq-der
  line(x + 90, y - 90, x - 90, y + 90); //Línea diagonal der-izq
  
  //Ellipses centro chicas
  noStroke();
  strokeWeight(2);
  fill(ver);
  ellipse(x - 50, y, 15, 15); //Ellipse izq
  ellipse(x + 50, y, 15, 15); //Ellipse der
  ellipse(x, y - 50, 15, 15); //Ellipse arriba
  ellipse(x, y + 50, 15, 15); //Ellipse abajo
}

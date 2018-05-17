/*en un canvas de 1000 x 1000 en la 
se dibuja una grilla de circulos de 4 columnas y 5 filas 
en el primer cuarto del sketch*/
float columnas = 4;
float filas = 5;

void setup(){
  size(1000, 1000);
}

void draw(){
  background(255);
  for(int i = 0; i<columnas; i++){
    for(int j = 0; j<filas; j++){
    fill(0);
    pushMatrix();
    translate(200,250);
    ellipse(i*50, j*125, 10, 10);
    popMatrix();
    }
  }
}
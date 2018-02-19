//UDD - Expresion Digital II
//s07e02PaloSastre
//creación de funciones específicas que generan un Mickey Mouse que se achica según la posicion del mouse en x e y.

color t, r, n;

void setup(){
  size(500, 500);
  smooth();
  
//inicialización de colores  
  t = color(61, 177, 171); //turquesa
  r = color(255, 151, 161); //rosado
  n = color(255, 159, 59); //naranjo
  
}

void draw(){
  background(t);
  
  mickey(mouseX, mouseY, mouseX * 0.1);
  
}

void mickey(float posX, float posY, float altura){
  strokeWeight(5);
  stroke(r);
  fill(255);

//cabeza y orejas de mickey  
  ellipse(posX - altura/2, posY - altura/2, altura - altura/3, altura - altura/3);
  ellipse(posX + altura/2, posY - altura/2, altura - altura/3, altura - altura/3);
  ellipse(posX, posY, altura, altura);
  
//ojos de mickey
  noStroke();
  fill(t);
  ellipse(posX - altura/4, posY - altura/4, altura - altura/2, altura - altura/2);
  ellipse(posX + altura/4, posY - altura/4, altura - altura/2, altura - altura/2);

//boca de mickey  
  noStroke();
  fill(t);
  arc(posX - altura/200, posY + altura/10, altura - altura/2, altura - altura/2, 0, PI, CHORD);
}

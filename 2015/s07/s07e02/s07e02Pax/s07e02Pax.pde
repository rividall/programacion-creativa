//udd - expresión digital
//s07e02Pax
//funciones especificas para hacer un mickey mouse y uso de radiales (jiji)

//variables
color cn, cr, ct;

//inicializar vaiables
void setup() {
  size(500, 500);
  smooth();
//colores
  cr =  color (6, 255, 192);
  ct = color (232, 1, 20);
  cn = color (255);
}

void draw() {
  background(ct);
  mouse(mouseX, mouseY, mouseX*0.1);
}

void mouse (float posx, float posy, float altura) {
  
//elipse de la cabeza
  strokeWeight(altura * 0.1);
  stroke(cr);
  fill(cr);
  ellipse(posx, posy, altura, altura);
  
//elipses de orejas
  ellipse(posx - altura/2, posy - altura/2, altura - altura/3, altura - altura/3);
  ellipse(posx + altura/2, posy - altura/2, altura - altura/3, altura - altura/3);
  
//elipses de los ojos
  fill(255);
  ellipse(posx - altura/4, posy - altura/4, altura -altura/2, altura - altura/2);
  ellipse(posx + altura/4, posy - altura/4, altura -altura/2, altura - altura/2);
  
//arco de la boca con radiales 
  fill(0);
  stroke(255);
  arc(posx - altura/200, posy + altura/8, altura - altura/2, altura - altura/2 , 0, PI, CHORD);
}


//UDD - Expresión Digital II
//s07e02IsidoraGarin
//Crear una función propia, en la que se vea un mickey mouse

//Variables de color
color bla, neg, ver, tur;

void setup(){
 size(400, 400);
 smooth(); 
 
 //Colores
 bla = color(250, 250, 250);
 neg = color(0, 0, 0);
 ver = color(128, 255, 130);
 tur = color(27, 204, 167);
}

void draw(){
 background(tur); 
 
 minniemouse(mouseX, mouseY, 60);
}

//Función creada para generar la cara de Mickey Mouse
void minniemouse (float posx, float posy, float altura){
 //Mickey Mouse con fill negro, sin stroke
 noStroke();
 fill(neg);
 //Orejas de Mickey Mouse
 ellipse(posx + altura/2, posy - altura/2, altura/1.5, altura/1.5);
 ellipse(posx - altura/2, posy - altura/2, altura/1.5, altura/1.5);
 //Cara de Mickey Mouse
 ellipse(posx, posy, altura, altura);
 //Variables para ojos y boca de Mickey Mouse
 fill(bla);
 stroke(bla);
 strokeWeight(4);
 //Ojos de Mickey Mouse
 ellipse(posx + altura/6, posy - altura/8, altura/6, altura/4);
 ellipse(posx - altura/6, posy - altura/8, altura/6, altura/4);
 //Boca de Mickey Mouse (uso de arco)
 arc(posx - altura/20, posy + altura/4, altura/4, altura/4, 0, PI+QUARTER_PI, CHORD);
}

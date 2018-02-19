//UDD - Expresion Digital II
//so7e02laura
//creamos una funcion donde un "mikeymouse" se mueve segun el mouse y se agranda y se achica
color r, a, b;

void setup(){
size(400, 400);
smooth();

//inicializacion de color
r = color (255, 140, 239);//rosado
a = color (251, 255, 158);//amarillo
b = color (255, 255, 255);//blanco

}

void draw(){
background(r);
superduper( mouseX, mouseY, mouseX);

}

//funcion propia que crea 

void superduper(float posx, float posy, float ancho){
//relleno y stroke de orjeas y cra
fill(a);
stroke(a);
strokeWeight(2);
//orejas
ellipse(posx + (ancho * 0.5), posy - (ancho * 0.5), ancho * 0.8, ancho * 0.8);
ellipse(posx + (ancho * -0.5), posy - (ancho * 0.5), ancho * 0.8, ancho * 0.8);
//cara  
ellipse(posx, posy, ancho, ancho);
//ojos y boca
fill(r);
ellipse(posx + (ancho * 0.2), posy - (ancho * 0.2), ancho * 0.2, ancho * 0.2);
ellipse(posx + (ancho * - 0.2), posy - (ancho * 0.2), ancho * 0.2, ancho * 0.2);
arc(posx + (ancho * - 0.1), posy + (ancho * 0.2), ancho * 0.3, ancho * 0.3, 0, PI+QUARTER_PI, PIE);

}

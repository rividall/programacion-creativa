//UDD- Expresión Digital II
//s07e02IsidoraV 
//Creacion de una funcion propia con forma de Mickey Mouse y que siga al mouse

//colores
color v, a, n, b;

void setup() {
  size(500, 500);
  
    //colores
  v = color(103, 155, 53); //verde
  a = color(0, 72, 156); //azul
  n = color(0); //negro
  b = color(250); //blanco
}

void draw() {
  background (n);
  
  //circulo azul que esta en la mitad del canvas
    circuloconaltura(250, 250, 400);
    
  //Mickey mouse con ojos y boca que se mueve con el mouse
    therealmickeymouse(mouseX, mouseY, 40);

}
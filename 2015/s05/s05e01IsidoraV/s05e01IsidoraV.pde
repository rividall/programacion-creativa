//UDD- Expresión Digital II
//s05e01IsidoraV
//Usar el archivo de la tarea y colocarle 2 for

float x; //posicion x
float y; //posicion y
float S1; //Suma de la posicion y
float S2; //Suma de la posicion x

//colores

int v;
int a; //<>//
int n;
int b;

void setup( ){
  size(500, 500);
  
  //se le asignan puntos del canvas a las posiciones x e y
  x= 10;
  y= 30;
  
  //Se le asignan valores a la sumatoria
  S1= 1; //<>//
  S2= 3;
  
  v= color(103, 155, 53); //Color verde
  a= color(0, 72, 156); //Color azul
  n= color(0); //Color negro
  b= color(250); //Color blanco
}

void draw() {
  
  //Circulo verde de 20x20px con fondo azul
  background (a);
 
  //doble for en el que se integran pequeñas pelotitas negras sobre el fondo y tras la elipse girando
    for(int i=0; i<=height; i+=10){
      for (int e=0; e<=width; e+=10){
      fill(n);
      ellipse(i, e, 4, 4);
    }
  }
  
  noStroke ( );
  fill(v);
  ellipse(x, y, 20, 20);
  
  
  
  //Suma de variables para generar movimiento al circulo
  y= y-S1;
  x= x+ S2;
  
    //Cada vez que el circulo cambie su direccion de X hacia la izquierda, la pelotita cambia de tamaño y color, al igual que el fondo
  if (S2 <= -1) {
    background(n);
    noStroke();
    fill(b);
    ellipse(x, y, 40, 40);
    
  }
  
  //Cuando el circulo llegue a lo alto del canvas, cambia su direccion de Y hacia abajo
  if (y <= 0) {
    S1= S1*-1;
 
  }
   
   //Cuando el circulo llegue a el extremo derecho del canvas, cambia su direccion X hacia la izquierda
   if (x >= 500) {
     S2= S2*-1;
  }
  
  
  //Cuando el circulo llegue a la izquierda del canvas, cambia su direccion a la derecha
  else if (x <= 0) {
    S2= S2*-1;
  }
  
  
  //Cuando el circulo llega a el fondo del canvas, las variables vuelven a su valor original, generando que la pelota siga el recorrido anterior, formando un loop
  else if (y >=500) {
    x= 10;
    y= 30;
    S2= 3;
    S1= 1;
  }
  

  
}

/*
errores
 0 integración for: 
 1 notación: nuevamente, el archivo sin guión s05e01IsidoraV
 0 github:
 */


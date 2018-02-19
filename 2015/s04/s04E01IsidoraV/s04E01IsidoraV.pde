//UDD- Expresión Digital II
//S04E01IsidoraV
//Movimiento de una elipse sobre el Canvas y que se genere un Loop



float cx; //posicion ellipse
int v;
int a;

void setup() {
  size(500, 500);
  
  cx = 10;
  v = color(103, 155, 53); //verde bien en el uso de nombres relacionadas al color
  a = color(0, 72, 156); //azul
  
}

void draw() {
  
  background(v);
  
  //Ellipse que se mueve
  //la ellipse se crea
  ellipse(cx, cx, 10, 10);
  fill(a);
  noStroke( );

//loop de la pelota en las coordenadas 200, 200
    if (cx >= 200) {
    cx = 10;
  }
  
  
  //Si alcanza la mitad de su camino cambia de tamaño y el color de la ellipse se cambia con el del fondo
  // la pelota alcanza un cuarto del camino 
  else if (cx >= 100) {
    background(a);
    fill(v);
    ellipse(cx, cx, 20, 20);
  }
  
  //movimiento de pelota, 1 px por actualización
  cx ++; 
  
}

/*
errores
0 run
0 programa
1 sintaxis: diferencia entre el comentario y lo escrito, linea 24 
0 código: 
0 comentario:
0 variables:
7 ortografía: espacios
1 notación: s04E01IsidoraV y debe ser s04e01IsidoraV minúsculas las de semana y ejercicio
1 github: s04E01IsidoraV y debe ser s04e01IsidoraV minúsculas las de semana y ejercicio
*/

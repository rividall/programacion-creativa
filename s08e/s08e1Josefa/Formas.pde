class Formas {

  float r; 
  float r2 = 0; 
  float tam = 25;

  float posX = 100;
  float posY = 0;
  float a;
  Formas(float posX, float posY, float a) {
    this.posX = posX;
    this.posY = posY;
    this.r = 10; //este valor define la distancia entre los circulos del estado 1 
    this.a = a;
  } 

  void inicio() {

    background(0);

    //anillo numero uno 
    pushMatrix();
    translate(width/2, height/3); //traslafdamos el anillo al cen.ro del ancho y un tercio de altura 
    rotate(radians(r)); 
    fill(240);
    ellipse(100, 0, 250, 250); //dibujamos la ellipse blanca 
    fill(0);
    ellipse(100, 0, 230, 230); //dibujamos una segunda ellipse con el color de fondo para que la primera paresca un anillo 
    r++; //ratamos en positivo para que gire con las manecillas del reloj
    popMatrix();

    //anillo numero 2 con muchos circulitos
    pushMatrix();
    translate(250, 350);
    rotate(radians(r2));
    //generamos los puntos 
    for (int i=0; i<15; i++) { //generamos un forloop para decir que 15 pelotitas compondran el anillo1
      pushMatrix();
      translate(100, 0); //traslado la rotación en el eje x para que rote en un entorno 
      rotate(radians(30*i)); //rotamos 30 grados en cada vuelta
      fill(255); 
      noStroke(); //no se genera lineas 
      ellipse(70, 70, 15, 15); //ponemos el rect en x=100
      popMatrix();
    }
    r2--; //rotamos en negativo para que gire contra las manecillas del reloj 
    popMatrix();
  }


  void botones() {
    for (int i = 0; i < 3; i++) { 
      textSize(50); //tamaño del texto
      stroke(255);
      strokeWeight(3);
      noFill();
      rect(65 + 130 * i, 600, 110, 50);// dibujamos los rectangulo i multiplica 130 (tam del rect + pequeños margenes) + 65 del primer margen
      fill(255);
      text("1", 105, 645);
      text("2", 235, 645);
      text("3", 365, 645);
    }
  }
  

  void estado1() {

    //background(12, 3, 67); //color celeste de fondo
    strokeWeight(5); //grosor de linea 5px

    for (int i = 0; i < 4; i++) { //for para hacer 3 anillos por figura

      noFill();

      //funcion que pintan los anillos
      if (i == 1 ) {
        stroke(132, 105, 193); //color morado claro
      } else if (i == 2) {
        stroke(95, 73, 184); //color morado
      } else {
        stroke(49, 36, 164); //color azul oscuro
      }
      ellipse(posX, posY, tam*i, tam*i); 

      //funciones para crear la dilatcion de la figura
    }

    tam ++; 
    if (tam > 50) {
      tam *= -1;
    }
  }


  void estado2() {

    float posX1 = 50;

    background(13, 3, 67);
    noStroke();

    for (int i = 1; i < 7; i++) { //for loop para generar 5 filas 
      for (int j = 1; j < 6; j++) {

        fill(95, 73, 184); 
        rect(posX1, j*80, 400, 20); //rect de primera fila

        fill(132, 105, 193); 
        rect(80*i-30, 80, 20, 380); //rect de primera columna
      }
    }

    for (int i = 1; i < 7; i++) { //for loop para generar 5 filas 
      for (int j = 1; j < 6; j++) {

        fill(132, 105, 193);
        rect(80*i+10, 80, 20, 380); //rect de segunda columna

        fill(95, 73, 184); 
        rect(50, j*80+40, 400, 20); //rect de segunda fila
      }
    }

    fill(13, 3, 67);
    rect(0, 480, 700, 80);
  }
  

  void rotar(float ap, float f) { //función para rotar los 3 anillos 
    a += ap; //se suma para ver las 3 ellipses
    float h = map (sin(f), -1, 1, -100, 100);

    posX =(r + h) * cos(a);
    posY = (r + h) * sin(a);
  }
}
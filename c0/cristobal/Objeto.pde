class Objeto {
  color[] colores;
  color propioDelObjeto;
  int randomColor;
  int half = 3;
  float posX;
  float posY;
  float velx;
  float vely;
  float tamano;


  Objeto(int i) {
    this.randomColor = int(random(3));// hara un random entre los 3 colores que hay
    colores = new color[3];//el numero es la cantidad que sale en i<3
    colores[0] = color(255, 0, 0);//rojo
    colores[1] = color(0, 255, 0);//verde
    colores[2] = color(0, 0, 255);//azul


    posX= width/2;//posicion inicial a la mitad del ancho
    posY= height/2;//posicion inicial a la mitad del alto

    velx=random(-5, 5);//velocidad eje x aleatoria entre -5 y 5
    vely=random(-5, 5);//velocidad eje y aleatoria entre -5 y 5

    posX += velx; //aceleración
    posY += vely;//aceleración
    tamano = half*2;// tamaño de la figura sera el doble del valor de half
  }

  void pelotitas() {

    if (posX > width/2 && posY < height/2) {
      //la figura cambiara de forma a un rectangulo cuando pase por el extremo arriba a la derecha de la pantalla

      fill(colores[randomColor]); //el color de las figuras sera aleatorio entre las 3 opciones de colores
      rect(posX, posY, tamano, tamano);//se formaran rectangulos
    } else if (posY > height/2 ) {// si las esferas pasan por la mitad de abajo de la pantalla, seran esferas rojas
      fill(colores[0]);//los cìrculos seran rojos
      ellipse(posX, posY, tamano, tamano);
    }

    if (posX <width/2 && posY < height/2) {// si las figuras pasan por el extremo izquiero  de arriba se cumplen las siguientes acciones
      fill(colores[2]);// serán de color azul
      ellipse(posX, posY, random(half, 10), random(half, 10));// su tamaño sera aleatorio entre el valor de half y 10
    }
  }

  void movimiento() {// las figuras se moveran

    posX += velx; //aceleración eje x
    posY += vely;//aceleración eje y
  }

  void rebote() {
    if (posX > width-half && velx >0 ) {//si las figuras llegan al borde derecho estas rebotarán.
      posX = width-half;
      velx *= -1;
    }
    if (posX < half ) {//si las figuras llegan al borde izquierdo rebotarán
      posX = half;
      velx = 10;
    }
    if (posY > height-half && vely >0) {//si llegan al borde inferior rebotarán
      posY = height -half;
      vely *= -1;
    }
    if (posY < half ) {// si llegan al borde superior rebotarán
      posY = half;
      vely = 10;
    }
  }
}

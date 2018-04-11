//Archivo de la clase
class Formas { //nombre de la clase
  //declaro variables de color
  color [] colores;
  color eleccionColor; //variable para hacer uso de más de un color
  int randomColor; //variable random para elección de color al azar
  //declaro variables de posición
  float x; 
  float y;
  float a;
  //declaro variable de velocidad
  float vel;
  
  //constructor
  Formas (float x, float y) {
    this.randomColor = int(random(4));
    colores = new color [4]; //variable de 4 colores 
    colores [0] = color (78, 244, 232);//celeste
    colores [1] = color (255, 240, 0);//amarillo
    colores [2] = color (255, 176, 185);//rosado
    colores [3] = color (133, 154, 235);//lila
    eleccionColor = colores [randomColor]; //

    this. x = 0;
    this. y = random (height);
    this. a = random (width);
    vel= random (8);
  }

  //metodo figura triangulo
  void triangulo () {
    noStroke();
    fill(eleccionColor, random (200)); //rosado
    triangle(x, y, x, y-20, x-50, y-10);//tamaño triangulo
    if (x<-1) {
      x= 400;
    }
  }
  //movimiento de los triangulos de derecha a izquierda 
  void movizq () { 
    x=x-vel; //y es cero pero se le va sumando vel, es decir 1px cada vez
  }

  void triangulodos() { 
    noStroke();
    fill(eleccionColor, random(300));//amarillo
    triangle(a, y, a, y+25, a+50, y+10);
    if (a>400) {
      a=0;
    }
  }

  //movimiento de los triangulos de izquierda a derecha
  void movder() {
    a=a+vel;//la variable a es igual a su valor más la velocidad
  } 

  void circulos() {//circulos negros sin borde con valor de ancho y alto al azar
    frameRate(10);
    noStroke();
    fill(0);
    for (float i = 0; i<400; i++) {//en cada loop parte desde 0 a 400 agregando la figura en cada pixel
      float x= random (width);
      float y = random (height);
      ellipse (x, y, 15, 15);
    }
  }
}
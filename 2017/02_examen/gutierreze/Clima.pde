class Clima {
  //variables
  float media;
  float minima;
  int i;
  float max ;
  String fecha;
  float maxima;
  //constructor
  Clima(String fecha,float maxima, float media, float minima) {
    this.max= map(maxima, 0, 34, 0, TWO_PI);
    this.media= map(media, 0, 34, 0, TWO_PI);
    this.minima= map(minima, 0, 34, 0, TWO_PI);
    this.fecha=fecha;  
  }
  /*
  Cambié pos, por posY para tener mejor lectura de la variable y cambié el map par que tenga un margen igual en el ancho sin importar el tamáño del canvas
  */
  void show1(int posY, int ini) {
    float inio = map(ini, 0, 9, width * .1, width * .9);
    noFill();
    strokeWeight(7);
    stroke(255, 0, 255);
    arc(inio, posY, 55, 55, 0, max);
    stroke(0, 255, 255);
    arc(inio, posY, 40, 40, 0, media);
    stroke(255, 255, 0);
    arc(inio, posY, 25, 25, 0, minima);
    textSize(10);
    text(fecha,inio-30,posY+60);
     }
  }
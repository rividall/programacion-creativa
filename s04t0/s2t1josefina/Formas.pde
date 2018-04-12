//archivo de la clase
class Formas {
  float x;
  float y;
  float vel;

  //constructor
  Formas (float x, float y){
    this. x = random (width);
    this. y = random (height);
    // x=width/4; //parte desde x=100
    // y=0;
     vel= random (4);
  }

  //metodo figura triangulo
  void triangulo (){
    noStroke();
    fill(78,244,232);
    triangle(x,y,x+25,y,x+10,y+25);
    if (y>400){
      y= 0;
    }
}
    void fall (){
      y=y+vel; //y es cero pero se le va sumando vel, es decir 1px cada vez


    }

}

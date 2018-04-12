//archivo de la clase
class Formasdos {
  float a;
  float b;
  float vel;

  //constructor
  Formasdos (float a, float b){
    this. a = random (width); //parte desde x=200
    this. b = random (height);
    vel=1;
  }

  //metodo figura triangulo
  void circulo (){
    noStroke();
    fill(255,176,185);
    ellipse(a+10,b+370,25,25);
    if (b+370<0){
      b=0;
    }
}
    void up (){
      b=b-vel; //y es cero pero se le va sumando vel, es decir 1px cada vez


    }

}

class Circulos{

  float x,y,t,velx,vely;

Circulos(){

x = random(0,500);
y = random(0,500);
t = random(10,30);

velx = random(-1,1);
vely = random(-1,1);
}
  void tamano(){
fill (0);
    ellipse(x,y,t,t);
  }
void mov(){


  x += velx;
  y += vely;
}

/*  void bordes(){
    if (x > width || x < 0 || y > height || y < 0){
      x= width/2;
      y= height/2;
    }
  }
  */

  boolean salida(){ //al usar este se comenta el void bordes
      if (x > width || x < 0 || y > height || y < 0){
      return true;
    } else {
      return false;
    }
  }
}

class Partic{
  float x;
  float y;
  float t;
  float velx ;
  float vely;

  Partic(float x, float y,float t){
  this.x = x;
  this.y = y;
  this.t =  t;

    velx = random(-4,4);
    vely = random(-4,4);


  }
void show(){
  fill(0);
  ellipse(x,y,t,t);

}
void movi(){
  x += velx;
  y += vely;
}

// void denuevo(){
//   if(x>width || x<0 || y>height || y<0){
// x = width/2;
// y = height/2;
//
//   }
//  }
 void todos(){
   show();
   movi();
  // denuevo();
 }

 boolean salida(){

  if(x>width || x<0 || y>height || y<0){
   return true;
 }else {
   return false;
   }
 }

}

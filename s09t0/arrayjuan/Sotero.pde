class Sotero{

  float x ;
  float y ;
  float tx;
  float ty;

Sotero(float x, float y, float tx, float ty){
  this.x   = x  ;
  this.y   = y  ;
  this.tx  = tx ;
  this.ty  = ty ;

}

void randomline(){
  fill(0,142,98);

  rect(x,y,5,ty);

}
 void movim(){
 x = x + 0.3;
 ty ++  ;
 if(ty > 100){
 ty = ty -3   ;

 }
 if(ty < -100){
 ty = ty +3;
 }
}

void agrupacion3 (){
 randomline();
 movim();

}


}

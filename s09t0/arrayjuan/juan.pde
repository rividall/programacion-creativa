class Juan{

//stroke de la ellipse
float x ;
float y ;
float tx;
float ty;
// centro de la ellipse
float tpx;
float tpy;
//Editor de color
int r = 255  ;
int g = 103 ;
int b = 63 ;
int op = 350;

///////////////////////////////////////////////////
  Juan(float x, float y, float tx, float ty){
  this.x   = x  ;
  this.y   = y  ;
  this.tx  = tx ;
  this.ty  = ty ;
  this.tpx = tpx;
  this.tpy = tpy;

}


// FUNCIONES //
void forma(){
       noStroke()        ;
       fill (r,g,b,op)  ;
       ellipse(x,y,tx,ty);
       op = op -7;
       if (op <= 0){
         op = 351;
       }
}

void crecimiento(){
  tx = tx +7;
  ty = ty +7;

  if (tx > 350){
      tx = 0;
      ty = 0;
  }
}

void inter(){

}

void mover(){
   x++;
   y--;

}

void limites(){
     if(x > width){
     x = 0;
  }
     if(y < 0){
     y = height;
  }
}

void newforma(){

  fill (142,30,0,op);
  ellipse(x,y,tpx,tpy);

}
void crecimiento1(){
  tpx = tpx +3;
  tpy = tpy +3;

  if (tpx > 150){
      tpx = 0;
      tpy = 0;
  }
}

////////////////////////////////////////////
void agrupacion1(){

  limites();
  crecimiento();
  forma();
}
///////////////////////////////////////////
void agrupacion2 (){
  newforma();
  crecimiento1();
}
//////////////////////////////////////////
}

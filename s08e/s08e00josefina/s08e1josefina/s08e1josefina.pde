Formas f;
 float x, y;

void setup(){
  size(400,400);
  f= new Formas ();

}

void draw (){
    for (int i = 0; i<12; i++) {
      for (int j = 0; j<8; j++) {
        float x = map (i, 0, 9, width*.25, width*.65);
        float y = map (j, 0, 7, height*.25, height*.65);
        //ellipse(x, y, 10, 10);
         f.figura(x,y);
      }
    }
}
//falta map con cambio de opacidad 

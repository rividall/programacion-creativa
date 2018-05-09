class Figura {
  float x ;
  float y;
  float t ;
  float t2 ;
float r;
  float r1;
  float r2;
  int r3;
  float x1;
  float y1;
 Figura(){
   x = 0;
    y = 0;
    t = 30;
    t2 = 40;
    x1 = random(-100,100);
    y1 = random(-100,100);
 }


   void rectangulo(){

     translate (mouseX,mouseY);
     pushMatrix();
     rotate(r1);
     noFill();
     stroke(0,255,0);
     rect(x,y,t,t);

     if (t == 30){
       r1+= 0.1;

     }
     popMatrix();
     rotate(r2);
     rect(x,y,t2,t2);
     if (t2 == 40){
       r2+=0.123;
    }



  }

  void circulo(){

    translate(width/2,height/2);
    rotate(radians(r3));
    r3++;//origen, giran en torno al centro del canvas

    for (int i=0; i< 3; i++) {
      noStroke();
      fill(255,0,0);
      ellipse(100 + i * 20, 0, 10, 10);
    }

 }

  void pelotillas(){
    translate(width/2,height/2);
   for (int i= 0; i < 8; i++){
     fill(255);
     noStroke();
     rotate(radians(r));
     ellipse(x1,y1,20,20);
     //x1 = random(-100,100);
     //y1 = random(-100,100);
     r+= 0.2;
   }
  }

}

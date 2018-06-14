class Particula {
  float x, y, t, r;
  float speed1, speed;
  color c1;
  float velX, velY;
  Particula() {
    x = 250;
    y = 250;
    t= 10;
    speed1 = random(20) ;
    speed = random(20) ;
  }

  void forma(float n) {
    //crea una ellipse o un rectángulo, que cambian de color cada cierto tiempo.


    // Cambia el color de la figura cada cierto tiempo
    if (frameCount % 60 ==0) {
      c1 = color(random(255), random(255), random(255)) ;
      //fill(random(255), random(255), random(255));
    }
    // Cambia el tamaño de las figuras cada cierto tiempo
    if (frameCount % 90 == 7) {
      t = random(10, 80);
    }


    if (n == 1) {// crea una ellipse
      noStroke();
      fill(c1);
      ellipse(x, y, t, t);
    } else if (n == 2) {//crea un rectángulo
      //  rect(x,y,t,t);
      //t = 30;
      fill(c1);
      rect(x, y, t, t);
    }
    //}
  }

  void movi(int m) {
    // modifica el desplazamiento de cada forma,
    if (m == 1) {//se mueve a la derecha
      velX+=0.05;
    }
    if (m == 2) { //se mueve hacia abajo
      velY+=0.05;
    }
    if ( m == 3 ) {//se mueve hacia arriba
      velY-=0.05;
    }
    if ( m == 4) {// se mueve a la izquierda
      velX-=0.05;
    }

    x+=velX;
    y+=velY;


    if (t>45) {//pasa de largo
      if (x>width) {
        x=0;
      }
      if (x<0) {
        x = width;
      }
      if (y>height) {
        y=0;
      }
      if (y<0) {
        y=height;
      }
    } else if (t<=45) {//rebota en los bordes
      if (x>=width - t/2) { 
        velX = velX * -1;
      }
      if (x<=t/2-1) {
        velX = velX*-1;
      }
      if (y>=height-t/2) {
        velY= velY*-1;
      }
      if (y<=t/2-1) {
        velY=velY * -1;
      }
    }
    
  }
}
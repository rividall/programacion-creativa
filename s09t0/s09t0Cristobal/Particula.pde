class Particula {
  float x, y, t, r;
  float speed1, speed;

  Particula() {
    x = 250;
    y = 250;
    t= 10;
    speed1 = random(20) ;
    speed = random(13) ;
  }

  void forma(float n) {
//crea una ellipse o un rectángulo, que cambian de color cada cierto tiempo.


    // Cambia el color de la figura cada cierto tiempo
    if (frameCount % 60 ==0) {
      fill(random(255), random(255), random(255));
    }
    // Cambia el tamaño de las figuras cada cierto tiempo
    if (frameCount % 90 == 7) {
      t = random(20, 60);
    }


      if (n == 1) {// crea una ellipse
        noStroke();
        ellipse(x, y, t, t);
      } else if (n == 2) {//crea un rectángulo
        rect(x, y, t, t);
      }
    //}
  }

  void movi(int m) {
    // modifica el desplazamiento de cada forma,
    if (m == 1) {//se mueve a la derecha
      x+= 3;
    } else if (m == 2) { //se mueve hacia abajo
      y+= 3;
    } else if ( m == 3 ) {//se mueve hacia arriba
      y-= 3;
    } else if ( m == 4) {// se mueve a la izquierda
      x-= 3;
    } else if ( m==5) {// movimiento aleatorio
      x += speed;
      y +=speed1;
    }

    //se establece que la forma va a rebotar en los bordes
    // al moverse aleatoriamente.
    if (x > width) {
      speed -= speed*2;
    } else if (x<= 0) {
      speed -=speed *2;
    } else if ( y <= 0) {
      speed1 -= speed1*2;
    } else if ( y > height) {
      speed1 -= speed1 * 2;
    }
  }
}

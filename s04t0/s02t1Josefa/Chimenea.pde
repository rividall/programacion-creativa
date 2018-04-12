/* Aqui trabajo con una altura negatia para que el rectangulo se posicione sempre
en el height y pueda crecer y achicarse de arriba hacia abajo*/

class Chimenea {
  float x;
  float y;
  float an; //ancho de la Chimenea
  float al; //alto de la Chimenea
  float v;
  float dY;

  Chimenea (float x, float y, float an, float al, float v, float dY){
    this.x = x; //posicion en x
    this.y = y; //posicion en y
    this.an = an; //ancho que tomara la figura
    this.al = al; //alto que tomara la figura
    this.dY = dY; //diracción de la partícula: si va hacia abajo o arriba
    this.v = v; //velocidad de la partícula
  }

  void dibuja (){
    strokeWeight(2);
    stroke(97,102,112);
    fill(139, 146, 160);
    rect(x, y, an, al, 10, 10, 0, 0);
  }

  void movimiento (){
    //al--; //trabajo con un alto negativo para que suba cuando agregue altura
    //al += v * dY;

    //LO LOGRE!!!!!!
    al += v * dY;

    if (al < -130){
      dY *= -1;
    }
    if (al > 1){
      dY *= -1;
    }

    // y += v * dY; //movimiento hacia arriba del rectangulo
    //
    // if (y < 600){
    //   dY *= -1;
    // }

  }
}

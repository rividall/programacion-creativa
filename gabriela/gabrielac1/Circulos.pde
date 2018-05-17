/*Estan los constructores de las 3 propuestas.
-La propuesta void cir (3) es la principal y funciona
bien, pero aun no se como poner los colores.
cambia de un sentido a otro con 0 y 1.

- La propuesta void anillos (1) también funciona
y falta arreglar colores. Hay un error al cargar
las listas en el sketch, arruina el código de voir cir.
Funciona al presionar una tecla, van saliendo anillos de
círculos.

- La propuesta void cudrados (2) funciona, pero no
exactamente como en la propuesta(se supone que al
pasar el mouse los cuadrados se juntaban, pero aquí
se agrandan. Me gusta como está, ¿puedo dejarlo así?
trabaje tratando de juntarlos con Lynch y no pudimos,
por eso el código está un poco desordenado en esa parte).
Es las unica propuesta en que los colores si funcionan. 
*/
class Circulos {
  color [] colores;
  int x, y, tam, p, q, cant, from1, to1, col1, from2, to2, col2, from3, to3, col3;
  int r = 0;
  float cantt, val, d, dMap, posXchng;
  float thresh = 0;

  Circulos(int i) {
    colores = new color [31];
    colores [0] = color (150, 74, 129);
    colores [1] = color (150, 74, 129, 80);
    colores [2] = color (150, 74, 129, 60);
    colores [3] = color (81, 28, 106);
    colores [4] = color (81, 28, 106, 80);
    colores [5] = color (81, 28, 106, 60);
    colores [6] = color (64, 54, 133);
    colores [7] = color (64, 54, 133, 90);
    colores [8] = color (64, 54, 133, 80);
    colores [9] = color (64, 54, 133, 70);
    colores [10] = color (64, 54, 133, 60);
    colores [11] = color (64, 54, 133, 50);
    colores [12] = color (64, 54, 133, 40);
    colores [13] = color (64, 54, 133, 35);
    colores [14] = color (64, 54, 133, 30);
    colores [15] = color (64, 54, 133, 25);
    colores [16] = color (64, 54, 133, 20);
    colores [17] = color (64, 54, 133, 15);
    colores [18] = color (64, 54, 133, 10);
    colores [19] = color (64, 54, 133, 5);
    colores [20] = color (64, 54, 133, 3);
    colores [21] = color (64, 54, 133, 2);
    colores [22] = color (64, 54, 133, 1);
    colores [23] = color (12, 27, 72);

    colores [24] = color (217, 225, 166);
    colores [25] = color (21, 147, 138);
    colores [26] = color (109, 172, 121);

    //tal vez estos van con lerpColor
    colores [27] = color (169, 64, 60);
    colores [28] = color (230, 183, 120);
    colores [29] = color (139, 183, 120);
    colores [30] = color (205, 109, 98);

    x= 75;
    y= 75;
    tam= 8;
    q =i*13;
    cant=24;

    from1= color(150, 74, 129, 100);
    to1= color(150, 74, 129, 60);
    col1= lerpColor(from1, to1, .50);

    from2= color(81, 28, 106, 100);
    to2= color(81, 28, 106, 60);
    col2= lerpColor(from2, to2, .50);

    from3= color(64, 54, 133, 100);
    to3= color(64, 54, 133, 0);
    col3= lerpColor(from3, to3, .17);
  }

  void cir() {
    if (n == 0) {
      q++;
    } else if (n == 1) {
      q--;
    }
    // primera circunferencia de círculos rosados
    pushMatrix();
    translate(width/2, height/2); // Nuevo centro, si no, girarían en torno a 0,0.
    //q++; // velocidad giro 1
    p+=3; //velocidad giro 2
    rotate(radians(q));
    pushMatrix();
    translate(width/4, height/4); // Los círculos pequeños giran en torno al círculo que forman.
    rotate(radians(p));
    for (int i=0; i< cant; i++) {
      noStroke();
      //fill(col3);
      fill(colores[0]);
      ellipse(x, y, tam, tam); // la posicion respecto del origen
      rotate(radians(360/cant));
    }
    popMatrix();
    popMatrix();
  }
  void anillos() {
    translate(width/2, height/2); //el origen está en el centro del canvas.
    pushMatrix();
    rotate(radians(r));
    r--; //giran en sentido contrario de las agujas del reloj.
    cantt= 20; // cantidad de lineas y de grados.
    for (int j = 0; j<cantt; j++) {
      for (int i=0; i< val; i++) {
        noStroke();
        fill(colores [24]);
        //fill(colores[i]);
        ellipse(3+ i * 20, 0, 12, 12);
      }
      rotate(radians(360/cantt));
    }

    popMatrix();
  }

  void cuadrados(){
      rectMode(CENTER);
  noStroke();
  for (int i = 30; i<width; i+=50) {
    for (int j = 30; j<height; j+=50) {
      d = dist(mouseX, mouseY, i, j);
      dMap = map(d, 300, 0, 0, 25);

      if (dMap <=0)dMap=0;
      if (d < thresh && i < mouseX) {
        posXchng = 50;
      }
      if (d < thresh && i > mouseX) {
        posXchng = -50;
      }

   if (dMap < 4){
   fill(colores [27]);
   }
   else if (dMap <= 8){
   fill(colores [28]);
   }
   else if (dMap <= 10){
   fill(colores [29]);
   }
   else if (dMap <= 15){
   fill(colores [30]);
   }
   rect(i , j, dMap+2, dMap+2);
    }
  }
  }
}

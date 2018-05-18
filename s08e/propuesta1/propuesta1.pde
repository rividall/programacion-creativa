//aparece un fondo azul y al apretar una una tecla aparecen círculos

int r = 0; //parte en 0
float x, y, cantt, val;
color [] colores;

void setup() {
  size(800, 800); 
  //colores de los puntitos
  colores = new color [30];
  colores [0] = color (217, 225, 166);
  colores [1] = color (21, 147, 138);
  colores [2] = color (109, 172, 121);
}
void draw() {
  background (12, 27, 72);
  translate(width/2, height/2); //el origen está en el centro del canvas.
  pushMatrix();
  rotate(radians(r));
  r--; //giran en sentido contrario de las agujas del reloj.
  cantt= 20; // cantidad de lineas y de grados.
  for (int j = 0; j<cantt; j++) { 
    for (int i=0; i< val; i++) { 


      noStroke();
      fill(colores[i]); 
      ellipse(3+ i * 20, y, 12, 12);
    }
    rotate(radians(360/cantt));
  }

  popMatrix();
}

//se agregan círculos de puntitos al apretar un botón 
void keyPressed() {
  val++;
}
// Tarea semana 12
// Josefa Méndez
// 31 / 05 / 2018

ArrayList <Figura> nFiguras = new ArrayList <Figura>(); // ArrayList para la clase Figura

Figura f; // Vinculo la Figura con la letra f

int n; //variable de selleccion 

void setup() {

  size(600, 400);

  // For para generar mis Figuras
  for (int i = 0; i < 10; i++) {
    f = new Figura(random(width), random(height), random(width), random(height), random(20, 60), random(30, 100)); // Vinculo el constructor
    nFiguras.add(f);
  }
}

void draw() {
  background(255);

  for (Figura f : nFiguras) {
    f.dibujo(n);
    f.movimiento();
  }
}

void mousePressed() {
  //condición para agregar figuras 
  if (mousePressed) {
    Figura f = new Figura(random(width), random(height), random(width), random(height), random(20, 80), random(30, 100));
    nFiguras.add(f);
  }
}

void keyPressed () {
  //condición para que se vean los rec 
  if (key == '1') {
    n = 1;
  }
  //condición para que se vean los circulos 
  else if (key == '2') {
    n = 0;
  }
  //condición para que se vean las dos figuras
  else if (key == '3') {
    n = 2;
  }
}
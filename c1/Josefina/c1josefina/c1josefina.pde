// Descripción general y titulo
ArrayList<Figura> lista = new ArrayList<Figura>(); //Agregar la clase como lista
Figura f;
//Variables para separar sketchs
int var1 = 1;
int var2 = 0;
int var3 = 0;
//Variables cuadrados NO HAY
//Variables flores
int n;
//Variables opacidad
float val = 0;
float value = 10;

void setup() {
  size(400, 400);
  f = new Figura();
  // si no se usa la lista, el tercer paso de una variable no se cumple
  lista.add(f);
}

void draw() {
  if (var1 == 1) {//Cuadrados
    background(255);
    noStroke();
    // este frameRate es para todo el programa, no se puede cambiar y se usa
    // en el setup
    frameRate(45); // 45 frames por segundo
    f.filacuad();
    f.sube();
    f.lineacuad();
    f.baja();

    //Separacion del tamaño del sketch para relacionarlo con la posicion del mouse para cambiar los colores de los objetos
    if ( mouseX < width / 2 && mouseY < height / 2) {
      fill(f.colores[0]);
      f.sube();
    }

    if ( mouseX < width / 2 && mouseY > height / 2) {
      fill(f.colores[1]);
      f.sube();
    }

    if ( mouseX > width / 2 && mouseY < height / 2) {
      fill(f.colores[2]);
      f.sube();
    }

    if ( mouseX > width / 2 && mouseY > height / 2) {
      fill(f.colores[3]);
      f.sube();
    }
  }

  if (var2 == 1) {//flores
    frameRate(15);
    background(255);
    for (Figura f : lista)
      f.flor(0);
    f.flor(400);
  }

  if (var3 == 1) {//opacidad
    background(0);
    fill(0);
    noStroke();
    ellipse(200, 200, 5, 5);
    for (Figura f : lista) {
      f.cir();
      f.op();
      f.grilla();
    }
  }
}

void keyPressed () {
  if (key == 'q') {//Sketch cuadrados activado
    var1 = 1;
    var2 = 0;
    var3 = 0;
  }
  if (key == 'w') {//Sketch flores activado
    var1 = 0;
    var2 = 1;
    var3 = 0;
  }
  if (key == 'e') {//Sketch opacidad activado
    var1 = 0;
    var2 = 0;
    var3 = 1;
  }
  //KeyPressed del sketch de flores
  if (key == 'a') {
    n = 0;
  }
  if (key == 's') {
    n = 1;
  }
}

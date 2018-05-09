ArrayList<Figura> lista = new ArrayList<Figura>();
Figura f;
boolean funcion1 = false;
boolean funcion2 = false;
boolean funcion3 = false;
void setup() {
  size(500, 500);
  //for(int i = 0;i<4;i++){
  f = new Figura();
  lista.add(f);
  rectMode(CENTER);
}

void draw() {
  background(0);
  for (Figura a : lista) {
    if (funcion1== true) {

      a.rectangulo();
    } else if (funcion2 == true) {

      a.circulo();
    } else if (funcion3 == true) {
      a.pelotillas();
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    funcion1 = !funcion1;
  }
  if (key == 'j') {
    funcion2 = !funcion2;
    funcion1 = funcion1;
  }
  if (key == 'k') {
    funcion1 =funcion1;
    funcion2 = funcion2;
    funcion3 = !funcion3;
  }
}
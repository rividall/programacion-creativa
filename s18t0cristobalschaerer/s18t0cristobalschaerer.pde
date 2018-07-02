
ArrayList<Referente> lista = new ArrayList<Referente>();
Referente f;
float r;
boolean funcion1 = false;
boolean funcion2 = false;
boolean funcion3 = false;
void setup() {
  size(1080, 700);

  f = new Referente();
  lista.add(f);
  rectMode(CENTER);

}

void draw() {

  background(0);
  for (Referente a : lista) {
    if (funcion1== true) {
      r = map(mouseX,0,width,0,10);
      a.ref1(r);
    } else if (funcion2 == true) {

      a.ref2();
    
    } else if (funcion3 == true) {
      for(int v=0;v<12;v++){
      a.ref3(v);
    }
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

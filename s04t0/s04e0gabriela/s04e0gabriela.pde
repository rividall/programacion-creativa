ArrayList<Circulos> lista = new ArrayList<Circulos>();
Circulos c;


void setup(){
  size(500,500);
  for (int i = 0; i < 4; i++){
    c = new Circulos();
    lista.add(c);
  }

}

void draw(){

//  frameRate(30);
  background(255);
  for (Circulos a: lista){
  a.tamano();
//  a.bordes();
  a.mov();
  a.salida();

  }
for (int i =lista.size()-1; i >= 0; i--){
  Circulos c = lista.get(i);
  if(c.salida()){ // al ser boolean, al poner () significa: true.
    lista.remove(i);
  }
}
}
/*void keyPressed(){
  if(key== ' '){
    Circulos c = new Circulos(mouseX, mouseY,10);
    lista.add(c);
  }
}
*/

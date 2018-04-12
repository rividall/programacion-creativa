ArrayList<Partic> lista = new ArrayList<Partic>();
Partic p;

void setup(){
 size(600,600);
 for(int i=0;i<6;i++){
 p=new Partic(random(width),random(height),random(5,10));
 lista.add(p);
 }
}
void draw(){
  background(255);
  for(Partic a : lista){
    a.todos();
}
  //for (int i = 0; lista.size(); i++) {
    for(int i = lista.size() -1; i>=0;i--){
      Partic p = lista.get(i);
      if (p.salida()){
        lista.remove(i);
        }//crea 4 onbjetos de la lista temporales
    }
    textSize(10);
    text(lista.size(),20,20);

  }
void keyPressed() {
  if (key == ' '){
    Partic p = new Partic(mouseX,mouseY,10);
    lista.add(p);
  }
}

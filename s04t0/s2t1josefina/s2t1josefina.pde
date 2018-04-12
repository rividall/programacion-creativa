//archivo principal
//comentariopp
ArrayList<Formas> listadeobjetos = new ArrayList<Formas>();
ArrayList<Formasdos> lista = new ArrayList<Formasdos>();
Formas f;
Formasdos d;

void setup (){
  size(400,400);

  for (int i = 0; i <50; i++){
  f = new Formas (random(width), random (height));
  listadeobjetos.add(f); //inicializa
  }
for (int i = 0; i < 20; i++){
d = new Formasdos (random(width),random(height));
lista.add(d);
}


}

void draw (){
  background (255);

for (Formas f:listadeobjetos){//ACUERDATE DEL FOR
  f.triangulo(); //uso
  f.fall();
}
for (Formasdos d:lista){
  d.circulo();
  d.up();
}


}

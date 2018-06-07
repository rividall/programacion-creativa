// inicializacion de listas arrays
ArrayList<Juan> lista = new ArrayList<Juan>();
ArrayList<Sotero> listo = new ArrayList<Sotero>();

// Acciones  remotas
//boolean l = false;

// Inicializacion de clases
Juan j;
Sotero b;

void setup(){
  size(600,600);
  for (int i = 0; i < 20; i++){ // el numero 10 es la cantidad de figuras que aparecen
  j = new Juan (random(width),random(height),random(5,100), random (5,100));
  lista.add(j);
  listo.add(b);
}
for (int i = 0; i < 20; i++){
  b = new Sotero(random(width),random(height),random(5,10), random (5,10));
  listo.add(b);
}


}

void draw(){
background(32,219,161);
for (Juan j : lista) { // esto va a definir el comportamiento de todos clas
                           // weas de la lista


  j.agrupacion1();
  j.newforma();
  j.crecimiento1();
  b.agrupacion3 ();
  //j.forma();
  //j.crecimiento();
  //j.limites();
  //j.mover();
  //j.color();

  /* Para lograr una interaccion con mouse;
   if(mousePressed){
   lista.add(j);

}
*/
  }


}












/*
Para hacer que las coasas se muevan como hormiguitas:
x +=(random(15,20));
x -=(random(15,20));
y +=(random(15,20));
y -=(random(15,20));




*/

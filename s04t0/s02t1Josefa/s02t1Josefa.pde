ArrayList <Chimenea> nChimeneas = new ArrayList();
ArrayList <Forma> nParticulas = new ArrayList<Forma>();

Chimenea c; //llamo a la clase Chimenea como c
Forma f; //llamo a la clase Forma como f

void setup(){
  size(800,400);

  for (int i=0; i<20; i++){
  c = new Chimenea (i*40, height, 40, random(-100), random(1, 4), -1);
  nChimeneas.add(c);
}
  //crear for loop para tener muchas pelotas
  for(int i = 0; i < 30; i++){
  f = new Forma (random(width),random(height),random(10,40),-1, 1, random(3,7));
  nParticulas.add(f);
  }

}

void draw(){
  background(26, 56, 116);



  for (Forma f:nParticulas){
  f.pelota();
  f.dilatar();
  f.movimiento();
  f.bordes();

  }

  for (Chimenea c:nChimeneas){
  c.dibuja();
  c.movimiento();
}
  fill(255);
}

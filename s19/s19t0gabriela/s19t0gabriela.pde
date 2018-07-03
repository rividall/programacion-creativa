/*
Nombre
Descripción
*/

// Botones 1,2,3,4,5,6,7

ArrayList<Propuestas> lista = new ArrayList<Propuestas>();
Propuestas p;
int pro1 = 0;
int pro2 = 0;
int pro3 = 0;
int pro4 = 0;
int pro5 = 0;
int pro6 = 0;
int pro7 = 0;


void setup(){
  size(1280,700);
  // el loop no itera en lo absolulto
  for (int i = 0; i < 31; i++)
  p = new Propuestas ();
  // por lo tanto esto no es necesario
  lista.add(p);

}

void draw(){
    background(243, 241, 241);
  if (pro1 == 1){
      p.marMes();
  }
 if (pro2 == 1){
      p.eventos();
  }
  if (pro3 == 1){
  p.humMes();
  }
   if (pro4 == 1){
  p.eventosTrimestre();
  }
   if (pro5 == 1){
  p.eventosMar();
  }
   if (pro6 == 1){
  p.eventosHum();
  }
   if (pro7 == 1){
  p.todosDias();
  }
}

/*
¿Qué es " Se abre a.cir()."?
*/
void keyPressed() {
if (key == '1') { // Se abre a.cir().
    pro1 = 1;
    pro2 = 0;
    pro3 = 0;
    pro4 = 0;
    pro5 = 0;
    pro6 = 0;
    pro7 = 0;
}
    if (key == '2') { // Se abre a.cir().
    pro1 = 0;
    pro2 = 1;
    pro3 = 0;
    pro4 = 0;
    pro5 = 0;
    pro6 = 0;
    pro7 = 0;
}
if (key == '3') { // Se abre a.cir().
    pro1 = 0;
    pro2 = 0;
    pro3 = 1;
    pro4 = 0;
    pro5 = 0;
    pro6 = 0;
    pro7 = 0;
}
if (key == '4') { // Se abre a.cir().
    pro1 = 0;
    pro2 = 0;
    pro3 = 0;
    pro4 = 1;
    pro5 = 0;
    pro6 = 0;
    pro7 = 0;
}
if (key == '5') { // Se abre a.cir().
    pro1 = 0;
    pro2 = 0;
    pro3 = 0;
    pro4 = 0;
    pro5 = 1;
    pro6 = 0;
    pro7 = 0;
}
if (key == '6') { // Se abre a.cir().
    pro1 = 0;
    pro2 = 0;
    pro3 = 0;
    pro4 = 0;
    pro5 = 0;
    pro6 = 1;
    pro7 = 0;
}
if (key == '7') { // Se abre a.cir().
    pro1 = 0;
    pro2 = 0;
    pro3 = 0;
    pro4 = 0;
    pro5 = 0;
    pro6 = 0;
    pro7 = 1;
}




}

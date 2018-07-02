class Referente{
float x,t,y,z;
int cantidad;
int medioancho, medioalto;
int h; // valor humedad.
float pos1,pos2;
int nummeses;
Referente(){
   x = random(0,1080);
   y = random(-880,-20);
   cantidad= 300;//en base al valor de rocío
  z = 0;
  h = 20;
  t = random(0,360);
  medioancho = width/2;
  medioalto = height/2;
  pos1 = random(width/2);
  pos2 = random(height/2);
  nummeses = 12;

}
//mi primer referente es sobre funcionalidad, navegando en base al eje x.
// en cuanto a color  quiero usar verde(ningun evento),rojo(niebla), azul(lluvia) y morado(niebla-lluvia)
void ref1(float r){// funcionalidad dato anual
  translate(medioancho,medioalto);
for(int i = 4; i<r; i++){
  stroke(0);
  strokeWeight(1);
  rotate(r);
  fill(0,255,0);
  triangle(25,-25,25,25,medioancho/2,0);
 }
}
//El segundo referente es para representar el rocio y la direccion del viento.
//lo usaria en la visualizacion de los días
void ref2(){

   for(float o = 0; o < cantidad; o++){//La cantidad de lineas representaria el valor del rocío
  stroke(0,255,0);
  strokeWeight(20);
  line(x,y,x+3,y+3);
  y += 0.1;//la direccion en la que se dirigen se vería afectada por los vlores de la direccion del viento
    if(y >800){
    y = -10;
    x = random(0,1080);
  }
}
}
//Mi tercer referente es para mostrar humedad utilizando opacidades distintas.
//en donde cada ellipse es un mes del año,cada uno con color diferente
// y donde la posición de ellas surge de los valores de las temperaturas máximas y mínimas.
void ref3(int v){
  pushMatrix();
for(int e = 0; e<v;e++ ){
   fill(255,0,0,120);
  ellipse (pos1*(e/4)+2,pos2*(e/2)+20,h,h);//valores x,y de ellipse 1 serían en base a las minimas temperaturas.
  ellipse(pos1*(e/4)+50,pos2*(e/2)+50,h,h);//valores x,y de ellipse 2 serían en base a las maximas temperaturas.
}
popMatrix();
}
}

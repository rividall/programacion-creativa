//agregar que al hacer key pressed aumente la velocidad de giro y al mover el mouse se cambie de color
//dejar hecha una clase con todo y llamarla afuera cambiando el translate
//FALTA: duploicar la misma figura en el lado opuesto y aplicar variacion de color y velocidad



int r = 0; //parte en 0
float x, y;
float velx = 2;
void setup() {
  size(400, 400);
  background (0);
}
void draw() {
  background (0);
  /*translate(width/2, height/2);
   ellipse(100,100, 30,30);
   rotate(radians(r)); //numero de 0 a 3,14 */
  //background (100); //poner fondo para que no se marque el camino de la elipse
  //PRIMER GRUPO
  translate(width, height/2);
  pushMatrix();
  rotate(radians(r));
  r++;//origen, giran en torno al centro del canvas y es ++ por que giran en sentido positivo

  for(int j = 0; j<20;j++){ //corridas
  for (int i=0; i< 10; i++) { //elipses por corrida


    noStroke();
    fill(255);
    ellipse(x + i * 20, y, 10, 10); //si pongo en el eje x 100 gira horiz


  }
  rotate(radians(360/20));
  }

  popMatrix();

  //SEGUNDO GRUPO
  /*translate (width/2, height);
  pushMatrix();
 rotate(radians(r));
  r++;//origen, giran en torno al centro del canvas y es -- por que giran en sentido negativo
  for(int j = 0; j<20;j++){ //corridas
  for (int i=0; i< 10; i++) { //elipses por corrida


    noStroke();
    fill(255);
    ellipse(x + i * 20, y, 10, 10); //si pongo en el eje x 100 gira horiz


  }
  rotate(radians(360/20));
  }
  popMatrix();
  */


  /*pushMatrix();
  for (int i=0; i< 60; i+=20) {
  translate(width/2, height/2); //origen, giran en torno al centro del canvas
  rotate(radians(r));
  r++;
  noStroke();
  fill(255);
  ellipse(50, 50, 10, 10);
  }
  popMatrix();
  */

  /*pushMatrix();
  for (int i=0; i< 60; i+=20) {
  translate(width/2, height/2); //origen, giran en torno al centro del canvas
  rotate(radians(r));
  r++;
  noStroke();
  fill(255);
  ellipse(75, 75, 10, 10);
  }
  popMatrix();
  */
}

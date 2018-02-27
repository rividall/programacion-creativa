
class Humedad { //Inicio clase Humedad

  //Variables
  float i;
  float mes;
  float dia;
  int maximah; 
  int minimah; 
  
  //Constructor
  Humedad(float mes, float dia, int maximah, int minimah, int i) {

    this.i= map(i, 0, 364, 0, HALF_PI); //Este map provoca que los datos que se
                                     //muestren van a estar en 1/4 de la circunferencia.
    this.dia = dia;
    this.mes = mes;
    this.maximah = maximah; //Datos de la tabla.
    this.minimah = minimah; //Datos de la tabla.
      
}



  void humedad() { //Inicio función humedad 
    
    //El final de la línea marcará la máxima temperatura según cada día.
    pushMatrix();
    strokeWeight(0.8);
    stroke(#003F7C);
    rotate(i); //Se rota en cuanto al map de la variable i.
    line(0, 0, maximah*3.5, 0);
    popMatrix();
    
     //El final de la línea marcará la mínima temperatura según cada día.
    pushMatrix();
    strokeWeight(0.8);
    stroke(#5D94FF);
    rotate(i);  //Se rota en cuanto al map de la variable i.
    line(0, 0, minimah*3.5, 0);
    popMatrix();    
    } //Fin función humedad.
} //Fin clase Humedad.
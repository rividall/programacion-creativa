class Visibilidad { // Inicio clase Visibilidad

  //Variables
  float i;
  float mes;
  float dia;
  int maximav; 
  int minimav;

  //Constructor
  Visibilidad(float mes, float dia, int maximav, int minimav, int i) {
    this.i= map(i, 0, 364, radians(90), radians(180)); //Este map provoca que los 
                                     //datos que se muestren van a estar en 1/4 de
                                     //la circunferencia.
    this.mes = mes;
    this.dia = dia;
    this.maximav = maximav; //Datos de la tabla.
    this.minimav = minimav; //Datos de la tabla.
  }


  void visibilidad() { //Inicio función humedad 

    //El final de la línea marcará la máxima temperatura según cada día.
    pushMatrix();
    strokeWeight(0.7);
    stroke(#76FF00);
    rotate(i);   //Se rota en cuanto al map de la variable i.
    line(0, maximav*11, 0, 0 );
    popMatrix();

    //El final de la línea marcará la mínima temperatura según cada día.
    pushMatrix();
    strokeWeight(0.7);
    stroke(#006430);
    rotate(i);  //Se rota en cuanto al map de la variable i.
    line(0, minimav*11, 0, 0);
    popMatrix();
  } // Fin función visibilidad.

}//Fin clase Visibilidad.
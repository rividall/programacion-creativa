class Temperatura{ // Inicio clase Temperatura.
  
 //Variables
  float i;
  float mes;
  float dia;
  int maximat; 
  int minimat;
  int t;
  int r;
  int p;
  int radius = 90;

//Constructor
   Temperatura(float mes, float dia, int maximat, int minimat, int i) {
    this.i= map(i,0,364,0,TWO_PI); //Este map hace que los datos estarán a lo largo de
                                   // toda una circunferencia.
    this.mes = mes;
    this.dia = dia;
    this.maximat = maximat; //Datos de la tabla.
    this.minimat = minimat; //Datos de la tabla.
    
   //Se les da un valor a las variables para luego poder modificarlas con movimiento. 
   r = 200;
   t = 0;
   p= 0;
  }
 
  
  void temperatura() { //Inicio función temperatura
    
     //El final de la línea marcará la máxima temperatura según cada día:
    strokeWeight(3);
    pushMatrix();
    stroke(#FF0D00);
    rotate(i); //Se rota en cuanto al map de la variable i.
    line(0, r, 0, maximat*p+t); // r es que no parte desde su 0,0.
    popMatrix();
    
     //El final de la línea marcará la mínima temperatura según cada día:
    strokeWeight(3);
    pushMatrix();
    stroke(#FFEA00);
    rotate(i); //Se rota en cuanto al map de la variable i.
    line(0, r, 0, minimat*p+t); // r es que no parte desde su 0,0.
    popMatrix();
    
    p++;  //Va sumando su valor.
    t+=2; //Va sumando su valor cada 2
    
    if(p > 2){ //Si p sobrepasa el 2, quedará en el 2. 
      p = 2;
    }
    if(t > 200){ // Si t sobrepasa los 200, se quedará en 200.
      t = 200;
    }
  }  // Fin función temperatura.  
} //Fin clase Temperatura.
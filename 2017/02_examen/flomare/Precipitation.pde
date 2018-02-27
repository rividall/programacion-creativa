class Precipitation{ //Inicio clase Precipitation
  
 //Variables
  float i;
  float mes;
  float dia;
  int precipitation; 
  color q;
  float l;
  

//Constructor
   Precipitation(float mes, float dia,int precipitation, int i) {    
    this.i= map(i,0,364,0,TWO_PI); //Este map hace que los datos estarán a lo largo de
                                   // toda una circunferencia.
    this.mes = mes;
    this.dia = dia;
    this.precipitation = precipitation;   //Datos de la tabla.
   
   l = 550;
   
  }
  void lluvia() { //Inicio función lluvia
    pushMatrix();
    if (precipitation > 0.00){ // Si el dato de la tabla es 1,
      stroke(#71DAFF); //el color del borde será azul.
    }
    if (precipitation < 1.00){ // Si el dato de la tabla es 0,
      noStroke(); //no tendrá color de borde.
    }
    
    strokeWeight(0.8);
    fill(#F7F3DE,10);
    rotate(i);
    ellipse(0, l, 5, 5); //l es la posicion de y que se irá moviendo.
    popMatrix();
  
    l -=3; //l se moverá hacia su punto 0,0;
    
    if(l < 300){ //si l es menor a 300 se quedará en el 300.
      l = 300;
    }
  } // Fin función lluvia.
} // Fin clase Precipitation.
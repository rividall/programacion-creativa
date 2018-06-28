class Clase {
//estos datos deben tener el mismo nombre que la parte map(tmaxima, -3, 37, 0, 255);
int i;
String mes, dia;
float tmaxima, tminima, maxHum, minHum, maxWind, precip, clCover, events;

PFont font;
//los datos del parentesis deben tener el mismo nombre que this.tmaxima
  Clase(String mes, String dia, float tmaxima, float tminima, float maxHum, float minHum,
  float maxWind, float precip, float clCover, float events, int i) {

    //this.index = index;
    this.dia = dia;
    this.mes = mes;
    // this.tmaxima = map(tmaxima, -3, 37, 0, 255);
    // this.tminima = map(tminima, -9, 19, 0, 255);
    this.tmaxima = tmaxima;
    this.tminima = tminima;
    // this.maxHum = maxHum;
    // this.minHum = minHum;
    // this.maxWind = maxWind;
    // this.precip = precip;
     this.clCover = clCover;
    // this.events = events;
    //this.clCover = clCover;
    font = createFont("Calibri-Bold", 32);

  }
  //Agrupación de métodos de forma y texto
  void funcion() {
    //ano();//Visualización del año
    //mes();//Visualización del mes
    //dia();//Visualización del dia
    txt();
    //println(tmaxima);
  }

  void ano() { //Visualización del año
    pushMatrix();
translate(width/2, height/2); //coordenada 0,0 en el centro del canvas
rotate(radians(i*360/365));//los 365 (dias año) roten en 360 grados
   fill(255);
    noStroke();
      triangle(160,0,tmaxima+350, 0, 160, 20);
       fill(232,172,105);
         noStroke();
       triangle(160,0,tminima+300,0,160,10);

    popMatrix();

//      for (index == 1 || index == 30 || index == 58 || index == 90 || index == 119 ||
//         index == 151 || index == 181 || index == 212 || index == 243 || index == 273 ||
//         index == 306 || index == 336){
//           fill(118,138,172);
//  ellipse(60, 300, 10,10);
// }
}

void mes(){ //Visualización del mes
for(int i = 0; i < 30 ; i ++ ){ //fila de 30 elipses (config que vayan según dias del mes9
fill(255,0,0);
ellipse((i*20), height/2, clCover, clCover);//cambian tamaño según variación del clCover
}

// if (i > 0 && i < 32) {
//   ellipse(i*100, height/2, clCover, clCover);
// }
}

void dia(){ //Visualización del dia
  fill(133,43,100);
  ellipse(100,40,20,10);
}


  // muestra en texto el mes y el día
  void txt() {
    fill(0);
    textFont(font);

    text(dia, width * .1, height * .1);
    text(mes, width * .3, height * .1);
    text("2015", width * .5, height * .1);
    textSize(55);
    //text(dia, width * .1, height * .2);
  }
}

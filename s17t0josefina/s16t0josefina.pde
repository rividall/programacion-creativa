Clase[]objetos;
Table tabla;
//int index;
int ano = 1;
int mes = 0;
int dia = 0;

void setup() {
  size(1280,800);
  //cargar la base de datos
  tabla = loadTable("Seefeld_Austria_E.csv", "header");
  int total = tabla.getRowCount();
  objetos = new Clase [total];

  for (int i = 0; i < tabla.getRowCount(); i++) {
     TableRow row = tabla.getRow(i);


    for(int jan = 0; jan <= 30; jan++){
      TableRow enero = tabla.getRow(jan);
    }
    for(int feb = 31; feb <= 58; feb++){
      TableRow febrero = tabla.getRow(feb);
    }
    for(int mar = 59; mar <= 89; mar++){
      TableRow marzo = tabla.getRow(mar);
    }
    for(int apr = 90; apr <= 119; apr++){
      TableRow abril = tabla.getRow(apr);
    }
    for(int may = 120; may <= 150; may++){
      TableRow mayo = tabla.getRow(may);
    }
    for(int jun = 151; jun <= 180; jun++){
      TableRow junio = tabla.getRow(jun);
    }
    for(int jul = 181; jul <= 211; jul++){
      TableRow julio = tabla.getRow(jul);
    }
    for(int ago = 212; ago <= 242; ago++){
      TableRow agosto = tabla.getRow(ago);
    }
    for(int sep = 243; sep <= 272; sep++){
      TableRow septiembre = tabla.getRow(sep);
    }
    for(int oct = 273; oct <= 303; oct++){
      TableRow octubre = tabla.getRow(oct);
    }
    for(int nov = 304; nov <= 333; nov++){
      TableRow noviembre = tabla.getRow(nov);
    }
    for(int dic = 334; dic <= 364; dic++){
      TableRow diciembre = tabla.getRow(dic);
    }

  // int total = tabla.getRowCount();
  // objetos = new Clase[total];
  //
  // for (int i = 0; i < tabla.getRowCount(); i++) {
  //   TableRow row = tabla.getRow(i);

//int index = i;
//se cargan headers
    String mes = row.getString ("M");
    String dia = row.getString ("D");
    float tmaxima = row.getFloat ("Max TemperatureC");
    float tminima = row.getFloat ("Min TemperatureC");
    float maxHum = row.getFloat ("Max Humidity");
    float minHum = row.getFloat (" Min Humidity");
    float maxWind = row.getFloat (" Max Wind SpeedKm/h");
    float precip = row.getFloat ("Precipitationmm");
    float clCover = row.getFloat (" CloudCover");
    float events = row.getFloat (" Events");

//se relaciona el objeto con la lista
objetos[i] = new Clase(mes, dia, tmaxima, tminima, maxHum,
 minHum, maxWind, precip, clCover, events, i);
}
}



void draw() {
  background(0);
if (ano == 1){ //llama al ano
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].ano();
     //dentro de funcion estan todo lo que quiero reproducir
  }
}

if (mes == 1){ //llama al mes
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].mes();
     //dentro de funcion estan todo lo que quiero reproducir
  }
}

if (dia == 1){ //llama al dia
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].dia();
     //dentro de funcion estan todo lo que quiero reproducir
  }
}
}








 void keyPressed() {
if(key == 'q'){ //llama al void ano
  ano = 1;
  mes = 0;
  dia = 0;
}

  if(key == 'w'){ //llama void mes
    ano = 0;
    mes = 1;
    dia = 0;
  }

  if(key == 'e'){ //llama void dia
      ano = 0;
      mes = 0;
      dia = 1;
    }
}

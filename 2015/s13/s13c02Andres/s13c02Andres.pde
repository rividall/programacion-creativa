import processing.pdf.*;
int colum, filas;
String datos [];
String dia [] [];

void setup() {
  beginRecord(PDF, "certamen/lamina1.pdf");
  size(3685, 1360);
  colum = 31;
  filas = 12;

  datos = loadStrings("tokio.csv");
  dia = new String [datos. length] [23];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
}

void draw() {
  background(255);
  for (int x = 0; x < colum; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/colum) + (width/(colum*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + x+y*colum;
      if ((nums >= 0) && (nums <= 365)) {
        //temperatura maxima
        String TempMax = dia[nums][1];
        float TempMax1 = float(dia[nums][1]);

        //temperatura minima
        String TempMin = dia[nums][3];
        float TempMin1 = float(dia[nums][3]);

        //visibilidad media
        String MedVis = dia[nums][14];
        float MedVis1 = float(dia[nums][14]);

        //direccion del viento       
        String vientoDir = dia[nums][22];
        float vientoDir1 = float(dia[nums][22]);        

        //velocidad maxima del viento
        String vientoMax = dia[nums][16];
        float vientoMax1 = float(dia[nums][16]); 

        funcion(x1, y1, TempMax, TempMax1, TempMin, TempMin1, 
          MedVis, MedVis1, vientoDir, vientoDir1, vientoMax, vientoMax1);
       textSize(18);
        fill(255, 0, 0);
        textAlign(MODEL);
        text(TempMax, x1, y1);
        fill(0, 0, 255);
        textAlign(RIGHT);
        text(TempMin, x1, y1);
        fill(0);
        textAlign(MODEL);
        text(vientoMax, vientoMax1 + x1, vientoMax1 + y1);
       

        //noLoop();

        //cambia a negativo los colores del dia del cumpleaños de mi polola
        /*if (nums == 230) {
         filter(INVERT);
         funcion(x1, y1, TempMax, TempMax1, TempMin, TempMin1, 
         MedVis, MedVis1, vientoDir, vientoDir1, vientoMax, vientoMax1);
         filter(INVERT);
         noLoop();
         }*/
      }
    }
  }
  endRecord();
}
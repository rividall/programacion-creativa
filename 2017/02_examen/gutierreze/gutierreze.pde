Table tabla;//establecimiento de variable tabla
Clima[] meses;

//No hay decripción general de lo que el programa hará

void setup() {
  size(730, 730);
  background(30);
  tabla = loadTable("Heraklion_Greece.csv", "header");//cargar la base de datos
  meses = new Clima[tabla.getRowCount()];
  for (int i = 0; i < tabla.getRowCount(); i++) {//formar array con los datos de las columnas
    TableRow row = tabla.getRow(i);
    String fecha = row.getString("EET");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int media = row.getInt("Mean TemperatureC");//especificar las columnas que se quieren
    meses[i] = new Clima(fecha, maxima, media, minima);
  }
}
void draw() {
  for (int i = 40; i < width-10; i+=(width-10)/12) {
  fill(100);
  noStroke();
 ellipse(i,650,50,50);
  }
 fill(255);
 textAlign(CENTER, CENTER);
 text("1",40,650);
 text("2",100,650);
 text("3",160,650);
 text("4",220,650);
 text("5",280,650);
 text("6",340,650);
 text("7",400,650);
 text("8",460,650);
 text("9",520,650);
 text("10",580,650);
 text("11",640,650);
 text("12",700,650);
  if (mousePressed)  {
     if( (mouseX > 25 && mouseX < 65) && (mouseY > 625 && mouseY < 675)) {// mientras se haga click en el rango especificado se dibura algo nuevo
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("ENERO", width/2-20, 30);
      for (int j = 0; j < 31; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 10) { // primeros 10 días
          meses[j].show1(70, j); // 50 en Y, j para el ancho
        } else if (j >= 10 && j < 20) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-10); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 20 && j < 30) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-20); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-30);
        }
      }
     }

    }
  if (mousePressed)  {
     if( (mouseX > 75 && mouseX < 125) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("FEBRERO", width/2-20, 30);
      for (int j = 31; j < 59; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 41) { // primeros 10 días
          meses[j].show1(70, j-31); // 50 en Y, j para el ancho
        } else if (j >= 41 && j < 51) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-41); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 51 && j < 61) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-51); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-59);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 135 && mouseX < 185) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("MARZO", width/2-20, 30);
      for (int j = 59; j < 90; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 69) { // primeros 10 días
          meses[j].show1(70, j-59); // 50 en Y, j para el ancho
        } else if (j >= 69 && j < 79) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-69); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 79 && j < 89) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-79); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-89);
        }
      }
    }
  }
   if (mousePressed)  {
     if( (mouseX > 195 && mouseX < 245) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("ABRIL", width/2-20, 30);
      for (int j = 90; j < 120; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 100) { // primeros 10 días
          meses[j].show1(70, j-90); // 50 en Y, j para el ancho
        } else if (j >= 100 && j < 110) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-100); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 110 && j < 120) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-110); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-120);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 255 && mouseX < 305) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("MAYO", width/2-20, 30);
      for (int j = 120; j < 151; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 130) { // primeros 10 días
          meses[j].show1(70, j-120); // 50 en Y, j para el ancho
        } else if (j >= 130 && j < 140) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-130); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 140 && j < 150) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-140); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-150);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 315 && mouseX < 365) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("JUNIO", width/2-20, 30);
      for (int j = 151; j < 181; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 161) { // primeros 10 días
          meses[j].show1(70, j-151); // 50 en Y, j para el ancho
        } else if (j >= 161 && j < 171) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-161); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 171 && j < 181) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-171); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-180);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 375 && mouseX < 425) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("JULIO", width/2-20, 30);
      for (int j = 181; j < 212; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 191) { // primeros 10 días
          meses[j].show1(70, j-181); // 50 en Y, j para el ancho
        } else if (j >= 191 && j < 201) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-191); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 201 && j < 211) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-201); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-211);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 435 && mouseX < 485) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("AGOSTO", width/2-20, 30);
      for (int j = 212; j < 243; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 222) { // primeros 10 días
          meses[j].show1(70, j-212); // 50 en Y, j para el ancho
        } else if (j >= 222 && j < 232) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-222); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 232 && j < 242) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-232); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-242);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 495 && mouseX < 545) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("SEPTIEMBRE", width/2-20, 30);
      for (int j = 243; j < 273; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 253) { // primeros 10 días
          meses[j].show1(70, j-243); // 50 en Y, j para el ancho
        } else if (j >= 253 && j < 263) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-253); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 263 && j < 273) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-263); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-242);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 555 && mouseX < 605) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("OCTUBRE", width/2-20, 30);
      for (int j = 273; j < 304; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 283) { // primeros 10 días
          meses[j].show1(70, j-273); // 50 en Y, j para el ancho
        } else if (j >= 283 && j < 293) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-283); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 293 && j < 303) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-293); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-303);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 615 && mouseX < 665) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("NOVIEMBRE", width/2-20, 30);
      for (int j = 304; j < 334; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 314) { // primeros 10 días
          meses[j].show1(70, j-304); // 50 en Y, j para el ancho
        } else if (j >= 314 && j < 324) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-314); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 324 && j < 334) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-324); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-334);
        }
      }
    }
  }
  if (mousePressed)  {
     if( (mouseX > 675 && mouseX < 725) && (mouseY > 625 && mouseY < 675)) {
      textAlign(CENTER);
      background(30);
      textSize(26);
      text("DICIEMBRE", width/2-20, 30);
      for (int j = 334; j < 365; j ++) { // números de 0 a 30 para enero
        // ahora dividir cada 10 días
        textAlign(LEFT);
        if (j < 344) { // primeros 10 días
          meses[j].show1(70, j-334); // 50 en Y, j para el ancho
        } else if (j >= 344 && j < 354) { // los segundos 10 días desde 11 al 20
          meses[j].show1(220, j-344); // 200 en Y, j para el ancho, menos 10 para que entre en el canvas
        } else if (j >= 354 && j < 364) { // los últimos 10 días desde 21 a 30
          meses[j].show1(370, j-354); // 200 en Y, j para el ancho, menos 20 para que entre en el canvas
        } else { // lo que queda, un día
          meses[j].show1(520, j-364);
        }
      }
    }
  }
}

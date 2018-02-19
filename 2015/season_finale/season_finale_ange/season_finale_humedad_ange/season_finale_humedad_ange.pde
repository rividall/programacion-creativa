//UDD - Expresión Digital II
//season_finale_humedad_ange
//Humedad maxima y minima en el 2014 en algunos paises de Europa

//import processing.pdf.*;
int cols, filas, i;

String lisb[], mad[], pari[], rom[], berl[], bern[], vien[], amst[], brus[], lond[]; //lista con un elemento
String dlisb[] [], dmad[] [], dpari[] [], drom[] [], dberl[] [], dbern[] [], dvien[] [], damst[] [], dbrus[] [], dlond[] [];
; //lista con dos elementos

String fecha;
float x1, y2, hmaxlisb, hmaxmad, hmaxpari, hmaxrom, hmaxberl, hmaxbern, hmaxvien, hmaxamst, hmaxbrus, hmaxlond;
float hminlisb, hminmad, hminpari, hminrom, hminberl, hminbern, hminvien, hminamst, hminbrus, hminlond;

void setup() {
  size(1000, 800);
  //beginRecord(PDF, "hmaxymin.pdf");
  smooth();

  cols = 122;
  filas = 3;

  lisb = loadStrings("lisboa.csv"); //archivo con los datos
  dlisb = new String[lisb.length] [22]; //largo y ancho
  for (int i = 0; i < lisb.length; i++) {
    dlisb[i] = lisb[i].split(","); //elemtos separados por comas
  }
  mad = loadStrings("madrid.csv"); //2
  dmad = new String[mad.length] [22]; 
  for (int i = 0; i < mad.length; i++) {
    dmad[i] = mad[i].split(",");
  }
  pari = loadStrings("paris.csv"); //3
  dpari = new String[pari.length] [22]; 
  for (int i = 0; i < pari.length; i++) {
    dpari[i] = pari[i].split(",");
  }
  rom = loadStrings("roma.csv"); //4
  drom = new String[rom.length] [22]; 
  for (int i = 0; i < rom.length; i++) {
    drom[i] = rom[i].split(",");
  }
  berl = loadStrings("berlin.csv"); //5
  dberl = new String[berl.length] [22];
  for (int i = 0; i < berl.length; i++) {
    dberl[i] = berl[i].split(",");
  }
  bern = loadStrings("berna.csv"); //6
  dbern = new String[bern.length] [22];
  for (int i = 0; i < bern.length; i++) {
    dbern[i] = bern[i].split(",");
  }
  vien = loadStrings("viena.csv"); //7
  dvien = new String[vien.length] [22]; 
  for (int i = 0; i < vien.length; i++) {
    dvien[i] = vien[i].split(",");
  }
  amst = loadStrings("amsterdam.csv"); //8
  damst = new String[amst.length] [22]; 
  for (int i = 0; i < amst.length; i++) {
    damst[i] = amst[i].split(",");
  }
  brus = loadStrings("bruselas.csv"); //9
  dbrus = new String[brus.length] [22]; 
  for (int i = 0; i < brus.length; i++) {
    dbrus[i] = brus[i].split(",");
  }
  lond = loadStrings("londres.csv"); //10
  dlond = new String[lond.length] [22]; 
  for (int i = 0; i < lond.length; i++) {
    dlond[i] = lond[i].split(",");
  }
}


void draw() {
  background(47, 53, 73);

  for (int x = 5; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas-245) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {

        hmaxlisb = float(dlisb[nums][7]);
        hmaxmad = float(dmad[nums][7]);
        hmaxpari = float(dpari[nums][7]);
        hmaxrom = float(drom[nums][7]);
        hmaxberl = float(dberl[nums][7]);
        hmaxbern = float(dbern[nums][7]);
        hmaxvien = float(dvien[nums][7]);
        hmaxamst = float(damst[nums][7]);
        hmaxbrus = float(dbrus[nums][7]);
        hmaxlond = float(dlond[nums][7]);
        
        hminlisb = float(dlisb[nums][9]);
        hminmad = float(dmad[nums][9]);
        hminpari = float(dpari[nums][9]);
        hminrom = float(drom[nums][9]);
        hminberl = float(dberl[nums][9]);
        hminbern = float(dbern[nums][9]);
        hminvien = float(dvien[nums][9]);
        hminamst = float(damst[nums][9]);
        hminbrus = float(dbrus[nums][9]);
        hminlond = float(dlond[nums][9]);

       hmax(x1, y1, hmaxlisb, hmaxmad, hmaxpari, hmaxrom, hmaxberl, hmaxbern, hmaxvien, hmaxamst, hmaxbrus, hmaxlond);
       hmin(x1, y1,hminlisb, hminmad, hminpari, hminrom, hminberl, hminbern, hminvien, hminamst, hminbrus, hminlond);
      }
    }
  }
  //endRecord();
}
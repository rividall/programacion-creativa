//UDD - Expresión Digital II
//season_finale_tmin_ange
//Temperatura minima en el 2014 en algunos paises de Europa

//import processing.pdf.*;
int cols, filas, i;

String lisb[], mad[], pari[], rom[], berl[], bern[], vien[], amst[], brus[], lond[]; //lista con un elemento
String dlisb[] [], dmad[] [], dpari[] [], drom[] [], dberl[] [], dbern[] [], dvien[] [], damst[] [], dbrus[] [], dlond[] [];
; //lista con dos elementos

String fecha;
float x1, y2, tminlisb, tminmad, tminpari, tminrom, tminberl, tminbern, tminvien, tminamst, tminbrus, tminlond;

void setup() {
  size(1000, 800);
  //beginRecord(PDF, "2.pdf");
  smooth();

  cols = 73;
  filas = 5;

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
      float y1 = y * (height/filas-150) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) {

        tminlisb = float(dlisb[nums][3]);
        tminmad = float(dmad[nums][3]);
        tminpari = float(dpari[nums][3]);
        tminrom = float(drom[nums][3]);
        tminberl = float(dberl[nums][3]);
        tminbern = float(dbern[nums][3]);
        tminvien = float(dvien[nums][3]);
        tminamst = float(damst[nums][3]);
        tminbrus = float(dbrus[nums][3]);
        tminlond = float(dlond[nums][3]);

       tmin(x1, y1, tminlisb, tminmad, tminpari, tminrom, tminberl, tminbern, tminvien, tminamst, tminbrus, tminlond);
      }
    }
  }
  //endRecord();
}
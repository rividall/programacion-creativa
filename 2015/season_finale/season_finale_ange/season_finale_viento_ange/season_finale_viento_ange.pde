//UDD - Expresión Digital II
//season_finale_viento_ange
//Velocidad del viento maximo y medio en el 2014 en algunos paises de Europa

//import processing.pdf.*;
int cols, filas, i;

String lisb[], mad[], pari[], rom[], berl[], bern[], vien[], amst[], brus[], lond[]; //lista con un elemento
String dlisb[] [], dmad[] [], dpari[] [], drom[] [], dberl[] [], dbern[] [], dvien[] [], damst[] [], dbrus[] [], dlond[] [];
; //lista con dos elementos

String fecha;
float x1, y2, vmaxlisb, vmaxmad, vmaxpari, vmaxrom, vmaxberl, vmaxbern, vmaxvien, vmaxamst, vmaxbrus, vmaxlond;
float vmedlisb, vmedmad, vmedpari, vmedrom, vmedberl, vmedbern, vmedvien, vmedamst, vmedbrus, vmedlond;

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

        vmaxlisb = float(dlisb[nums][16]);
        vmaxmad = float(dmad[nums][16]);
        vmaxpari = float(dpari[nums][16]);
        vmaxrom = float(drom[nums][16]);
        vmaxberl = float(dberl[nums][16]);
        vmaxbern = float(dbern[nums][16]);
        vmaxvien = float(dvien[nums][16]);
        vmaxamst = float(damst[nums][16]);
        vmaxbrus = float(dbrus[nums][16]);
        vmaxlond = float(dlond[nums][16]);

        vmedlisb = float(dlisb[nums][17]);
        vmedmad = float(dmad[nums][17]);
        vmedpari = float(dpari[nums][17]);
        vmedrom = float(drom[nums][17]);
        vmedberl = float(dberl[nums][17]);
        vmedbern = float(dbern[nums][17]);
        vmedvien = float(dvien[nums][17]);
        vmedamst = float(damst[nums][17]);
        vmedbrus = float(dbrus[nums][17]);
        vmedlond = float(dlond[nums][17]);

        vmax(x1, y1, vmaxlisb, vmaxmad, vmaxpari, vmaxrom, vmaxberl, vmaxbern, vmaxvien, vmaxamst, vmaxbrus, vmaxlond);
        // vmed(x1, y1, vmedlisb, vmedmad, vmedpari, vmedrom, vmedberl, vmedbern, vmedvien, vmedamst, vmedbrus, vmedlond);
      }
    }
  }
  //endRecord();
}
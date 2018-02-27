class Cadames {
  /*Esta clase muestra la cantidad de nubes y la visibilidad quue giran a la velocidad
  del viento medio y todo esto dividido según los meses del año.*/
  float nub, i;
  int viento, vis;

  Cadames(float nub, float i, int viento, int vis) {
    this.i = (int)map(i, 0, 31, 0, TWO_PI);
    this.nub = (float)map(nub, 1, 15, 5, 45);
    this.viento = viento;
    this.vis = vis;
  }

  void enero() { //Nubes enero.
    stroke(#CED7E0);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void enerov() { //Visibilidad enero.
    fill(#CED7E0);
    strokeWeight(1);
    line(0, 0, vis, vis);
  }

  void febrero() { //Nubes febrero.
    stroke(#6888AC);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void febrerov() { //Visibilidad febrero.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void marzo() { //Nubes marzo.
    stroke(#2A5583);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void marzov() { //Visibilidad marzo.
    fill(#2A5583);
    line(0, 0, vis, vis);
  }

  void abril() { //Nubes abril.
    stroke(#F8D2CB);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void abrilv() { //Visibilidad abril.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void mayo() { //Nubes mayo.
    stroke(#F39FB3);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void mayov() { //Visibilidad mayo.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void junio() { //Nubes junio.
    stroke(#E9325B);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void juniov() { //Visibilidad junio.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void julio() { //Nubes julio.
    stroke(#DDE063);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void juliov() { //Visibilidad julio.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void agosto() { //Nubes agosto.
    stroke(#AECC3D);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void agostov() { //Visibilidad agosto.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void septiembre() { //Nubes septiembre.
    stroke(#6EAA2E);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void septiembrev() { //Visibilidad septiembre.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void octubre() { //Nubes octubre.
    stroke(#E3C38B);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void octubrev() { //Visibilidad octubre.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void noviembre() { //Nubes noviembre.
    stroke(#E77B50);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void noviembrev() { //Visibilidad noviembre.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }

  void diciembre() { //Nubes diciembre.
    stroke(#9A4441);
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void diciembrev() { //Visibilidad diciembre.
    fill(#CED7E0);
    line(0, 0, vis, vis);
  }
}
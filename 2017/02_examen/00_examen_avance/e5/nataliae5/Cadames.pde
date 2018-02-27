class Cadames {
  float nub, i;
  int viento, vis;

  Cadames(float nub, float i, int viento, int vis) {
    this.i = map(i, 0, 31, 0, TWO_PI);
    this.nub = (float)map(nub, 1, 15, 5, 45);
    this.viento = viento;
    this.vis = vis;
  }

  void enero() {
    stroke(#CED7E0);//color enero
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void enerov() {
    fill(#CED7E0);//color enero
    strokeWeight(1);
    line(0, 0, vis, vis);
  }

  void febrero() {
    stroke(#6888AC);//color febrero
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void febrerov() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void marzo() {
    stroke(#2A5583);//color marzo
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void marzov() {
    fill(#2A5583);//color enero
    line(0, 0, vis, vis);
  }

  void abril() {
    stroke(#F8D2CB);//color abril
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void abrilv() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void mayo() {
    stroke(#F39FB3);//color mayo
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void mayov() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void junio() {
    stroke(#E9325B);//color junio
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void juniov() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void julio() {
    stroke(#DDE063);//color julio
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void juliov() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void agosto() {
    stroke(#AECC3D);//color agosto
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void agostov() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void septiembre() {
    stroke(#6EAA2E);//color junio
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void septiembrev() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void octubre() {
    stroke(#E3C38B);//color octubre
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void octubrev() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void noviembre() {
    stroke(#E77B50);//color noviembre
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void noviembrev() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }

  void diciembre() {
    stroke(#9A4441);//color diciembre
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void diciembrev() {
    fill(#CED7E0);//color enero
    line(0, 0, vis, vis);
  }
}
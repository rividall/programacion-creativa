class Clima { //Clase
  //Variables locales.
  int t, r, x, y, ano, mes, dia, margen, blanco; //Variables locales.
  int max, max_2, min_2, maxV, minV, meanV, maxH, minH, maxPR, minPR, viento;



  // constructor
  Clima(int ano, int mes, int dia, int max, int max_2, int min_2, int viento, int t, int maxV, int minV, int meanV, int maxH, int minH, int maxPR, int minPR) {
    this.ano = ano;
    this.mes = mes;
    this.dia=dia;
    this.max_2 = (int)map(max_2, 22, 42, -50, -200);
    this.max=max;
    this.min_2 = (int)map(min_2, 2, 32, -4, -150);
    this.viento = viento;
    this.maxV =maxV;
    this.minV = minV;
    this.meanV = meanV;
    this.maxH = maxH;
    this.maxH = maxH;
    this.minH = minH;
    this. minPR = (int)map(minPR, -30, 21, 100, 300);
    this. maxPR =(int)map(maxPR, -10, 30, 200, 400);
    this.t=t;

    r = 200;
    margen = 250;
    blanco = #FFFFFF;
  }


  /*Función grilla, que dibujara la grilla de los días, que rotaran según la
   velocidad media del viento.*/

  void grilla () {
    pushMatrix();
    fill(blanco);
    strokeWeight(3);
    stroke(255); //amarillo
    translate(x, y);
    rotate(frameCount *viento*.01);
    point(0, 13);

    if (mes == 1) {
      y = 65;
      x = (int)map(t, 0, 30, margen, width-margen);
    } else if (mes == 2) {
      y = 124;
      x = (int)map(t, 31, 58, margen, width-margen);
    } else if (mes == 3) {
      y = 183;
      x = (int)map(t, 59, 89, margen, width-margen);
    } else if (mes == 4) {
      y = 242;
      x = (int)map(t, 90, 119, margen, width-margen);
    } else if (mes == 5) {
      y = 301;
      x = (int)map(t, 120, 150, margen, width-margen);
    } else if (mes == 6) {
      y = 360;
      x = (int)map(t, 151, 180, margen, width-margen);
    } else if (mes == 7) {
      y = 419;
      x = (int)map(t, 181, 211, margen, width-margen);
    } else if (mes == 8) {
      y = 478;
      x = (int)map(t, 212, 242, margen, width-margen);
    } else if (mes == 9) {
      y = 537;
      x = (int)map(t, 243, 272, margen, width-margen);
    } else if (mes == 10) {
      y = 596;
      x = (int)map(t, 273, 303, margen, width-margen);
    } else if (mes == 11) {
      y = 655;
      x = (int)map(t, 304, 333, margen, width-margen);
    } else if (mes == 12) {
      y = 714;
      x = (int)map(t, 334, 364, margen, width-margen);
    }
    popMatrix();
  } //Fin void grilla.

  /*Función temperaturaMax, que dibujara las líneas correspondientes a diferentes dias
   y su temperatura máxima.*/
  void temperaturaMax() {
    pushMatrix();
    strokeWeight(2);
    translate(0, height/2);
    x = (int)map(t, 0, 364, margen, width-margen);
    stroke(#FC0000);
    line(x, 0, x, max_2);
    popMatrix();
  } //Fin void temperaturaMax.

  void temperaturaMin() {
    pushMatrix();
    strokeWeight(2);
    stroke(#FF6803); //amarillo
    translate(0, height/2);
    x = (int)map(t, 0, 364, margen, width-margen);
    fill(blanco);
    textSize(10);
    line(x, 0, x, min_2);
    popMatrix();
  } //Fin void temperaturaMin.

  /*Función Enero, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void enero() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Enero", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#FA0800); //rojo
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
    strokeWeight(5);
  } //Fin Void Enero

  /*Función Febrero, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void febrero() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Febrero", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 28, 0, TWO_PI);
    rotate(tr);
    stroke(#FA8100); //rojo
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin void Febrero.

  /*Función Marzo, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void marzo() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Marzo", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#FAE600); //rojo
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin void Marzo.

  /*Función Abril, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void abril() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Abril", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 30, 0, TWO_PI);
    rotate(tr);
    stroke(#6FFA00); //naranjo
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Abril.

  /*Función Mayo, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void mayo() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Mayo", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#26A50A); //naranjo
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Marzo.


  /*Función Junio, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void junio() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Junio", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 30, 0, TWO_PI);
    rotate(tr);
    stroke(#03FFA4); //celeste
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Junio.

  /*Funcion Julio, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void julio() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Julio", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#0AA56D); //naranjo
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Julio.

  /*Función Agosto, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void agosto() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Agosto", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#0493D3); //celeste
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Agosto.

  /*Función Septiembre, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void septiembre() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Septiembre", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 30, 0, TWO_PI);
    rotate(tr);
    stroke(#063E58); //celeste
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Septiembre.

  /*Funcion Octubre, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void octubre() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Octubre", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#9408D1); //verde
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Octubre.

  /*Funcion Noviembre, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void noviembre() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Noviembre", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 30, 0, TWO_PI);
    rotate(tr);
    stroke(#FF08DF); //verde
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Noviembre.

  /*Función Diciembre, que dibujara las líneas y puntoscorrespondientes a diferentes
   dias segun distintas variables.*/
  void diciembre() {
    pushMatrix();
    textAlign(CENTER);
    textSize(30);
    fill(blanco);
    text("Diciembre", width/2, height/2);
    translate(width/2, height/2);
    float tr = map(t, 1, 31, 0, TWO_PI);
    rotate(tr);
    stroke(#FF8ECA); //verde
    strokeWeight(maxV);
    point(r+maxH, 0);
    strokeWeight(minV);
    point(r-minH, 0);
    strokeWeight(1);
    line(r-minH, 0, r+maxH, 0);
    popMatrix();
  } //Fin Void Diciembre.
}  //Fin Clase.

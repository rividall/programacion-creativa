class Mes {
  // declarar variables a usar.
  int fecha, t_max, t_mean, t_min, v_mean, p_mm, cc, A, M, D, hu_max, hu_mean, hu_min, vis_max;
  String ev;
  float amt1, amt2;
  float x_t_min, x_t_max, y_t_min, y_t_max, x_t_mean, y_t_mean ;
  float mylerp, otro_lerp, pp_mm2_lerp;
  int aca;




  // llamar base de datos dentro de la clase.
  Mes(int A, int M, int D, int fecha, int t_max, int t_mean, int t_min, int v_mean, int p_mm, int cc, String ev, int hu_max, int hu_mean, int hu_min, int vis_max) {

    this.A = A;
    this.M = M;
    this.D = D;
    this.fecha = fecha;
    this.t_max = t_max;
    this.t_mean = t_mean;
    this.t_min = t_min;
    this.v_mean = v_mean;
    this.p_mm = p_mm;
    this.cc = cc;
    this.ev = ev;
    this.hu_max = hu_max;
    this.hu_mean = hu_mean;
    this.hu_min = hu_min;
    this.vis_max = vis_max;
  }

// crear nuestra visualización.
  void mes(int aca) {
    
    
    // mapear variables de la base de datos.
    
    float vis_max2 = map(vis_max, 0, 400, 100, 110);
    float hu_max2 = map(hu_max, -100, 200, 100, 50);
    float t_min2 = map(t_min, -3, 14, 250, 200);
    float t_max2 = map(t_max, 6, 33, 300, 400);
    float p_mm2= map(p_mm, 0, 44, 110, 200);
    float hu_mean2 = map(hu_mean, 0, 100, 10, 25);
    color frio = (#aaaaaa);
    color templado = (#161a1a);
    float t_mean3 = map(t_mean, 0, 21, 0, 180); 
    otro_lerp = 90; 
    pp_mm2_lerp = 100;
    otro_lerp = lerp(otro_lerp, hu_max2, 0.05);
    pp_mm2_lerp = lerp(p_mm2, vis_max2, 0.05);


   // trigonometría que permite la creación de la circunferencia.
    x_t_min = t_min2 * cos(0);
    x_t_max = t_max2 * cos(0);
    y_t_min = t_min2 * sin(0);
    y_t_max = t_max2 * sin(0);
    x_t_mean = t_mean3 * cos(0);
    y_t_mean = t_mean3 * sin(0);

    fill(0);
// dibujar la visualización.
// en este caso se crearon condicionales que permitian separar mes a mes.
    if (M == 1 && aca == 1) {


      mylerp = lerp(mylerp, 11.65, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }

    if (M == 2 && aca == 2) {

      mylerp = lerp(mylerp, 12.9, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }

    if (M == 3 && bleep == 3) {
      mylerp = lerp(mylerp, 11.65, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 4 && bleep == 4) {
      mylerp = lerp(mylerp, 12, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 5 && bleep == 5 ) {
      mylerp = lerp(mylerp, 11.65, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 6 && bleep == 6) {
      mylerp = lerp(mylerp, 12, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 7 && bleep == 7) {
      mylerp = lerp(mylerp, 11.65, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 8  && bleep == 8) {
      mylerp = lerp(mylerp, 11.65, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }

    if (M == 9  && bleep == 9) {
      mylerp = lerp(mylerp, 12, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 10  && bleep == 10) {
      mylerp = lerp(mylerp, 11.7, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 11  && bleep == 11) {
      mylerp = lerp(mylerp, 12, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
    if (M == 12  && bleep == 12) {
      mylerp = lerp(mylerp, 11.7, 0.05);
      rotate(radians(mylerp));
      strokeWeight(5);
      stroke(#4dc0bf);
      line(100, 100, pp_mm2_lerp, pp_mm2_lerp);
      stroke(frio);
      line(90, 90, otro_lerp, otro_lerp);
      strokeWeight(1);
      fill(#ff9739);
      ellipse( 250, 250, t_max, t_max);
      fill(frio);
      ellipse( 250, 250, t_min, t_min);
      fill(templado);
      ellipse( 200, 200, v_mean, v_mean);
      fill(#99DBD7);
      ellipse(100, 100, hu_mean2, hu_mean2);
      fill(229, 224, 195);
    }
  }

// Poner el nombre del mes al centro.
void meses() {

  if (bleep == 1) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Enero", -30, 0);
    popMatrix();
  }
  if (bleep == 2) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
   
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Febrero", -40, 0);
    popMatrix();
  }
  if (bleep == 3) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Marzo", -30, 0);
    popMatrix();
  }
  if (bleep == 4) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Abril", -30, 0);
    popMatrix();
  }
  if (bleep == 5) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Mayo", -30, 0);
    popMatrix();
  }
  if (bleep == 6) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Junio", -30, 0);
    popMatrix();
  }
  if (bleep == 7) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Julio", -30, 0);
    popMatrix();
  }
  if (bleep == 8) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Agosto", -40, 0);
    popMatrix();
  }
  if (bleep == 9) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Septiembre", -60, 0);
    popMatrix();
  }
  if (bleep == 10) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Octubre", -50, 0);
    popMatrix();
  }
  if (bleep == 11) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Noviembre", -50, 0);
    popMatrix();
  }
  if (bleep == 12) {
    pushMatrix();

    rotate(PI-0.75);
    textSize(20);
    noStroke();
    fill(229, 224, 195);
    ellipse(0, 0, 150, 150);
    fill(0);
    text("Diciembre", -50, 0);
    popMatrix();
  }
  
}}
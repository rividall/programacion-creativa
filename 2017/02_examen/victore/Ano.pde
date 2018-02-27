class Ano {
  // Declarar Variables a usar
  int fecha, t_max, t_mean, t_min, v_mean, p_mm, cc, A, M, D;
  String ev;
  float amt1, amt2;
  float x_t_min, x_t_max, y_t_min, y_t_max, x_t_mean, y_t_mean ;
  float mylerp = 4.65;



  // llamar base de datos dentro de la clase
  Ano(int A, int M, int D, int fecha, int t_max, int t_mean, int t_min, int v_mean, int p_mm, int cc, String ev) {

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
  }
  // crear nuestra visualización.
  void ano() {



    // Al apretar '2' se reiniciar la animación.
    if (key == '2') {
      mylerp = 4.65;
      // Al apretar 1 se creará una circunferencia que contenga todos días
    } 
    if (key == '1') {
      {
        mylerp = lerp(mylerp, 6.12, 0.05); // animación de creación.
        rotate(radians(cos(mylerp)));
      }

      // mapear variables de la base de datos.
      float t_min2 = map(t_min, -3, 14, 250, 200);
      float t_max2 = map(t_max, 6, 33, 300, 400);
      float p_mm2= map(p_mm, 0, 44, 2, 30);
      float p_mm3= map(p_mm, 0, 44, 100, 150);
      color frio = (#aaaaaa);
      color templado = (#161a1a);
      float t_mean2 = map(t_mean, 0, 21, 0, 0.5);  
      float t_mean3 = map(t_mean, 0, 21, 140, 150);  
      color color_final = lerpColor(frio, templado, t_mean2);


      stroke(color_final);

      // trigonometría que permite la creación de la circunferencia.
      x_t_min = t_min2 * cos(0);
      x_t_max = t_max2 * cos(0);
      y_t_min = t_min2 * sin(0);
      y_t_max = t_max2 * sin(0);
      x_t_mean = t_mean3 * cos(0);
      y_t_mean = t_mean3 * sin(0);


      float x_p_mm = p_mm3 * cos(0);
      float y_p_mm = p_mm3 * sin(0);

      // dibujar la visualización.
      line(x_t_min, y_t_min, x_t_max, y_t_max);  
      fill(#4dc0bf);
      ellipse(x_t_min, y_t_min, cc, cc);
      fill(color_final);
      ellipse(x_p_mm, y_p_mm, p_mm2, p_mm2);
      fill(#ff9739);
      ellipse(x_t_max, y_t_max, cc, cc);
    }
  }
}      
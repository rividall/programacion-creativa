class Rotacion {
  float x, y;
  float r, a, angulo;
  color v, g;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;
    temax = _temax;
    temin = _temed;
    temed = _temin;
    pdro = _pdro;
    medro = _medro;
    mindro = _mindro;
    maxhum = _maxhum;
    medhum = _medhum;
    minhum = _minhum;
    maxpre = _maxpre;
    minpre = _minpre;
    maxvi = _maxvi;
    minvi = _minvi;
    vientomax = _vientomax;
    vientomed = _vientomed;
    rafaga = _rafaga;
    nube = _nube;
    dirviento = _dirviento;

    //angulo = 0;
    r = width/2 + 110;
    v = color(255,46,46);// en cada scketch cambio estos colores 
    g = color(249,237,88);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + temax*4 * sin(a);
    //x2 = width/2 +minima * sin(a);
    y = height/2 + temax*4 * cos(a);
    //y2 = height/2 +minima * cos(a);
  }
  void display(int i) {
    fill(g);
    noStroke();
    ellipse(x, y, temin/5, temin/5);


    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(x, y);
    rotate(-a);
    
    //son tus figuras
      //stroke(g);
    
      fill(v);
      ellipse(temax, temax, temax/5, temax/5);// cosas en el punto final
      //stroke(g);
      
      //line(temax, temin, temax, temin);
      //rect(0, 0, 6, temax);
    
    popMatrix();
  }
}
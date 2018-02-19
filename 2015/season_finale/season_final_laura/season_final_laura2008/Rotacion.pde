class Rotacion {
  float x, y, x2, y2;
  float r, a, angulo;
  color c, d;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;// 2005
    temax = _temax;// 2004
    temin = _temin;// 2004
    temed = _temed;// 2005
    pdro = _pdro;//2007
    medro = _medro;
    mindro = _mindro;//2007
    maxhum = _maxhum;//2006
    medhum = _medhum;
    minhum = _minhum;//2006
    maxpre = _maxpre;//2008
    minpre = _minpre;//2008
    maxvi = _maxvi;
    minvi = _minvi;
    vientomax = _vientomax;
    vientomed = _vientomed;
    rafaga = _rafaga;
    nube = _nube;
    dirviento = _dirviento;

    //angulo = 0;
    r = width/2 + 110;
    c = color (53,190,239);
    d = color(54,101,174);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + temax * sin(a);
    y = height/2 + temax  * cos(a);
  }
  void display(int i) {

    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(x, y);
    rotate(-a);
    
    //son tus figuras
      fill(c);
      noStroke();
      ellipse(minpre/16,minpre/16,4,4);
      
      fill(d);
      noStroke();
      ellipse(maxpre/12,maxpre/12,4,4);

     popMatrix();
    
      
      
  }
}
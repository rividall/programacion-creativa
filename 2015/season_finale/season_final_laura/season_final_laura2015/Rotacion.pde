class Rotacion {
  float x, y;
  float r, a, angulo;
  color c, d;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;// usado
    temax = _temax;// usado
    temin = _temed;// usado
    temed = _temin;// usado
    pdro = _pdro;
    medro = _medro;
    mindro = _mindro;// usado
    maxhum = _maxhum;// usado
    medhum = _medhum;// usado
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
    d = color(255,115,252);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + temax*8 * sin(a);
    y = height/2 + temax*8 * cos(a);
  }
  void display(int i) {
    
    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(x, y);
    rotate(-a);
    
    //son tus figuras
      fill(d);
      text(fecha,dirviento,dirviento);      
     popMatrix();
  }
}
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
    pdro = _pdro;
    medro = _medro;
    mindro = _mindro;
    maxhum = _maxhum;//2006
    medhum = _medhum;
    minhum = _minhum;//2006
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
    c = color (89,158,99);//azul
    d = color(94,226,128);//cafecito

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + minhum * sin(a);
    y = height/2 + minhum * cos(a);
    
    x2 = width/2 - minhum * sin(a);
    y2 = height/2- minhum * cos(a);
  }
  void display(int i) {

    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(x, y);
    rotate(-a);
    
    //son tus figuras
    fill(c);
      noStroke();
      rect(x/4, y/3, maxhum/40, maxhum/4);
      
      
      
      stroke(d);
      fill(d);
      rect(x/4, y/4,minhum/40, minhum/4);// cosas en el punto final 
     popMatrix();
    
      
      
  }
}
class Rotacion {
  float x, y, x2, y2;
  float r, a, angulo;
  color c, d,g;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;// 2005
    temax = _temax;// 2004
    temin = _temin;// 2004
    temed = _temed;// 2005
    pdro = _pdro;//2007
    medro = _medro;//2009
    mindro = _mindro;//2007
    maxhum = _maxhum;//2006
    medhum = _medhum;//2013
    minhum = _minhum;//2006
    maxpre = _maxpre;//2008
    minpre = _minpre;//2008
    maxvi = _maxvi;//2010
    minvi = _minvi;//2010
    vientomax = _vientomax;//2012
    vientomed = _vientomed;//2012
    rafaga = _rafaga;//2011
    nube = _nube;//2011
    dirviento = _dirviento;//2013
    eventos =_eventos;//2009

    //angulo = 0;
    r = width/2 + 110;
    c = color (24,181,202);
    d = color(151,80,154);
    g = color(156,204,237);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + medhum* sin(a);
    y = height/2 + medhum * cos(a);
    
      x2 = width/2 + dirviento * sin(a);
    y2 = height/2 + dirviento* cos(a);
  }
  void display(int i) {
    fill(d);
    //noStroke();
    //ellipse(x, y, 3, minhum);
    //fill(d);
    //  text(eventos,x,y);//medro

    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(x, y);
    rotate(-a);
    
    //son tus figuras
    if(dirviento >= 100 && dirviento < 200){ 
      strokeWeight(3);
      stroke(d);
      line(dirviento/2.5 ,dirviento/2.5,x/6,y/6);
    }
    
    if(dirviento > 0 && dirviento < 99){
      stroke(c);
      line(dirviento/2.5 ,dirviento/2.5,x/6,y/6);
    }
    
    if(dirviento > 200 && dirviento < 800){
      stroke(g);
      line(dirviento/2.5 ,dirviento/2.5,x/6,y/6);
    }

     popMatrix();
    
      
      
  }
}
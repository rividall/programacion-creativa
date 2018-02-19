class Rotacion {
  float x, y, x2, y2;
  float r, a, angulo;
  color c, d,g;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;// 2005 //2015
    temax = _temax;// 2004
    temin = _temin;// 2004 //2014
    temed = _temed;// 2005 //2014
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
    c = color (114,203,243);
    d = color(248,178,99);
    g = color(156,204,237);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + temed* sin(a);
    y = height/2 + temed * cos(a);
    
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
    noStroke();
     fill(c);
     ellipse(temin *7,temin*7,4,4);
     
     fill(d);
     ellipse(temed*7,temed*7,5,5);  
      
      //stroke(c);
      //line(100,100, medhum ,medhum);
      //fill(d);
;
      //rect(vientomax*4,vientomax*4,4,4);
      //rect(vientomed*4,vientomed*4,4,4);
      
      

      
      //ellipse(x/2,y/2,maxvi,maxvi);
      //ellipse(rafaga,rafaga,3,3);
      
      //ellipse(pdro, pdro, pdro/2, pdro/2);
      //stroke(g);
      //fill(c);
      fill(c);
      //rect(x/3, y/3, 6, rafaga);
      
       fill(d);
      //ellipse(x/3,y/3,nube,nube);
      //ellipse(x/3.5,y/3.5,nube,nube);
      //ellipse(minvi*11,minvi*11,3,3);
      //stroke(c);
      //line(maxvi/2, maxvi/2, minvi/4, minvi/4);
      //stroke(c);
     
      //fill(c);
      //noStroke();
      //ellipse(minpre/16,minpre/16,20,20);
      //fill(c);
      //noFill();
      //rect(x/2, y/2, 0, maxpre/16);// cosas en el punto final
      
      //noStroke();
      
 
      
     popMatrix();
    
      
      
  }
}
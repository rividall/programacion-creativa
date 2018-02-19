void loadData() {
  String datos[];
  String dia[] [];

  datos = loadStrings ("rio2006.csv");
  dia = new String [datos.length] [22];

  di = new Rotacion [datos.length ];

  for (int i = 1; i < datos.length; i++) {
    dia [i] = datos [i] . split(",");
    String fecha = dia [i][0];
    float temax = float (dia[i][1]);
    float temed = float (dia [i][2]);
    float temin = float (dia [i][3]);
    float pdro = float (dia [i][4]);
    float medro = float (dia [i][5]);
    float mindro = float (dia [i][6]);
    float maxhum = float (dia [i][7]);
    float medhum = float (dia [i][8]);
    float minhum = float (dia [i][9]);
    float maxpre = float (dia [i][10]);
    float minpre = float (dia [i][12]);
    float maxvi = float (dia [i][13]);
    float minvi = float (dia [i][15]);
    float vientomax = float (dia [i][16]);
    float vientomed = float (dia [i][17]);
    float rafaga = float (dia [i][18]);
    float nube = float (dia [i][20]);
    String eventos = dia [i][21];
    float dirviento = float (dia [i][22]);

    di[i] = new Rotacion(fecha, temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, eventos, dirviento);
  }
}
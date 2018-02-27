// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital -  Expresión Digital II
// Francisco Barría

/*CONTROLES
 Mouse - Gira la visualización.

 Visualización representa las máximas y mínimas temperaturas de Noruega el 2015.
 El carrusel demuestra la diferencia de esta entre las estaciones, y para mejor
 atención, hay guias de meses y estaciones.
 */


Slinky[] slinks;
Table table;

color white = color (255, 255, 255);
color brownie = color (144, 12, 42);

void setup() {
  size(850, 850, P3D);
  smooth(8);
  frameRate(30);
  noStroke();
  textAlign(CENTER);
  lights();
  ortho();
  camera(width/2, height, (height/2) / tan(PI*30.0 / 180.0)/4, // Coordenadas de camara.
    width/2, height/2, 0,                                      // Coordenadas de centro.
    0, 1, 0);                                                  // Sentido Cenital.

  table = loadTable("Tromso_Norway.csv", "header");
  slinks = new Slinky[table.getRowCount()];

  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);

    String date = row.getString("CET");
    int max = row.getInt("Max TemperatureC");
    int mean = row.getInt("Max TemperatureC");
    int min = row.getInt("Min TemperatureC");

    // Con esas variables construyo un objeto
    slinks[i] = new Slinky(date, max, mean, min);
  }
}
void draw() {
  background(87, 24, 69);
  translate(width/2, height/2, 0);
  pushMatrix();
  rotateX(-PI/3.75);                                   // Offset de camara.
  texto();                                             // Función de texto.
  popMatrix();
  rotateZ(radians(mouseX*.8));                        // Rotación del tambor.
  for (int i = 0; i < slinks.length; i ++) {
    pushMatrix();
    rotate(radians((i*360)/slinks.length));            // Causante del tambor.
    translate(320, 0, 0);                              // Ancho del tambor.
    slinks[i].day();                                   // Objetos.
    popMatrix();
  }
  pushMatrix();
  rotateZ(radians(30));
  seasons();                                           // Guia por estaciones.
  popMatrix();
  tags();                                              // Guia por meses.
}
void tags() {                                          // Meses.
  tag(0, white, 255, 30);                              // Año nuevo.
  tag(30, brownie, 30, 10);
  tag(60, brownie, 30, 10);
  tag(90, brownie, 30, 10);
  tag(120, brownie, 30, 10);
  tag(150, brownie, 30, 10);
  tag(180, brownie, 30, 10);
  tag(210, brownie, 30, 10);
  tag(240, brownie, 30, 10);
  tag(270, brownie, 30, 10);
  tag(300, brownie, 30, 10);
  tag(330, brownie, 30, 10);
}

void tag(int angle, color yoyo, int alpha_1, int alpha_2) {
  pushMatrix();
  noStroke();
  rotate(radians((angle*360)/365));
  translate(320, 0, 350);
  fill(yoyo, alpha_1);
  rotateY(PI/2);
  rotateZ(PI/4);
  quad(-7, -7, -7, 7, 7, 7, 7, -7);
  rotateZ(-PI/4);
  stroke(white, alpha_2);
  strokeWeight(1);
  line(0, 0, 630, 0);
  noStroke();
  popMatrix();
}

void seasons() {
  pushMatrix();
  noFill();
  stroke(brownie, 25);
  strokeWeight(50);
  translate(0, 0, -275);
  arc(0, 0, 600, 600, 0, HALF_PI);
  noStroke();
  popMatrix();
  pushMatrix();
  noFill();
  stroke(255, 87, 51, 25);
  strokeWeight(50);
  translate(0, 0, -275);
  arc(0, 0, 600, 600, HALF_PI, PI);
  noStroke();
  popMatrix();
  pushMatrix();
  noFill();
  stroke(brownie, 25);
  strokeWeight(50);
  translate(0, 0, -275);
  arc(0, 0, 600, 600, PI, PI+HALF_PI);
  noStroke();
  popMatrix();
  pushMatrix();
  noFill();
  stroke(255, 87, 51, 25);
  strokeWeight(50);
  translate(0, 0, -275);
  arc(0, 0, 600, 600, PI+HALF_PI, 2*PI);
  noStroke();
  popMatrix();
}
void texto () {

  fill(255, 50);
  textSize(25);
  text("T° in Norway", -325, -410, 0);
}

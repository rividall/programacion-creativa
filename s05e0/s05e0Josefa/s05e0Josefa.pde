//dibujo de una linea cruzada en un sketch de 800,600 con un ellipce en el centro

void setup () {
  size(800,600);
}

void draw() {
  background(255);
  line(0, 0, 800, 600);
  ellipse(width/2, height/2, 100, 100);

}

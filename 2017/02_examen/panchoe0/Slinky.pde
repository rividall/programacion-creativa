class Slinky {
  String date;
  int max, mean, min;
  int k = 2;
  float start_line, end_line;

  Slinky(String date, int max, int mean, int min) {
    this.date = date;
    this.max = max;
    this.mean = mean;
    this.min = min;
  }

  void day() {

    pushMatrix();                                 // T° Minimo.
    translate(0, 0, (min*15)-75);
    fill(255, 195, 0);
    rotateY(PI/2);
    ellipse(0, 0, 10, 10);
    popMatrix();

  /*  pushMatrix();
    translate(0, 0, (mean*15)-75);
    fill(0);
    rotateY(PI/2);
    ellipse(0, 0, 10, 10);
    popMatrix(); */

    pushMatrix();                                 // T° Máxima.
    translate(0, 0, (max*15)-75);
    fill(255, 87, 51);
    rotateY(PI/2);
    ellipse(0, 0, 10, 10);
    popMatrix();
  }

}

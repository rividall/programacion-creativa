import processing.pdf.*;
Rotacion[] di;

void setup() {
  size(600, 600);
  background(0);

  // inicializar variables
  
  loadData();
}

void draw() {
    beginRecord(PDF,"rio2014.pdf");
  background(255);
  for (int i = 1; i < di.length; i++){
    di[i].go(i);
    di[i].display(i);
  }
  endRecord();
}
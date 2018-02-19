//UDD-EXPRESION DIGITAL II
//s07e01Andres
//key CODED cambia tamaño y strokeWeight de elipse

int t1, t2, t3, sw1, sw2, sw3;

void setup() {
  size(500, 500);
  
  
  //tamaños elipse
  t3 = 100;
  t2 = 300;
  
  t1 = t3;
  
  //tamaños strokeWeight
  sw3 = 10;
  sw2 = 50;
  
  sw1 = sw3;
}

void draw() {
  background(0, 189, 255);
  fill(105, 255, 0);
  stroke(255, 217, 0);
  strokeWeight(sw1);
  ellipse(width/2, height/2, t1, t1);
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == LEFT) {
      t1 = t2;
    }
    if(keyCode == RIGHT) {
      t1 = t3;
    }
    if(keyCode == UP) {
      sw1 = sw2;
    }
    if(keyCode == DOWN) {
      sw1 = sw3;
    }
  }
}
  
  
  
  
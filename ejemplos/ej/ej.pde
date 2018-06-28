
void setup(){
	size(800, 800);
}

void draw() {
  background(204);
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  strokeWeight(2);
  stroke(255, 0, 0);
  line(s, 0, s, height);
  stroke(0, 255, 0);
  line(m, 0, m, height);
  stroke(0, 0, 255);
  line(h, 0, h, height);
}

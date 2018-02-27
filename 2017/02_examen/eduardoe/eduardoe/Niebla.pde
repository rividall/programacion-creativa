class Niebla {

  float x;
  float y;
  float xspeed;
  float yspeed;

  Niebla() {
    x = random(100, 600);
    y = 500;
    xspeed = random(-1, 1);
    yspeed = random(-1, -0.5);
  }

  void run() {
    x = x + xspeed ;
    y = y + yspeed ;
  }



  void display() {
    noStroke();
    fill(80, 10);
    ellipse(x, y, 200, 200);
  }
}
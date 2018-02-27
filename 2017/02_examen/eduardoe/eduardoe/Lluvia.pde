class Lluvia {

  float x;
  float y;
  float xspeed;
  float yspeed;

  Lluvia() {
    x = random(0, width);
    y = 0;
    xspeed = random(0, 0);
    yspeed = random(5, 20);
  }

  void run() {
    x = x + xspeed ;
    y = y + yspeed ;
  }



  void display() {
    noStroke();
    fill(#FFFFFF);
    ellipse(x+3, y+3, 2, 15);
  }
}
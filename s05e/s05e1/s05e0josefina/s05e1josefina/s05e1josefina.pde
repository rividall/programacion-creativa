//grilla de círculos de 10x10 px dispuestos en una grilla
int x;
int y;
void setup(){
  background(255);
  size(1000,1000);
  x=250;
  y=250;


}

void draw(){
  ellipse(x,y,10,10);
  ellipse(x+60,y,10,10);
  ellipse(x+120,y,10,10);
  ellipse(x+180,y,10,10);
  ellipse(x+120,y+240,10,10);
  ellipse(x+120,y+180,10,10);
  ellipse(x+60,y+120,10,10);
  ellipse(x+60,y+240,10,10);
  ellipse(x+60,y+180,10,10);
  ellipse(x,y,10,10);
  ellipse(x+60,y+60,10,10);
  ellipse(x+120,y+60,10,10);
  ellipse(x+120,y+120,10,10);
  ellipse(x+120,y+180,10,10);
  ellipse(x+180,y+60,10,10);
  ellipse(x+180,y+120,10,10);
  ellipse(x+180,y+180,10,10);
  ellipse(x+180,y+240,10,10);

  ellipse(x,y,10,10);
  ellipse(x,y+60,10,10);
  ellipse(x,y+120,10,10);
  ellipse(x,y+180,10,10);
    ellipse(x,y+240,10,10);
}

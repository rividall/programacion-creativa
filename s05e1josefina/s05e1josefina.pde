
void setup(){
  size(1000,1000);
  for(int i= 0;i <4;i ++){
    for (int j = 0; j <5; j++) {
    float x = map(i, 0, 3, width * .25, width * 5);
    float y = map(j, 0, 4, height * .25, height * .75);
    ellipse (x, y, 10, 10);
  }
}
}

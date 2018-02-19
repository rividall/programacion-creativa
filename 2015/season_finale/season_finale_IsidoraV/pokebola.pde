void pokebola(float x, float y, float t, float total){
  
  noStroke();
  fill(tot, 50);
  ellipse(x, y, total/5, total/5);
  
  stroke(cc);
  strokeWeight(3);
  fill(cc, 100);
  ellipse(x, y, t/5, t/5);  
  
  strokeWeight(3);
  line(x- (t/5)/2, y, x+ (t/5)/2, y);
  
  fill(cc, 200);
  stroke(cc);
  strokeWeight(3);
  ellipse(x, y, (t/5)/4, (t/5)/4);
}
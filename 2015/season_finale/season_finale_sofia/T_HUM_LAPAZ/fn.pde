void fn (float x1,float y1, float hmaxlp, float hminlp, float tmaxlp, float tminlp){

 
//temperatura

    float rotar = 0 * (TWO_PI/360);
    
  fill(255 , 80);
  noStroke();
  ellipse(x1, y1, hminlp, hminlp);
  
  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(s12);
  noStroke();
  rectMode(CENTER);
  rect(0, tmaxlp, 3, 20);
  popMatrix();

  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(color (96,176,176));
  noStroke();
  rectMode(CENTER);
  rect(0, tminlp, 3, 20);
  popMatrix();
  

  
  
  
}
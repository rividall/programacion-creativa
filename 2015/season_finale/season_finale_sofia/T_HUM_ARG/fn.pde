void fn (float x1,float y1, float hmaxarg, float hminarg, float tmaxarg, float tminarg){

//temperatura

    float rotar = 0 * (TWO_PI/360);
    
      //humedad
  fill(255 , 80);
  noStroke();
  ellipse(x1, y1, hminarg, hminarg);
  
  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(s12);
  noStroke();
  rectMode(CENTER);
  rect(0, tmaxarg, 3, 20);
  popMatrix();

  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(color (96,176,176));
  noStroke();
  rectMode(CENTER);
  rect(0, tminarg, 3, 20);
  popMatrix();
  

  
  
  
}
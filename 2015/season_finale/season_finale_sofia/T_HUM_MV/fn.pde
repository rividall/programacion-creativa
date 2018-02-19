void fn (float x1,float y1, float hmaxmv, float hminmv, float tmaxmv, float tminmv){

 
//temperatura

    float rotar = 0 * (TWO_PI/360);
    
      //humedad
  fill(255 , 80);
  noStroke();
  ellipse(x1, y1, hminmv, hminmv);
  
  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(s12);
  noStroke();
  rectMode(CENTER);
  rect(0, tmaxmv, 3, 20);
  popMatrix();

  pushMatrix();
  translate(x1, y1);
  rotate(rotar);
  fill(color (96,176,176));
  noStroke();
  rectMode(CENTER);
  rect(0, tminmv, 3, 20);
  popMatrix();
  

  
  
  
}
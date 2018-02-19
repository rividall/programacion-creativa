
void humedad (float x1, float y1, float huminAU, float huminBE,  float huminCA,  float huminES,  float huminHA, float huminPA, float huminRO, float humaxSP, float huminSP, float huminSN, float huminSY) {

 
  
  noStroke();
  fill(255);
  ellipse(x1, y1, huminCA/2, huminCA/2);
  
   stroke(color(12,0,255, 90));
  strokeWeight(huminBE/2);
  noFill();
  ellipse(x1, y1, huminAU/2, huminAU/2);
  
  stroke(color(0, 140, 255,90));
  strokeWeight(huminRO/9);
  noFill();
  ellipse(x1, y1, huminPA/2, huminPA/2);
  
  
  stroke(color (0, 170, 255,90));
  strokeWeight(huminSN/9);
  noFill(); //celeste
  ellipse(x1, y1, huminES, huminES);
 
  stroke(color (0, 231, 255,90));
  strokeWeight(huminSY/7);
  noFill(); //naranjo
  ellipse(x1, y1, huminSP, huminSP);
  
  stroke(color (0, 255, 248,90));
  strokeWeight(huminHA/7);
  noFill(); //naranjo
  ellipse(x1, y1, humaxSP/2, humaxSP/2);


  //blanco- cancun
  //azul - austria - stroke berlin
  //azul 2 - paris - roma
  //azul3 - estambul - santisgo
  //azul4 - san pedro - sydney
  //azul5 - sanpedro - hawai
  
}
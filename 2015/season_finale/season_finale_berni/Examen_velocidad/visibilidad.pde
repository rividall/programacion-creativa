
void visibilidad (float x1, float y1, float vimaxAU, float viminAU, float vimaxBE, float viminBE, float vimaxCA, float viminCA, float vimaxES, float viminES, float vimaxHA, float viminHA, float vimaxPA, float viminPA, float vimaxRO, float viminRO, float vimaxSP, float viminSP, float vimaxSN, float viminSN, float vimaxSY, float viminSY) {


  noStroke();
  fill (255); 
  ellipse(x1-20, y1+40, vimaxAU, vimaxAU);

  noStroke();
  fill (color(255, 0, 98));
  ellipse(x1-10, y1+30, vimaxBE, vimaxBE);

  noStroke();
  fill (color (255, 170, 0));
  ellipse(x1+3, y1+30, vimaxCA, vimaxCA);

  noStroke();
  fill (color (255));
  ellipse(x1+113, y1+40, vimaxES, vimaxES);

  noStroke();
  fill (color(255, 0, 98));
  ellipse(x1-20, y1+53, vimaxSY, vimaxSY);

  noStroke();
  fill (color (255, 170, 0));
  ellipse(x1-17, y1-40, vimaxPA, vimaxPA);

  noStroke();
  fill(255);
  ellipse(x1-5, y1-35, vimaxRO, vimaxRO);

  noStroke();
  fill(color(255, 0, 98));
  ellipse(x1+55, y1-35, vimaxSN, vimaxSN);
  
  noStroke();
  fill (color (255, 170, 0));
  ellipse(x1+113, y1-40, vimaxSP, vimaxSP);
  
   noStroke();
  fill(255);
  ellipse(x1+113, y1+53, vimaxHA, vimaxHA);
}

//c2 = color (255, 255, 255); //color blanco
//c3 = color (6, 252, 252); //color celeste
//c4 = color(255, 0, 98); //color rosado
//colores[0] = color (255, 170, 0) // naranjo
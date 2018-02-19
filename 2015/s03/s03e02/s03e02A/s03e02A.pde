/*
 El cógido ideal es el que mostrará los 4 colores elegidos
 color 1
 color 2
 blanco
 negro
*/

size(500, 500);
background(0);

fill(255);
rect(0, height/2, width, height);

noStroke();

fill(255, 0, 255);
ellipse(width/2 - width/4, height/2, width/2, height/2);

fill(255, 255, 0);
ellipse(width/2 + width/4, height/2, width/2, height/2);
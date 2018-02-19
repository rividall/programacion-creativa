//UDD-Expresión Digital II

//s06c01berni
//ellipse que rebota en el cavas y va pintando en su camino, si mueves el mouse por el canvas va cambiando los colores que pinta. Al apretar click vuelve a partir. al apretar 'a' aumenta el numero de ellipses y lineas verticales en el canvas.
float posx, posy, velx, vely, dirx, diry, dia, dia2, dia3, sw;
int c1, c2, c3, c4;
boolean t;

void setup () {
  // tamaño del canvas,color de fondo.
  size (1280, 800); //tamaño del canvas
  background (c1);
  
  posx = width/2; //posición en x
  posy = height/2; //posición en y
  velx = 19; //velocidad en x de 1,5
  vely = 18; //velocidad en y de 2
  dirx = 1; //dirección en x de 1
  diry = 1; //dirección en y de 1
  dia2 = 10;
  sw = 5; //strokeWeight de 5
  c1 = color(0, 0, 0); //color negro
  t = true;
}
  void draw () {
   
  if (t == true) {
  ellipse (posy, posx, dia2, dia2);
  ellipse (posx, posy, dia2, dia2);
  fill (c3, mouseX, mouseY);
  }
  if (t == false) {
    ellipse (posy/2, posx, dia2, dia2);
    ellipse (posx/2, posy, dia2, dia2); 
    ellipse (posy, posx, dia2, dia2);
    ellipse (posx, posy, dia2, dia2);
  }
    
  //posición de x es igual a la posición de x más la velocidad de x por la dirección de x
   posx = posx + velx * dirx; 
  if (posx > width - dia/2) { 
       dirx = dirx * -1; 
       strokeWeight (sw); 
    }
    
  if (posx < 0 + dia/2) { 
       dirx = dirx * -1; 
       
       strokeWeight (sw); 
    }
    
    posy = posy + vely * diry;
    
  if (posy > height - dia/2) { 
       diry = diry * -1; 
       
       strokeWeight (sw); 
    }
    
  if (posy < 0 + dia/2) {
       diry = diry * -1;
       
       strokeWeight (sw); 
    }
    
      for ( int i = 0; i <= width*2; i+= sw) {
   for ( int j = 0; j <= height*2; j += dia2) {
      ellipse (j, i, 8, 8);
      noStroke (); 
    }
   }     
}
    // teclado
   // si aprestas 'a' hay un aumento de lineas y ellipses. Mas un zoom
   void keyPressed () {
    
     if (key == 'a');{
     t = !t;
     ellipse (posy/2, posx, dia2, dia2);
     ellipse (posx/2, posy, dia2, dia2);
    
     }
    if (key == 'b'); {
     dia2 +=10;
    }
   }
   
   //click mouse
  void mousePressed () {
   background (c1);
  }
    

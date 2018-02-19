void  prueba(float x1, float y1,float vientoDir, float temax, float windmax, float maxhumedad){

   
//temperatura maximo (circulo rosado)
noStroke();
fill (186, 0, 124,99);
ellipse(x1, y1, temax, temax);

//maximo de viento(circulos celestes)  
noStroke();
fill (67, 239, 239,90);
ellipse(x1, y1, windmax,windmax);

//humedad maxima amarillo
float ap = vientoDir *(TWO_PI/360);
pushMatrix();
translate(x1, y1);
rotate(ap);
strokeWeight(2);
stroke(255,255,0);
noFill();
rect(x1 ,y1 , maxhumedad, maxhumedad);
popMatrix();

}
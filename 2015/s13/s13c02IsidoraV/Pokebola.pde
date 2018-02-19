void pokebola(float xx, float yy, float maxtemp, float mintemp, float maxvis, float minvis, float prec, float minhum, float maxhum, float cloud, float maxwind){

  stroke(n,100-(prec/100));
  strokeWeight(maxwind/5);
  fill(r, maxtemp*3);
  ellipse(xx, yy, 100, 100);
  
  noStroke();
  fill(at, mintemp*3);
  ellipse(xx, yy, 100, 100); 
  
  
  stroke(0); 
   strokeWeight(maxhum/100);
  fill(dg);
  ellipse(xx, yy, maxvis*2, maxvis*2);
  
    stroke(50);
  strokeWeight(minhum/100);
  fill(lg);
  ellipse(xx,yy,minvis*2, minvis*2);
  
     stroke(n);
   strokeWeight(maxwind/10);
 line(xx-45,yy,(xx-45)+cloud*2,yy);
 line(xx+45,yy,(xx+45)-cloud*2,yy);
}
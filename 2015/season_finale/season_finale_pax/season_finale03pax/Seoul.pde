void seoul(float x1, float y1, String fecha, float hummed, float tempmed, float hummax, float hummin, float tempmin, float tempmax, float maxvis, float minvis, float maxpresion, float minpresion) {

  pushMatrix();
  translate(x1, y1); 
  float mapmaxvis = map (maxvis, 0, 10, 1, 60); 
  float mapminvis = map (minvis, 0, 10, 1, 50); 
  float maptempmax = map (tempmax, -7, 34, 5, 100);
  float maptempmax2 = map (tempmax, -7, 34, 0, 255);
  float maptempmin = map (tempmin, -15, 26, 5, 100);  
  float maphummax = map (hummax, 61, 100, 0, 20);
  float maphummin = map (hummin, 14, 89, 0, 20);
  float mapmaxpresion = map (maxpresion, 998, 1041, 0, 25);
  float mapminpresion = map (minpresion, 990, 1037, 0, 25);
  

  // fill(24,214,205,maptempmax2);
  // noStroke();
  // rectMode(CENTER);
  // rect(0, 0, mapmaxvis, mapminvis);//cuadrados

  // stroke(ctt);
  // strokeWeight(15);
  // line(maptempmax, 0, maptempmin, 0 );//lienas verdes

  // stroke(cro);
  // strokeWeight(6);
  // line(0,mapmaxpresion,0,maphummax);
  
  stroke(con);
  strokeWeight(4);
  line(mapminpresion,0,maphummin,0);
  stroke(255);
  point(0, 0);
  popMatrix();
}
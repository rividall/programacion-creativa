void diamante(float x1, float y1,float vientoDir, String vientoDirT ,String tempmin, String windmin, String minhumedad){


float ap = vientoDir *(TWO_PI/360);
pushMatrix();
translate(x1, y1);
fill (0);
textAlign(CENTER);
//text(minhumedad,10, 0);
text(windmin,0, 10);
text(tempmin,10, 0);

popMatrix();

}
void mickeyMouse(){
  
  fill(255, 255, 0);
  ellipse(-25, 0, 30, 30);// la elipse está al borde derecho del rect
  ellipse(25, 0, 30, 30); // l elipse está al borde izq del rect
  
  fill(0, 255, 255);
  rectMode(CENTER);
  rect(0, 0, 50, 20);
}

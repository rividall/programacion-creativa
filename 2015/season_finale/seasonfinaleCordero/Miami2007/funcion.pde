void funcion(float x1, float y1, String windT, float wind, float medTemp, float medTemp2, float temMin, float temMin2, float temMed, float temMed2, String Icons, float humidity, String temMednum) {

  //Circulo Rojo Marca Temperatura Max Media. Variable en Size y Opacidad. Grosor de stroke marca promedio velocidad de viento
  float mapmedTemp = map(medTemp, 17, 36, 5, 40);
  float mapmedTemp2 = map(medTemp2, 17, 36, 50, 150);
  fill(rojo, mapmedTemp2);
  strokeWeight(wind/4);
  ellipse(x1, y1, mapmedTemp, mapmedTemp);

  ////Circulo Azul Marca Temperatura Min Media. Variable en Size y Opacidad
  float maptemMin = map(temMin, 8, 26, 40, 5);
  float maptemMin2 = map(temMin2, 8, 26, 50, 150);
  fill(azul, maptemMin2);
  noStroke();                                                                                                                                                                                                                                                                                                                                                                                         
  ellipse(x1, y1, maptemMin, maptemMin);

//linea grosor variable dependiendo de humedad
  pushMatrix();
  translate(x1, y1);
  stroke(26, 188, 156);
  strokeWeight(humidity/13);
  line(0, 0, 15, 0);
  fill(0);
  popMatrix();

  pushMatrix();

  //iconos que aparecen en caso de lluvia, truenos o ambos

  if (Icons.equals("Rain")) {
    shape(r, x1-10, y1-10, 11, 17);
  }
  if (Icons.equals("Thunderstorm")) {
    shape(t, x1-10, y1-10, 11, 17);
  }
  if (Icons.equals("Rain-Thunderstorm")) {
    shape(rt, x1-10, y1-10, 11, 17);
  }

  popMatrix();
}
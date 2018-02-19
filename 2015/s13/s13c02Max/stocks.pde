void stocks(float x1, float y1, float Yahoo, float Facebook, float Apple, float Microsoft, float Adobe, float IBM, float Amazon, float Oracle, float Avg) {

  float rotstocks = Avg* (TWO_PI/360);

  // //Valor Yahoo - circulo morado
  // noStroke();
  // fill(yahoo, 50);
  // ellipse(x1, y1, Yahoo, Yahoo);

  // //valor microsoft - circulo verde
  // noStroke();
  // fill(microsoft, 200);
  // ellipse(x1, y1, Microsoft/4, Microsoft/4);

  // //Valor Adobe - circulo rojo
  // noStroke();
  // fill(adobe, 90);
  // ellipse(x1, y1, Adobe/4, Adobe/4);

  // //Valor amazon - circulo naranjo
  // fill(amazon, 30);
  // noStroke();
  // ellipse(x1, y1, Amazon/6, Amazon/6);


  // //Valor Oracle - circulo rosado
  // fill(oracle, 60);
  // strokeWeight(2);
  // stroke(oracle, 100);
  // ellipse(x1, y1, Oracle/2, Oracle/2);

  // //valor apple - circulo gris
  // fill(apple, 30);
  // noStroke();
  // ellipse(x1, y1, Apple/12, Apple/12);

  // //valor IBM - circulo negro
  // fill(ibm, 10);
  // ellipse(x1, y1, IBM/1.5, IBM/1.5);

  // //valor facebook - circulo azul
  // fill(facebook, 100);
  // ellipse(x1, y1, Facebook/1.5, Facebook/1.5);

  //Triangulo verde que apunta al valor promedio de acciones
  pushMatrix();
  translate(x1, y1);
  rotate(rotstocks);
  strokeWeight(1);
  stroke(avg, Avg*3);
  line(0, 0, 0, Avg/6);
  // fill(avg, Avg*3);
  triangle(-5, 5, 0, -Avg/6, 3, 3);
  popMatrix();
}
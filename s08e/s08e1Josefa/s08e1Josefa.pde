//Me falta establecer el tercer estado, cambios de colores y más interacciones 

ArrayList <Formas> nFormas = new ArrayList <Formas> ();

Formas f; //Llamo a la clase Formas


void setup() {

  size(500, 700); //Tamaño del canvas


  for (int i = 0; i<4; i++) {

    float r = 50;
    float a = map (i, 0, 3, 0, TWO_PI); //i que va de 0 a 3 segun el forloop se desplace de 0° a 360°

    float x = r * cos(a);
    float y = r * sin(a);


    f = new Formas (x, y, a); 
    nFormas.add(f);
  }
}

void draw() {

  background(0);

  //f.botones();
  //f.rotacion1();

  //funcion principal 

  f.inicio(); //se reproduce el inicio desde un inicio
  f.botones(); //se muestran los botones desde un inicio 

  if (mouseX > 65 && mouseX < 175 && mouseY > 600 && mouseY < 650) { //ai yo coloco el mouse encima del boton 1
    if (mousePressed) { //si yo apreto el mouse detro del boton 1
      translate(width/2, height/3);
      for (Formas p : nFormas) {
        p.rotar(0, frameCount*0.01);
        p.estado1();
      }
      f.botones();
    }
  }
  
  if (mouseX > 195 && mouseX < 305 && mouseY > 600 && mouseY < 650) {
    if (mousePressed) {
      f.estado2();
      f.botones();
    }
  }
}
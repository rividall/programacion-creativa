// Comienzo creando mi clase que se llamara "Formas"
class Formas {

  // Variables Globales de la clase Formas
  float angulo; // Variable flotante para la rotación de mi dibujo3
  PImage img1; // Variable para colocar mi imagen del dibujo 1
  PImage img3; // Variable para colocar mi imagen del dibujo 3

  float r; // Radio para el movimiento del dibujo3
  float tam = 25; //Tamaño de los anillos del Dibujo 1
  float h;

  float posX; // Posición en X
  float posY; // Posición en Y
  float a; // Variable para desplazar el Dibujo1

  float x1, x2, x3, x4, y1, y2, y3, y4;
  float angulo3, angulo2;
  float r1, r2;

  // Genero un constructor para mi clase Formas
  Formas (float posX, float posY, float a) {
    this.posX = posX;
    this.posY = posY;
    this.r = 10; //Este valor define la distancia entre los círculos del estado 1
    this.a = a;
  }


  void dibujo1() {

    strokeWeight(5); // Grosor de línea 5px


    for (int i = 0; i < 4; i++) { //for para hacer 3 anillos por figura

      noFill();

      // Función que pintan los anillos
      if (i == 1 ) { // Anillo interior
        stroke(241, 58, 151); // Color morado claro
      } else if (i == 2) { // Anillo del medio
        stroke(209, 39, 162); // Color morado
      } else { // Anillo exterior
        stroke(114, 14, 130); // Color azul oscuro
      }
      ellipse(posX, posY, tam*i, tam*i); // Ellipse que forma todo el dibujo

      // Funciones para crear la dilatación de la figura
      tam += 0.3;
      if (tam > 50) {
        tam *= -1;
      }
    }
  }

  ////////////////////////////////////////////

  // Función para rotar los 3 anillos
  void rotar1(float ap, float f) { // F es un contador
    a += ap; // Se suma para ver las 3 ellipses
    h = map(sin(f), -1, 1, -100, 100);

    posX = (r + h) * cos(a);
    posY = (r + h) * sin(a);
  }

  ////////////////////////////////////////////

  void dibujo1In() {
    noStroke(); // No líneas en el texto
    fill(255); // Color del texto blanco
    textSize(20);// Tamaño del texto 25px
    text("R:", 25, 540); // Escribo r sobre los datos del radio
    text(r, 25, 580); // Imprimo los datos del radio
    text("posX:", 125, 540); //Escribo posX sobre los datos de posX
    text(posX, 125, 580); // Imprimo los valores del posX
    text("posY:", 225, 540); // Escribo posY sobre los datos de posY
    text(posY, 225, 580); // Imprimo los valores del mouseX
    text("H o Recorrido:", 325, 540); // Escribo H sobre los datos de H
    text(h, 325, 580); // Imprimo los valores de H


    pushMatrix ();
    translate(width/2, 250); // Traslado la figura al centro del dibujo
    fill(255); // Color de relleno blanco
    ellipse(posX, posY, 20, 20); // Ellipse que sigue un dibujo para entender el movimiento
    popMatrix();
  }

  ///////////////////////////////////////////

  void dibujo3() {

    float an = 2; // Variable para el ancho de los rectángulos
    float al = 20; // Variable para el alto de los rectángulos

    color[] colores1 = new color[3]; // Array para la primera paleta de colores en orden
    color[] colores2 = new color[3]; // Array para la segunda paleta de colores en orden

    boolean cambioColor = false; // Booleana para cambiar los colores entre un array y el otro

    int index; // Variable para recorrer entre un array y el otro

    background(12, 2, 69); // Color de fondo azul oscuro
    noStroke(); // No hay bordes

    // Declaro los colores de mi array
    colores1[0] = color(128, 102, 192); // Morado claro
    colores1[1] = color(89, 68, 173); // Morado medio
    colores1[2] = color(54, 35, 150); // Morado oscuro

    colores2[0] = color(54, 35, 150); // Morado oscuro
    colores2[1] = color(89, 68, 173); // Morado medio
    colores2[2] = color(128, 102, 192); // Morado claro

    index = 0; // Inicializo el index con 0

    // Condiciones de cambio de color cuando termine un ciclo
    if (angulo  > 960 && angulo < 1920 || angulo > 2880 && angulo < 3840) { // Si el ángulo esta entre estos datos
      cambioColor = true; // Convierto la booleana en true para recorrer el otro listado de colores

      // Además realizo una condición en el index para que el recorrido del array este en un loop
      if (index < 2) { // Sí index es 1
        index++; // Suma 1
      } else { // Sino
        index = 0; // Index va a tomar el valor de 0
      }
    }
    // Aplico un else para cambiar la boolean falsa y los colores
    else {
      cambioColor = false;

      if (index < 2) {
        index++;
      } else {
        index = 0;
      }
    }

    rectMode(CENTER); // Cambio el centro de los rect para que estén alineados


    for (int i=1; i<12; i++) { // Forloop para la cantidad de brazos
      for (int j=1; j<4; j++) { // Forloop para la cantidad de anillos

        pushMatrix();
        // Condiciones para especificar los colores en cada anillo
        if (cambioColor) { // Si mi boolean es verdadera
          if (j%3==0) { // Anillo exterior
            fill(colores1[0]); // Color 0 del array colores 1 (morado claro)
          } else if (j%2==0) { // Anillo del centro
            fill(colores1[1]); // Color 1 del array de colores 1 (morado)
          } else if (j%1==0) { // Anillo interno
            fill(colores1[2]); // Color 2 del array colores 1 (morado oscuro)
          }
        } else {
          if (j%3==0) { // Anillo externo
            fill(colores2[0]); // Color 0 del array colores 2 (morado oscuro)
          } else if (j%2==0) { // Anillo del centro
            fill(colores2[1]); // Color 1 del array colores 1 (morado)
          } else if (j%1==0) { // Anillo interno
            fill(colores2[2]); // Color 2 del array colores 2 (morado claro)
          }
        }

        translate(width/2, 250); // Se coloca el dibujo en el centro de x y en 250 de Y
        rotate(radians((30*i)* angulo/80)); // Rotamos 30 grados en cada vuelta
        rect(50*j, 0, i*an, al); // Dibujo de las figuras generando un degrade en el ancho
        angulo += 0.02; // La figura rota en sentido horario
        popMatrix();

        // Condición de apretar el mouse para variar el ancho y el alto de la figura
        if (mousePressed) {
          an = mouseX/80; // El ancho se asocia con el mouseX
          al = mouseY; // El alto se asocia con el mouseY
        }
      }
    }
  }

  //////////////////////////////////////////////////////////////

  void dibujo3In() {


    // variabes Globales en entornos locales no se debe hacer

    float an = 2; // Variable para el ancho de los rectángulos
    float al = 20; // Variable para el alto de los rectángulos

    color[] colores1 = new color[3]; // Array para la primera paleta de colores en orden
    color[] colores2 = new color[3]; // Array para la segunda paleta de colores en orden

    boolean cambioColor = false; // Booleana para cambiar los colores entre un array y el otro

    int index; // Variable para recorrer entre un array y el otro
    // variabes Globales en entornos locales no se debe hacer
    background(12, 2, 69); // Color de fondo azul oscuro
    noStroke(); // No hay bordes

    // Declaro los colores de mi array
    colores1[0] = color(128, 102, 192); // Morado claro
    colores1[1] = color(89, 68, 173); // Morado medio
    colores1[2] = color(54, 35, 150); // Morado oscuro

    colores2[0] = color(54, 35, 150); // Morado oscuro
    colores2[1] = color(89, 68, 173); // Morado medio
    colores2[2] = color(128, 102, 192); // Morado claro

    index = 0; // Inicializo el index con 0

    // Condiciones de cambio de color cuando termine un ciclo
    if (angulo  > 960 && angulo < 1920 || angulo > 2880 && angulo < 3840) { // Sí el angulo esta entre estos datos
      cambioColor = true; // Convierto la booleana en true para recorrer el otro listado de colores

      // Además realizo una condición en el index para que el recorrido de los array este en un loop
      if (index < 2) { // Sí index es 1
        index++; //suma 1
      } else { // Sino
        index = 0; // Index va a tomar el valor de 0
      }
    }

    // Aplico un else para cambiar la boolean falsa y los colores
    else {
      cambioColor = false;

      if (index < 2) {
        index++;
      } else {
        index = 0;
      }
    }

    rectMode(CENTER); // Cambio el centro de los rect para que estén alineados

    for (int i = 1; i < 12; i++) { // Forloop para la cantidad de brazos
      for (int j = 1; j < 4; j++) { // Forloop para la cantidad de anillos

        pushMatrix();

        if (cambioColor) { // Si mi boolean es verdadera
          if (j % 3 == 0) { // Anilo exterior
            fill(colores1[0]); // Color 0 del array colores 1 (morado claro)
          } else if (j % 2 == 0) { // Anillo del centro
            fill(colores1[1]); // Color 1 del array de colores 1 (morado)
          } else if (j % 1 == 0) { // Anillo interno
            fill(colores1[2]); // Color 2 del array colores 1 (morado oscuro)
          }
        } else {
          if (j % 3 == 0) { // Anillo externo
            fill(colores2[0]); // Color 0 del array colores 2 (morado oscuro)
          } else if (j % 2 == 0) { // Anillo del centro
            fill(colores2[1]); // Color 1 del array colores 1 (morado)
          } else if (j % 1 == 0) { // Anillo interno
            fill(colores2[2]); // Color 2 del array colores 2 (morado claro)
          }
        }

        translate(width/2, 250); // Se coloca el dibujo en el centro de x y en 250 de Y
        rotate(radians((30*i)* angulo/80)); // Rotamos 30 grados en cada vuelta
        rect(50*j, 0, i*an, al); // Dibujo de las figuras generando un degrade en el ancho
        popMatrix();

        // Condición de cuando apretó el botón del mouse derecho
        if (mousePressed && (mouseButton == LEFT)) {
          angulo += 0.05; // Le digo al ángulo que gire en sentido anti horario
        }

        // Condición de cuando apretó el botón del mouse derecho
        if (mousePressed && (mouseButton == RIGHT)) {
          angulo += 0.05; // Le digo al ángulo que gire en sentido horario


          // Vario el alto de la figura con el mouseY y el ancho con el mouseX
          al = mouseY;
          an = mouseX/80; //Divide en 80
        }
        noStroke(); // No líneas en el texto
        fill(255); // Color del texto blanco
        textSize(20);// Tamaño del texto 25px
        text("angulo:", 50, 540); // Escribo ángulo sobre los datos del ángulo
        text(angulo, 50, 580); // Imprimo los valores de ángulo
        text("An:", 200, 540); // Escribo mouseX sobre los datos de mouseX
        text(an, 200, 580); // Imprimo los valores del mouseX
        text("Al", 350, 540); // Escribo mouseY sobre los datos de mouseY
        text(al, 350, 580); // Imprimo los valores de mouseY
      }
    }
  }

  // si el método no se usa, no va en el programa.
  void ocho() {
    noStroke(); // No bordes
    background(255); // Color de fondo blanco

    angulo3 += 0.05; // angulo3 gira en sentido horario
    angulo2 -= 0.05; // angulo2 gira en sentido anti horario

    // Ellipse inferior hacia la izquierda
    pushMatrix();
    translate(width/2, 325 ); // Establesco el centro de rotación
    x1 = r1 * cos(angulo3);  // Defino el cos en y1
    y1 = r1 * sin(angulo3); // Defino el seno en x1
    fill(0, 0, 255); // Color verde
    r1 = 125; // Radio de rotación

    if (sin(angulo3) < 1  && cos(angulo3) >  0) { // Sí mi figura esta entre estos senos y cosenos
      ellipse(x1, y1, 50, 50); // Se va a dibujar
    }
    popMatrix();

    //Ellipse superior hacia la derecha
    pushMatrix();
    translate(width/2, 125 ); // Establesco el centro de rotación
    x2 = r2 * cos(angulo2); // Defino el cos en y1
    y2 = r2 * sin(angulo2); // Defino el seno en x1
    fill(0, 0, 255); // Color azul de relleno
    r2 = 75; // Radio de rotación
    if (sin(angulo3) < 1  && cos(angulo3) <  0) { // Sí mi figura esta entre estos senos y cosenos
      ellipse(x2, y2, 50, 50); // Se va a dibujar
    }
    popMatrix();

    //Ellipse superior a la izquierda
    pushMatrix();
    translate(width/2, 125 ); // Establesco el centro de rotación
    x3 = r2 * cos(angulo3); // Defino el cos en y1
    y3 = r2 * sin(angulo3); //Defino el seno en x1
    fill(0, 255, 0); // Color verde
    r2 = 75;// Radio de rotación
    if (sin(angulo3) < 1  && cos(angulo3) >  0) { // Sí mi figura esta entre estos senos y cosenos
      ellipse(x3, y3, 50, 50); // Se va a dibujar
    }
    popMatrix();

    //Ellipse superior a la derecha
    pushMatrix();
    translate(width/2, 325 ); // Establesco el centro de rotación
    x4 = r1 * cos(angulo2); //Defino el cos en y1
    y4 = r1 * sin(angulo2); //Defino el seno en x1
    fill(0, random(200, 255), 0); // Color Verde
    r1 = 125; // Radio de rotación
    if (sin(angulo3) < 1  && cos(angulo3) <  0) { // Sí mi figura esta entre estos senos y cosenos
      ellipse(x4, y4, 50, 50); // Se va a dibujar
    }
    popMatrix();
  }

  void cambios() {

    if (key == '2') {
      dibujo1In();
    }
    // Condiciones de botones para pasar entre los dibujos
    if (key == '3') { // Con el número 5
      dibujo3(); // Se reproduce el dibujo 3
    }
    if (key == '4') { // Con el numero 6
      dibujo3In(); // Se reproduce el dibujo 3 con información
    }
    if (key == '5') { // Con el numero 5
      ocho(); // Se reproduce el dibujo 2
    }
  }
}

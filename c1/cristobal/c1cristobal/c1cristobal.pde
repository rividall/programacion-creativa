// autor y nombre del trabajo

// se hace en bloque de comentario
/*
 Descripción:
 El programa consiste en que al accionar cierta tecla(en esta ocasión
se utiliza j,k, barra espacio ) con función de interruptor, al apretarla una vez
 inicia una función y al volver a apretarlas estas desaparecen, funcionando en
 base a una condición especifica que es que las otras funciones esten
 desactivadas, por lo que no se podran ver las tres funcionando simultáneamente.

 La función "rectangulo"(ejecutada con la tecla "espacio") crea una variedad de
 rectángulos cuyo centro es la posición del mouse sobre el canvas. Estos además
 rotan alrededor del eje central y cada rectángulo  tiene una velocidad distinta.

 La función "circulo" (ejecutada con la tecla "j") crea varios círculos en línea,
 los cuales rotan alrededor del origen (la mitad del canvas), dependiendo de
 donde se ubique el mouse varía sus colores (basados en los referentes)
 y su desplazamiento o posición.

 La función "pelotillas" (ejecutada con la tecla "k") crea varias elipses las
 cuales rotan alrededor del origen(mitad del canvas) y alrededor se encuentran
 otras elipses rojas las cuales  varían su tamaño  en base a la posición del
 mouse.
*/

ArrayList<Figura> lista = new ArrayList<Figura>();
Figura f;
// nombre de las booleanas dbeen relacionar acción
boolean funcion1 = false;
boolean funcion2 = false;
boolean funcion3 = false;
void setup() {
  size(500, 500);
  f = new Figura();
  lista.add(f);
  rectMode(CENTER);
}

void draw() {
  background(0);
  for (Figura a : lista) {
    if (funcion1== true) {
      a.rectangulo();
    } else if (funcion2 == true) {
      a.circulo();
    } else if (funcion3 == true) {
      a.pelotillas();
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    funcion1 = !funcion1;
  }
  if (key == 'j') {
    funcion2 = !funcion2;
    funcion1 = funcion1;
  }
  if (key == 'k') {
    funcion1 =funcion1;
    funcion2 = funcion2;
    funcion3 = !funcion3;
  }
}

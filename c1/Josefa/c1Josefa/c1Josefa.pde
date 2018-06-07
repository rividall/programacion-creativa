/*
Josefa Méndez Gómez
17 - 05- 2018
Certamen 1 "Programación creativa"

Descripción:
Al iniciar el sketch se presentarán tres objetos conformados por tres anillos
que se estarán moviendo de un lado al otro cruzándose el centro, además estos
objetos se estarán dilatando y contrayendo durante su recorrido, para poder volver
a reproducir este sketch se debe presionar cualquier botón.

Para continuar y entender lo que está sucediendo con el primer sketch uno debe
apretar el número 2 para poder ver los detalles del radio, recorrido, posición
en X y la posición en Y. Además aparecerá una ellipse blanca sobre uno de los
anillos para entender cómo se están moviendo las figuras.

Mi segundo dibujo consiste en dos ellipses de dos colores que se desplazan de tal
manera que forma un ocho, para poder ver el dibujo se debe presionar el número  5.

La otra composición se puede ver apretando el número 3, donde aparecerá una
figura con 12 brazos que contiene tres rect de distintos tamaños que giraran
entorno aun centro con velocidades diferentes, completando el ciclo en 24
segundos. Además si uno presiona el mouse y lo desplaza podrá modificar
los tamaños de los rectángulos en un cierto rango.

Finalmente, si seleccionamos la tecla 4 podremos ver e interactuar con más
detalle lo que está sucediendo en la composición, donde se imprime la
información del ancho de la figura, el alto, y el anulo de rotación.
Además, la figura ya no se moverá por sí sola, sí uno aprieta el botón
izquierdo del mouse se moverá en su forma original, y sí uno aprieta el
botón derecho del mouse se moverá pero distorsionada con los rangos del
mouseX y el mouseY.
*/


// creo un arrayList para almacenar los datos de mi clase
ArrayList <Formas> nFormas = new ArrayList <Formas>();

Formas f; // Declaro mi variable f con la clase Formas

void setup() {
  size(500, 600); // Tamaño del canvas

  for (int i = 0; i < 4; i++) { // Creo un forloop para tener 3 anillos iguales
    float r = 50; // Defino el radio de mis anillos
    float a = map (i, 0, 3, 0, TWO_PI); // i que va de 0 a 3 según el forloop se desplace de 0° a 360°

    // Aplico el sin y el cos para mover mi dibujo1
    float x = r * cos(a);
    float y = r * sin(a);

    f = new Formas(x, y, a); // Inicializo mi variable f

    nFormas.add(f); // Agrego al listado otra figura gracias al forloop
  }
}

void draw() {

  background(58, 1, 69); // Fondo  de color morado
  pushMatrix();
  translate(width/2, 250); // Desplazo la figura
  for (Formas p : nFormas) {
    p.rotar1(0, frameCount*0.01); // Aplico rotar
    p.dibujo1(); // Aplico el dibujo 1
  }
  popMatrix();

  // Todas las funciones que se llaman internamente desde cambios()
  // afectan a un solo objeto, esos cambios deben ser desde fuera de la clase
  // con un método para cada cambio.
  f.cambios(); // Aplico la función para ir cambiando los dibujos con el teclado

}

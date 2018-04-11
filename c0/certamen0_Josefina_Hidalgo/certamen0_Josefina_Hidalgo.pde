//Universidad del Desarrollo - Facultad de Diseño - Certamen 0 - Josefina Hidalgo

//Composición de triangulos en direcciones opuestas dentro del eje x, además varian de colore entre 4 variables. Al mantener apretado el mouse, aparecen circulos en negro en posicion al azar

//Archivo principal

//Declarar Variables
ArrayList<Formas> listado = new ArrayList<Formas>();//creación de lista para repetir una misma variable varias veces al mismo tiempo

Formas f;

//Inicializar Variables
void setup () {
  size(400, 400); //tamaño del canvas

  for (int i = 0; i <50; i++) {//parte en 0 y se va sumando 1 hasta llegar a 50
    f = new Formas (random(width), random (height)); //inicializar lista y agregar variables presentes en la clase
    listado.add(f); //se agrega la clase f a la lista
  }
}

//Usar Variables
void draw () {
  frameRate(50);
  background (255);

  for (Formas f : listado) {
    //inicializar los objetos de la clase 
    f.triangulo(); 
    f.movizq();
    f.triangulodos();
    f.movder();
  }

  if (mousePressed) { //Si se mantiene el mouse apretado ocurre la acción
    background(255); //fondo para que no se muestren las demás funciones
    f.circulos ();
  }
}
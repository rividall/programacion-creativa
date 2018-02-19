#Crear un archivo PDF con Texto Editable    
Para cuando no podamos cargar la tipografía que queramos, a través de imprimir en la consola la lista de *TODAS LAS TIPOGRAFÍAS QUE HAY EN AL COMPUTADOR…* y elegir una y ver el tamaño, etc; se nos va la vida. Podemos usar algunas funciones para posteriormente modificar tipografía, tamaño y color en Illustrator por ejemplo. 

Lo primero que hay que hacer, al igual que con cualquier PDF es importar la librería desde el menú de Processing **Sketch > Import Library > pdf** lo que nos dejará en la primera línea del programa ```import processing.pdf.*;```  

Luego hay que declarar una variable para la tipografía e inicializarla en `setup()`  
```{processing}
import processing.pdf.*;
PFont f;
void draw() {
  f = createFont("Avenir-Medium", 12);
}
```
El nombre de la tipo `Avenir-Medium` y tamaño `12` lo podremos modificar en Illustrator

**La parte más difícil**  
Al momento de usar la variable de tipografía `f` en `draw()` previamente hay que declarar el modo del texto:
```{processing}
void draw() {
  textMode(MODEL);  // <-- SUPER IMPORTANTE 
  fill(0);
  textFont(f);
  text("Texto Editable", width/2, height/2 );
}
```
De esta forma todo el texto que dibujemos quedará editable a través de Illustrator, bacan.

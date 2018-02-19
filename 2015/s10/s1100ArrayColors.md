#Array  
**Usar arrays para elegir aleatóreamente entre una lista de colores**  
Usar una lista de elementos con variables de color sirve para usar el `index` del array dentro de un `(int)random(index)` y de esta forma usarlo para `stroke()` y/o `fill()`  

**Uso**  
Primero se debe declarar la variable, y en este caso inicializarla dentro de la misma línea:  
`color[] colores = new color[3];`  
De esta forma estamos diciendo: *crea un array `[]` llamado `colores` del tipo de variable `color` que tendrá `[3]` elementos.*  
Luego debemos llenar con información los espacios que hemos creado `[3]`  
```{processing}
color[] colores = new color[3];

void setup() {
  colores[0] = color(255, 0, 255);
  colores[1] = color(0, 255, 255);
  colores[2] = color(255, 255, 0);
}
```  
Posteriormente en el `void draw()` podemos usar la variable `colores[]` y dentro de `[]` usar desde `0 a 2` ya que son 3 variables y acceder a los valores de `color(r, g, b)`  
```{processing}
void draw(){
  //primer color de la lista
  fill(colores[0]);
  ellipse(20, 50, 20, 20);
  
  //segundo color de la lista
  fill(colores[1]);
  ellipse(50, 50, 20, 20);
  
  //tercer color de la lista
  fill(colores[2]);
  ellipse(80, 50, 20, 20);
}
```
#Pero  
Como los valores que estan dentro del array comienzan con `0` podemos usar un `for` loop para acceder a todos y dibujar con menos líneas  
```{processing}
void draw() {
  for (int i = 0; i < colores.length; i++) {
    fill(colores[i]);
    ellipse(30*i + 20, 50, 20, 20);
  }
}
```
Usando `colores.length` iremos por toda la lista del arrays sin pasarnos y dar un error.  

Finalmente para usar los colores de forma aleatoria, en el `[i]` podemos cambiarlo por un `(int)random(colores.legth)` y así elegirá un número entero dentro de la lista  
```{processing}
void draw() {
  for (int i = 0; i < colores.length; i++) {
    fill(colores[(int)random(colores.length)]);
    ellipse(30*i + 20, 50, 20, 20);
  }
}
```

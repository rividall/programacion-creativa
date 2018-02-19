#Cómo usar menos lugares de los que un doble for loop nos da
Anteriormente hemos usado un doble for loop para dibujar una grilla de puntos a través del canvas, pero siempre ha sido la totalidad, si el primer for loop tiene 5 espacios y el segundo tiene 10, **siempre hemos tenido 50 elementos en el canvas**. Si queremos usar este método en conjunto con los elementos de nuestra base de datos, el escenario es **levemente complejo.**  

Hasta ahora hemos hecho un doble for loop ellipses
```{processing}
int cols, filas;
void setup() {
  size(800, 800);
  smooth();
  cols = 7;
  filas = 5;
}

void draw() {
  background(253);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      ellipse(x1, y1, 5, 5);
    }
  }
}
```
![Grilla 7x5 ellipses](https://github.com/nicotron/EDII-guides/blob/master/s12/s12Grilla/s12Grilla01-7x5-ellipse.png)  

Podemos saber qué se dibuja primero al usar la `fill(x * 40);`  
Sería tan fácil usar una sola función para cambiar las ellipses por números correlativos, pero no se puede ¯\_(ツ)_/¯  

Los pasos que tenemos que hacer son:
- Cambiar las ellipses por los números del update del for loop
- Cambiar esos números por números correlativos y dibujar los números dentro de la grilla
- Usar un número mayor a la base de datos
- Usar esos valores para acceder a la base de datos  

**Cambiar las ellipses por los números del update del for loop**  
```{processing}
fill(0);
text("x " + x + " , " + "y " + y, x1, y1);
```
![xy coordenadas](https://github.com/nicotron/EDII-guides/blob/master/s12/s12Grilla/s12Grilla01-7x5-xy.png)  

**Cambiar esos números por números correlativos -->ATENCION<--**  
Ya sabemos que podemos escribir texto en cada uno de los lugares del doble for loop, el problema ahora es escribir los números del 0 al 34, para eso hay que usar la expresión `int nums = y+x*cols;` esta expresión nos dice que hay una variable de números enteros llamada `nums` que tomará los valores de `y+x*cols` para entender lo que pasa, podemos escribir en la consola la espreción más la notación por cada variable:  
`println(y + " + " + x *cols  + " = " + nums);`  

```{processing}
int nums = y+x*cols;
fill(0);
textAlign(CENTER);
text(nums, x1, y1);
println('y' + " + " + 'x' + " * cols" + " = " + "nums");
println(y + " + " + x *cols  + " = " + nums);
```
![correlativos en Y](https://github.com/nicotron/EDII-guides/blob/master/s12/s12Grilla/s12Grilla01-7x5-correlativosY.png)  

Podemos hacer la correlación en el eje X cambiando `int nums = y+x*cols;` por `int nums = x+y*filas;` dependerá de lo que quieran ustedes. 

#AHORA
**Usar un número mayor a la base de datos**  
Tenemos solamente 35 elementos, pero nuestra base de datos es de 365, no hay una multiplicación que nos de 365 así que tenemos que hacer una grilla mayor, puede ser `12 x 31 = 371` las otras más cercanas dan 364 !!!!!  
Cambiamos `cols = 12` y `filas = 31` y vemos los números que tenemos, papaya. 

Ya tenemos `x` e `y` para la posición en la grilla y `nums` para acceder a la base de datos, ahora tenemos que dibujar nuestra función en esos `x` e `y` yendo de 1 a 365  
Necesitamos 365 de 371 para eso podemos usar un `if` para el rango de posiciones que queremos
`if ((nums >= 0) && (nums < 365))` entrega 365 lugares entre el 0 y el 364  
![365 del total](https://github.com/nicotron/EDII-guides/blob/master/s12/s12Grilla/s12Grilla01-12x31-365-de-371.png)

Solamente nos falta vincularlo con la base de datos  
Los pasos ya los saben
```{processing}
int cols, filas;
String datos[];
String dia[][];

void setup() {
  size(1000, 800);
  smooth();
  cols = 12;
  filas = 31;
  
  datos = loadStrings("paris2014clima.csv");
  dia = new String[datos.length][23];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
}
```
En el `void draw` hay que cambiar `365` por `datos.length`, ahora tenemos del 0 a 365 porque nuestra base de datos tiene header, y si llenamos con datos en el `0` se verá el titulo de la columna, miren con antención  
Al igual que en los ejercicios anteriores inicializamos las variables de cada una de las columnas que vamos a usar **LUEGO DEL `IF`**  
```{processing}
String vientoDir = dia[nums][22];
fill(0);
textAlign(CENTER);
text(vientoDir, x1, y1);
```
Si usamos por ejemplo la columna `[22]` y usamos los 365 lugares, en el 0 nos dará el título de la columna y tendrémos 366 elementos dibujados, para evitrar eso hay que sumar 1 a la expresión correlativa `int nums = 1 + x+y*cols;`  

De esta forma ya tenemos:
- coordenadas para x e y
- un contador que pasa por toda la columna
- una variable por cada columna

Con todo esto podemos crear nuestra función que dibujará todo lo que queramos dentro de la base de datos
**Recuerden que también pueden leer más de una vez cada columna**  
Por ejemplo si usan la variable de dirección del viento para rotar, pero también la pueden usar para escribir el valor en forma de `String`  
[Guía de cómo rotar elementos en el canvas](https://github.com/nicotron/EDII/blob/master/s12/s12Rotate-TWO_PI.md)
```{processing}
vientoAngulo = float(dia[nums][22]);
vientoAnguloTexto = dia[nums][22];
```
![dos funciones misma columna](https://github.com/nicotron/EDII-guides/blob/master/s12/s12Grilla/s12Grilla01-12x31-funcion-lectura-doble-de-misma-columna.png)

#Rotate TWO_PI
Processing tiene una extraña forma de contar ángulos de rotación, normalmente nosotros lo hacemos desde 0 a 360 mientas Processing lo hace desde 0 a 2π. Para nosotros, los humanos, es más fácil saber que 90º es 360/4 y no 2π/4 ó 2π * 0.25, ¿qué pasa si queremos usar 37º o si una base de datos tiene diferentes ángulos? nuestra cabeza podría derretirse de tanto pensar…  

Lo que podemos hacer es una relación entre las dos formas de ver los ángulos  
Ya sabemos que 0 es 0º y TWP_PI es 360º, podemos hacer una variable que nos de un valor por ángulo, si dividimos TWO_PI por 360 tendremos valores para cada ángulo
```{processing}
float angulo = 0;
float conversion = angulo * TWO_PI/360;
```
De esta manera `angulo` es la variable que cambiamos y que tiene valores que conocemos y `conversion` es la variable que Processing entiende, todos felices. 

Por defecto el 0 queda en la posicón del 3 en un reloj circular, ¿cómo podemos hacer que el 0 inicie a las 12 del reloj circular? Se puede crear una nueva variable para que sume `angulo` y así puedan usar `angulo como la variable que lee la base de datos. 


**Uso**  
Las rotaciones en Processing ocurren con el eje en las coordenadas 0,0 y todo lo que dibujemos debe tener esas coordenadas en los argumentos x,y. Para esto tenemos que usar la función `translate`. En el código se muestra una línea que rota desde el centro y tiene dimension `200`
```{processing}
translate(width/2, height/2);
rotate(af);
line(0, 0, 200, 0);
```
Para saber que el ángulo es el correcto podemos ir imprimiéndolo en la consola `println(angulo)`  

**Rotar en más de dos lugares**  
Si usamos el mismo bloque de texto y solamente cambiamos los argumentos en `translate(width/2 + 100, height/2);` no funciona lo que queremos porque la función de `translate` se suma con la anterior. Tampoco podemos usar `translate(100, 0);` porque nuevamente sumará la función anterior. 
Para hacerlo hay que incorporar un método llamado `pushMatrix` y `popMatrix`  
Se usa `pushMatrix` al inicio del bloque de texto que queremos modificar y `popMatrix` al final por cada elemento que queramos rotar.

**Ahora, ¿cómo incorporarían este método a su trabajo; para usarlo por ejemplo en el ángulo de dirección del viento de la base de datos?**

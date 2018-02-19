/*
errores
0 run
1 programa: negro 
0 sintaxis
0 código
4 variables: posición y tamaño rectángulo
1 ortografía: espacio entre funcion
1 notación: nombre de archivo
*/
size (500, 500);
background(255, 140, 239);
strokeWeight(10);
stroke(255);
fill(251, 255, 158);
rect(125, 125, 200, 200); //no usaste las variables incluidas en Processing para la posición del rectángulo

/*
Si bien tu programa corre hay pequeños detalles de ortografía que te diferenciarán de una entrega buena a una entrega excelente. 
en el caso de la linea 6 en dónde escribiste:

rect(125, 125, 200, 200); y debió estár escrito
rect(width/2-100, height/2-100, 200, 200); de esta manera usas las variables que trae Processing y al restar 100 dejas el rectángulo centrado.

El uso de variables que son palabras que tienen asiganado valores numéricos es lo que haremos constantemente desde las siguientes clases
es muy importante que dirijas el foco a ese tiempo de pensamiento.

Otro detalle es en la linea 1

size (500, 500); y debió ser
size(500, 500); un espacio hace la diferencia

Hay un error en la notación de la ruta de entrega tu archivo debió llamarse s03e02LauraColores.pde

*/

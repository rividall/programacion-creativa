/*
errores
0 run
2 programa: negro y blanco
0 sintaxis
0 código
4 variables: posición y tamño ellipse
0 ortografía
1 notación: nombre de archivo
2 github: notación del summary y mensaje
*/
size(400, 400);

background(41, 128, 185);
noStroke();
fill(46, 204, 113);
ellipse(200, 200, 100, 100); //no usaste las variables incluidas en Processing para la posición de la ellipse

/*

Si bien tu programa corre hay pequeños detalles de ortografía que te diferenciarán de una entrega buena a una entrega excelente. 
en el caso de la linea 6 en dónde escribiste:

ellipse(200, 200, 100, 100); y debió estár escrito
ellipse(width/2, height/2, 100, 100); 
de esta manera usas las variables que trae Processing y te aseguras que al cambiar el tamaño del canvas siempre esté centrado
El uso de variables: palabras que tienen asiganado valores numéricos, es lo que haremos constantemente desde las siguientes clases
es muy importante que dirijas el foco a ese tiempo de pensamiento.

Hay un error en la notación de la ruta de entrega tu archivo debió llamarse s03e02MaxColores.pde
*/


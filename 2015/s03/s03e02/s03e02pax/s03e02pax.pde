/*
errores
0 run
1 programa: negro 
0 sintaxis
0 código
2 variables: tamaño ellipse
8 ortografía: espacio entre variables
1 notación: nombre de archivo
2 github: notación del summary y mensaje
*/
size(500,500);
background(6,255,192);
strokeWeight(35);
stroke(255);
fill(232,1,20);
ellipse(width/2,height/2,250,250); //bien en el uso de variables incluidas en Processing para la ubicación de la ellipse.

/*

Si bien tu programa corre hay pequeños detalles de ortografía que te diferenciarán de una entrega buena a una entrega excelente. 
tuviste el mismo error en 4 líneas del programa el 66% 

size(500,500);	y debío estar escrito  
size(500, 500);	un espacio hace la diferencia

background(6,255,192);
background(6, 255, 192); dos espacios

fill(232,1,20);
fill(232, 1, 20); dos más

ellipse(width/2, height/2, 250,250);
ellipse(width/2, height/2, 250, 250); TRES !!!

8 espacios que te faltaron, es como si en la vida real escribierastodojuntosinimportarnada.
Cómo está escrito el código tiene la misma importancia que el resultado gráfico final.

Hay un error en la notación de la ruta de entrega tu archivo debió llamarse s03e02PaxColores.pde

Fuiste la única que en el tamaño de la ellipse uso la mitad del canvas, bien ahí. 
Pero

Hubieras sido ovacionada si la ellipse hubiera estado escrita así
ellipse(width/2, height/2, 250, 250);
ellipse(width/2, height/2, width/2, height/2);

Ya que si querías que la ellipse fuera la mitad del canvas en cualquier momento,
de esta forma cambiando el tamaño del canvas, la ellipse siempre sería la mitad.

*/

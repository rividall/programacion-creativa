/*
errores
0 run
2 programa: negro y blanco
2 sintaxis: funciones opuestas
1 código: funciones comentadas 
2 variables: tamaño ellipse
0 ortografía
1 notación: nombre de archivo
1 github: mensaje
*/
size(400, 400);

background(0, 72, 156);

strokeWeight(4);
stroke(2);
noStroke(); // aquí hay un error de sintaxis, dos líneas antes escribiste funciones para dibujar la línea que ésta función elimina, no deberían estár
fill(103, 155, 53);
//noFill();

ellipse(width/2, height/2, 100, 100);  //bien en el uso de variables incluidas en Processing para la ubicación de la ellipse.


/*

Para las entregas solo se necesita el código necesario,
las líneas de código comentadas sirven para prototipar
y debes borrarlas al momento de la entrega, en el caso de la linea 9 //noFill();


El uso de variables: palabras que tienen asiganado valores numéricos, es lo que haremos constantemente desde las siguientes clases
es muy importante que dirijas el foco a ese tiempo de pensamiento.

Hay un error en la notación de la ruta de entrega tu archivo debió llamarse s03e02IsidoravColores.pde

*/

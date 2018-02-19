/*
errores
1 run: no corre
2 programa: negro y blanco
1 sintaxis: heigth por height
1 código: funciones comentadas
2 variables: tamaño ellipse
0 ortografía
1 notación: nombre de archivo
1 github: notación de summary
*/
size(400, 400);

background(234, 89, 32);

strokeWeight(4);
stroke(2);
noStroke(); // aquí hay un error de sintaxis, dos líneas antes escribiste funciones para dibujar la línea que ésta función elimina, no deberían estár
fill(32, 198, 234);
//noFill();
ellipse(width/2, heigth/2, 100, 100); //bien en el uso de variables incluidas en Processing para la ubicación de la ellipse

/*

Para las entregas solo se necesita el código necesario,
las líneas de código comentadas sirven para prototipar
y debes borrarlas al momento de la entrega, en el caso de la linea 9 //noFill();

Tu código tiene un error de ortografía y no corre, por lo tanto está malo.
El error está en la línea 10 al escribir heigth, la variable es height.
Pequeños detalles que Processing no da por hecho y que debes tener en cuenta en cada línea. 

Debiste correr el programa antes de hacer el commit, un commit hecho con un programa que no corre, invalida la entrega.

Hay un error en la notación de la ruta de entrega tu archivo debió llamarse s03e02AngeColores.pde
*/

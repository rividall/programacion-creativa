/*
errores
0 run
2 programa: negro y blanco
0 sintaxis
1 código: no declara funciones
2 variables: tamaño ellipse
1 ortografía: espacio entre variables
1 notación: nombre de archivo
2 github: notación del summary y mensaje
*/
size(400, 400);

background(69, 119, 232);

fill(232, 182, 71);
ellipse(width/2,height/2, 100, 100); //bien en el uso de variables incluidas en Processing para la ubicación de la ellipse.


/*

Si bien tu programa corre hay pequeños detalles de ortografía que te diferenciarán de una entrega buena a una entrega excelente. 
en el caso de la linea 6 en dónde escribiste:

ellipse(width/2,height/2, 100, 100);  y debío estar escrito
ellipse(width/2, height/2, 100, 100); un espacio hace la diferencia

Otro detalle es al momento de elegir los elementos que tendrían los colores que elegiste,
el fondo tiene un color y la ellipse está llena con el segundo color, 

pero,

el stroke de la ellipse no lo tomaste encuenta, no está declarado stroke(0); y tampoco está eliminado noStroke();

nuevamente, pequeños detalles que Processing no da por hecho y que debes tener en cuenta en cada línea. 

Hay un error en la notación de la ruta de entrega tu archivo debió llamarse s03e02VicenteColores.pde
*/

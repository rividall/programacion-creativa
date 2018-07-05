##### Programación Creativa - UDD

##### 5 de Julio de 2018

## Examen 

#### Funcionamiento del programa 

El programa parte mostrando un **<u>día</u>** del año (Enero 1), para recorrer en todos los días del año se presiona la flecha *RIGHT*, y para recorrer hacia atrás se presiona *LEFT*. Se ven todos los datos menos el evento. Se puede volver a ver presionando '*j*'. 

Para ver los datos por **<u>meses</u>** se presiona '*k*' mostrando el mes Enero. Cada mes tiene una tecla diferente:
Enero: '*1*'
Febrero: '*2*'
Marzo: '*3*'
Abril: '*4*'
Mayo: '*5*'
Junio: '*6*'
Julio: '*7*' 
Agosto: '*8*'
Septiembre: '*9*' 
Octubre: '*0*'
Noviembre: '*q*'
Diciembre: '*w*'

Ahí se mostrarán los datos de Eventos, precipitación, velocidad del viento y ráfaga. Para ver nivel máximo y mínimo del mes, presionar '*s*'. Para ver el nivel máximo y mínimo de humedad, presionar '*d*'. Para volver a ver los primeros 4 datos presionar '*a*'.

Para ver los datos por **<u>trimestres</u>** se presiona '*l*' mostrando el primer trimestre. 
El primer trimestre se ve con '*z*', el segundo con '*x*', el tercero con '*c*' y el cuarto con '*v*'.

Parte mostrando precipitación, viento y ráfaga. Para ver nivel máximo y mínimo del mes, presionar '*s*'. Para ver el nivel máximo y mínimo de humedad, presionar '*d*'. Para volver a ver los primeros 3 datos presionar '*a*'.

#### Referentes

**Meses**

Para mostrar los primeros 4 datos de los meses: Evento (en texto), precipitación (en línea), viento (en tamaño de círculo) y ráfaga (color del círculo). se escogió solo un referente de forma y de color. en el cual los datos partían todos desde el centro y se alejaban de forma radial. Los colores van en escala de grises y el texto en negro. 

Para mostrar los datos de nivel del mar y de humedad, se utilizaron los mismos referentes para forma y otro referente para color. los máximos con azul oscuro y mínimos celeste grisáceo. Las formas para los niveles del mar son rectángulos aplanados y los de humedad son rectángulos delgados y largos. 

**Trimestres** 

Para mostrar los primeros 3 datos de meses se utilizó el mismo referente de los primeros 4 datos de meses, pero forma lineal. Ráfaga se muestra en círculos, los cuales varían su color rosado de acuerdo a los datos. Luego se muestra una línea que es la precipitación y su largo depende del dato. Abajo de eso está el viento, que también es una línea y su largo también depende del dato. 

Para mostrar en nivel del mar se escogió un referente de varios círculos en fila, de diferentes opacidades. El nivel del mar en el programa muestra círculos en donde el máximo es celeste grisáceo y el mínimo es el mismo color pero con opacidad 50%. Para la humedad se escogió el mismo referente, pero son cuadrados en vez de círculos y sus colores van de azul oscuro para el máximo y el mismo azul con opacidad 50% para el mínimo. 

**Días** 

En los días se mostraron todos los datos, menos el evento. No tiene referente de forma ya que se muestra 1 dato de cada fila de la base de datos. 

Los referentes de color son de un concierto de Martin Garrix y de una visualización de datos física. 

El fondo del canvas está dividido en 2 rectángulos el de la izquierda muestra la humedad mínima y el derecho la humedad máxima, varían sus colores para mostrar los datos, cambiando el R de R,G,B, partiendo desde un café de referente. 

Para mostrar la temperatura mínima hay un rectángulo en la esquina inferior izquierda que va creciendo hacia arriba según la temperatura y es de color blanco. También hay un rectángulo que crece de la misma manera, pero en al esquina inferior derecha y es de color gris. 

El máximo y mínimo nivel del mar son rectángulos cortos, que van de un lado al otro del canvas. Su altura depende del dato. El color del máximo es azul grisáceo y el mínimo es celeste grisáceo. 

La precipitación es un rectángulo ancho que parte desde abajo y su altura depende del nivel de precipitación. Es de color amarillo.

Por último, hay una línea que va en el eje "x", desde 0 a height. El eje "y" superior es el dato de ráfaga y el "y" inferior es el dato de viento. Es de color azul oscuro. 















### 
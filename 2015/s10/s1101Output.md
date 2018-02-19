#Guardar imagen(es)  
Existen varios métodos para obtener un archivo desde Processing, podemos escribir archivos txt, csv, xls; así como también podemos crear archivos gráficos como tif, tga, jpg, jpeg, png y pdf. En este caso aprenderemos métodos para archivos gráficos. 

#save( );
El método `save(filename)` se escribe en la última línea dentro de `void draw` para guardar todo lo que está escrito anteriormente **en un sólo archivo**, se debe específicar la extensión del archivo dentro del parámetro  
```{processing}
void draw() {
  ellipse(width/2, height/2, 40, 40);
  save("metodo01-save.png");
}
```
De esta forma dentro de la carpeta del archivo de Processing tendremos un archivo llamado *'metodo01-save.png'*

#saveFrame( );
El Método `saveFrame(filename)` guarda archivos con secuencia numérica cada vez que la función es leída por el programa. Para ir guardando archivos con la secuencia es necesario que en el parámetro de la función especifiquemos cuántos digitos queremos que se escriban en el nombre del archivo. Para esto luego del nombre del archivo se escriben `####` un # por cada dígito y luego la extensión del archivo. La expresión `####` es reemplazada por `frameCount` que es el número de frames que lleva el programa corriendo.

```{processing}
void draw() {
  background(123);
  ellipse(x, height/2, 40, 40);
  x++;
  saveFrame("metodo02-saveFrame####.png");
}
```
Es una buena práctica tener ordenadas las imágenes en otras carpetas, para eso podemos guardar los archivos en donde queramos añadiendo notación dirección `/` para el caso del ejercicio para guardar todos los archivos en una carpeta llamada *'frames'* dentro de la carpeta del archivo, el parámetro queda escrito así `saveFrame("frames/metodo02-saveFrame####.png");`  

#PDF
El método **PDF** tiene las siguientes variantes:
- Un frame (sin pantalla)
- Multiples frames (sin pantalla)
- Un frame (con pantalla)*
- Multiples frames en un archivo (con pantalla)*  
Veremos las últimas dos variantes  

**Un frame desde la pantalla**  
Para ver lo que se dibuja y a la vez guardar, toma más tiempo de procesamiento dependiendo del computador que se tenga  
El primer paso para todos los métodos que usen PDF es ir a la barra de menu **Sketch > Import Libraty… > PDF Export** y nos dejará en la primera línea del programa `import processing.pdf.*;`

Luego debemos especificar el nombre del archivo en `void setup` con la función `beginRecord(PDF, "filename.pdf")` y así como en `save` y `saveFrame` usamos `endRecord()` en la última línea del `void draw`  

```{processing}
import processing.pdf.*;

void setup() {
  size(400, 400);
  beginRecord(PDF, "metodo03-PDF-unFrame.pdf");
}

void draw() {
  background(123);
  ellipse(width/2, height/2, 40, 40);
  endRecord();
}
```  
**Multiples frames en un archivo**  
Similar al método anterior, solamente que ahora la función `endRecord()` la llamamos desde otro lugar, puede ser 
```{processing}
if (frameCount == numero){
  endRecord();
}
```
```{processing}
void keyPressed() {
  if (key == ' ') {
    endRecord();
  }
}
```
```{processing}
void mousePressed() {
  endRecord();
}
```

#Recomendaciones
Para asegurarnos que Processing escribió bien el archivo que hemos creado tenemos que llamar a la función `exit()` después de `save`, `saveFrame`, `endRecord`; así la ventana del canvas se cierrará y tendremos el archivo creado y seguro.

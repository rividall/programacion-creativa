//UDD - Representacion Digital 2
//s04t01cordero
//Rebote Pelotita con FOR
int posX = 0;
int posY = 0;
int speedY= 7;
int speedX = 3;
int c1;
int c2;
float cx;
 
void setup() {
  size(500, 500);
  
  cx = width;
  c1 = color(41, 128, 185);
  c2 = color(46, 204, 113);
}
 
void draw() {
  background(c1);
   noStroke();
   //ellipse color blanco
    for(int i = 0; i < width; i +=20){  //a
        fill(c2);
         rect( i, height/34, random(10), random(50));
         ellipse(posX, posY, 40, 40);
       }
 
  posX = posX + speedX;
  posY = posY + speedY;
 //direccion posicion mas velocidad
    
  if (posX > width) {
    speedX = speedX* -1;
    fill(c2);
    background(c1);
  }
  //ellipse color 1
 
  if (posX < 0) {
    speedX = speedX* -1;
  }
 
  if (posY > height) {
    speedY= speedY* -1;
    
  }
   
  if (posY < 0) {
    speedY= speedY*-1;
  }
  ellipse(posX, posY, 50, 50);
}

/*
errores
 2 integración for: la pelota está dentro del for loop. y afuera 
 1 notación: nuevamente, el archivo con nombre s05e01Max  
 0 github:
 */

for(int i = 0; i < width; i +=20){  //a
        fill(c2);
         rect( i, height/34, random(10), random(50));
         ellipse(posX, posY, 40, 40); // error
       }
error: 
no es necesario que la ellipse que rebota esté dentro del for loop porque los argumentos
que le diste no cambian al ser variables globales y números. 
En ese for loop que escribiste, estás dibujando la ellipse que rebota 25 veces por frame
y no hay cambio. 
Puedes hacer dos cosas:
1.- Si la ellipse no quieres que se afecte por el for loop,
cambiar la ellipse que rebota antes del for loop. o despoés como lo hiciste al final, pero
no repetir, además una es de 50, 50 y la otra de 40, 40 al ser del mismo color, es difícil
notar que hay dos cuando corre el programa.
2.- si quieres que se afecte por el for loop, usar la i dentro de los argumentos de la 
función ellipse
ellipse(posx, posy, 40 + i, 40 + i);
ellipse(posx, posy, i, i);
ellipse(posx, posy, 40, 40 * i);
etc

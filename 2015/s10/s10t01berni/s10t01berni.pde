//UDD - Expresion Digital II
//s10t01Berni
//se muestran los sismos del mundo, por keypressed. aumenta con espacio, disminuye con 'a'

String datos[], dia[] [], s;
PFont f;
color c1, c2, c3;
float tam;
int i;

void setup() {
  size(500, 500);
  smooth();
  c1 = color (255, 255, 255); //color blanco
  c2 = color (6, 252, 252); //color celeste
  c3 = color(255, 0, 98); //color rosado
  f = createFont("AvenirNextCondensed-Heavy", 30);
  s = "SISMOS DEL MUNDO, ÚLTIMOS 30 DÍAS";
  datos = loadStrings("all_month.csv");//archivo con datos
  dia = new String[datos.length][8];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
    println(dia[10][0]);
  }
  tam = float (dia[i][i]);
  i = 0;
}

void draw() {
  background(0);
     textFont(f);
     textSize(30);
     fill(254);
     text(s, 250, 190);
     
     fill(c2);
     textSize(30);
     textAlign(CENTER);
     text(dia[i][0], width/2, height/2);
     float tam = float(dia[i][1]);
     float mtam = map(tam, 0, 40, 0, width); // map funciona con 5 argumentos (variable, rango minimo, rango donde quiero que esten los valores) entre comas
     noFill();
     strokeWeight(2);
     stroke(c3);
     rect(width/15, height/2.5, 435, 70);
  }
  
void keyPressed(){
  if(key == ' '){
    //cambia de dia
    i ++;
  }
  if(key == 'a'){
    i --;
  }
} 

  

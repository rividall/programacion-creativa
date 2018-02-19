String pkm[];
String list[] [];
color n, b, r, v, na, a, az, ro, tot, cc;

PFont f;

int cols, filas, i;

float t;


void setup(){
fullScreen();
  textMode(MODEL);
  
  cols = 37;
  filas = 20;

  n = color(0); //negro
  b = color(230); //blanco
  v = color(120,200,80);//verde
  r = color(255, 0, 0); //rojo
  na = color(240, 128, 48); //naranjo
  a = color(212, 178, 43); //amarillo
  az = color(104, 144, 240); //azul
  ro = color(248, 88, 136); //rosado
  tot = color(198, 198, 167); //color total
  
  cc = v; //cambio color
  
  pkm = loadStrings("Pokedex.csv");
  list = new String[pkm.length] [11];
  
  for (int i=0; i < pkm.length; i++) {
    list[i] = pkm[i].split(",");
  }
  
}

void draw(){
   background(b);
   
  for(int x = 0; x < cols; x++){
    for(int y = 0; y < filas; y++){
      
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      
      int nums = 1+ y + x * filas;  
      
      if((nums >= 1) && (nums <=721)) {
         
  float total = float(list[nums] [4]);
  float hp = float(list[nums] [5]);
  float atk = float(list[nums] [6]);
  float def = float(list[nums] [7]);
  float spatk = float(list[nums] [8]);
  float spdef= float(list[nums] [9]);
  float sp= float(list[nums] [10]);
  
  t = hp;
  
  if (key == 'h'){
    t = hp;
    cc = r;
  }
  
  if (key == 'a'){
    t = atk;
    cc = na;
  }
  
   if (key == 'd'){
    t = def;
    cc = a;
  }
  
   if (key == 'z'){
    t = spatk;
    cc = az;
  }
  
   if (key == 'x'){
    t = spdef;
    cc = v;
  }
  
   if (key == 's'){
    t = sp;
    cc = ro;
  }
  
  pokebola (x1, y1, t, total);
  
      }
    }
  }
}

void keyPressed(){
  
  if( key == 'e'){
    exit();
  }
  
}
    
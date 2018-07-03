// Universidad del Desarrollo, Josefina Hidalgo, Programación Creativa
// Descripción general del programa

ArrayList < Referentes > lista = new ArrayList < Referentes > ();
Referentes r;

//Variables para separar sketchs
int var1 = 1; //AÑO
int var2 = 0; //MES
int var3 = 0; //DIA

void setup() {
    size(1280, 700);
    r = new Referentes();
    lista.add(r);
}

void draw() {
    background(255);
    if (var1 == 1) { //AÑO
        r.NAnual();
        r.anual();
    }

    if (var2 == 1) { //MES
        r.NMes();
        r.mes();
    }

    if (var3 == 1) { //DIA
        r.NDia();
        r.precip();
        r.windSpeed();
        r.evento();
    }
}

void keyPressed() {
    if (key == 'q') { //Sketch anual activado
        var1 = 1;
        var2 = 0;
        var3 = 0;
    }
    if (key == 'w') { //Sketch mes activado
        var1 = 0;
        var2 = 1;
        var3 = 0;
    }
    if (key == 'e') { //Sketch día activado
        var1 = 0;
        var2 = 0;
        var3 = 1;
    }
}

/*
Nombre
Descripción
Uso
*/
Clase z;

int ver;
int index;
float ancho;

boolean a, b, c, d, e, f;

void setup() {
    size(1280, 700);
    z = new Clase(random(40), random(300), random(35));
    ver = 1;
}

void draw() {
    background(255);
    // los parametros se pasan a través de argumentos dentro de los métodos
    z.referentes();
}

void keyPressed() {

    if (key == '1') {
        a = !a;
    }

    if (key == '2') {
        b = !b;
    }

    if (key == '3') {
        c = !c;
    }
    if (key == '4') {
        d = !d;
    }
    if (key == '5') {
        e = !e;
    }
    if (key == '6') {
        f = !f;
    }
}

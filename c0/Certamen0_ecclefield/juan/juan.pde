/* No hay una descripción general de lo que hará, ni como
se usa el programa
*/
//ArrayList<randm> puente =  new ArrayList<randm> (); ??


/////// TODA ESTO ES SOLO PARA EL COLOR //////
ArrayList < Particula > lista = new ArrayList < Particula > ();
Particula p;

int n, m; // descripción de uso

void setup() {
    size(600, 400);
    for (int i = 0; i < 20; i++) {
        p = new Particula(i);
        lista.add(p);
    }
}

void draw() {
    background(255);
    for (Particula a: lista) {
        a.show(n);
        a.mover(m);
        a.denuevo();
    }

    //-------------------------------------------
    // sin uso
    if (frameCount % 60 == 0) { // cuando el resto de la división sea 0
        //  m=int(random(2));
    }
    //-------------------------------------------
}

// descripción de uso
void keyPressed() {
    if (key == '1') {
        n = 1;
    } else if (key == '0') {
        n = 0;
    } else if (key == 'd') {
        m = 0;
    } else if (key == 'i') {
        m = 1;
    }
}

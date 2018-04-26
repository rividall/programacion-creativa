class Particula {
    color[] colores;
    color propioDelObjeto;
    int randomColor;

    //
    float x;
    float y;
    float velx;
    float vely;
    float tamano;

    //
    float tx;
    float ty;
    // centro de la ellipse
    float tpx;
    float tpy;
    //
    int op = 350;

    Particula(int i) {
        this.randomColor = int(random(3)); // hara un random entre los 3 colores que hay
        colores = new color[3]; //el numero es la cantidad que sale en i<3
        colores[0] = color(0, 88, 94);
        colores[1] = color(0, 148, 148);
        colores[2] = color(69, 68, 69);
        propioDelObjeto = color(127);


        x = 400;
        y = 0;
        //x= width/2;
        //y= height/2;

        velx = random(-6, 0); // se define la velocidad con la que nace cada burbuja
        vely = random(-3, 9); // se define la velocidad con la que nace cada burbuja

        x += velx;
        y += vely;
        tamano = random(10, 30);
        x = i * 25 + 100; //posicion de x
    }

    void show() {
        fill(colores[randomColor]);
        ellipse(x, y, tamano, tamano);
    }



    void mover() {
        x += velx;
        y += vely;
    }

    void denuevo() {
        if (x > width + 200 || x < 0 || y > height - 49) {

            x = 850;
            y = 30;
            // x = width/2;
            // y = height/2;
            tamano = random(10, 30);
            propioDelObjeto = colores[int(random(3))];
        }
    }

    void forma() {
        noStroke();
        fill(255, 87, 41, op);
        ellipse(x, y, tx, ty);
        op = op - 7;
        if (op <= -10) {
            op = 351;
        }
    }

    void crecimiento() {
        tx = tx + 2;
        ty = ty + 2;

        if (tx > 100) {
            tx = 0;
            ty = 0;
        }
    }

    void segform() {

        tamano = random(10, 30);

    }



}

class Particula {
    color[] colores;
    color propioDelObjeto;
    int randomColor; //variable de color

    float x;
    float y;
    float velx;
    float vely;
    float tamano;
    //variables

    Particula(int i) {
        this.randomColor = int(random(3));
        colores = new color[3];
        colores[0] = color(167, 234, 228, 175);
        colores[1] = color(101, 203, 214, 175);
        colores[2] = color(38, 122, 191, 175);
        propioDelObjeto = color(127);

        x = random(width);
        y = 700;
        velx = random(0, 10);
        vely = random(-10, 10);
        x += velx;
        y += vely;
        //valores

        tamano = random(10, 50);
    } //variable tamaño de elipses

	// éste método no tiene modificadores externos
    void show(int eleccion) {
        if (eleccion == 0) {
            noStroke();
            fill(colores[randomColor]);
            ellipse(x, y, tamano, tamano);
        } //mostrar elipses
    }
    void move(int eleccion) {
        if (eleccion == 0) {
            y += vely;
        } //elipses se mueven hacia arriba
        if (eleccion == 1) {
            y += vely;
            x += random(1, 5);
        } //elipses se mueven hacia arriba diagonal derecha
        if (eleccion == 2) {
            y += vely;
            x -= random(1, 5);
        } //elipses se mueven hacia arriba diagonal izquierda
    }

    void again() {
        if (x > width || x < 0 || y < 0) {
            x = random(width);
            y = 700;
            tamano = random(10, 50);
            propioDelObjeto = colores[int(random(3))];
        } //repetir proceso infinitamente
    }
}

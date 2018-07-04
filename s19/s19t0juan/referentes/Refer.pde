class Refer {
    int i;
    float var;
    float col1;
    float col2;

    Refer(int i, float var, boolean formas) {
        //this.dia = dia;
        this.i = i;
        this.var = var;
        this.col1 = col1;
        this.col2 = col2;

    }
    void coloruno() {
        float xo = map(i, 0, 365, 0, width);
        float col1 = map(var, 20, 36, 0, 255); // Mapeo
        noStroke();
        fill(col1, 150, 150);
        rect(xo, 300, 2.5, 100);
        fill(col1, 50, 100);
        rect(xo, 450, 2.5, 100);
        fill(col1, 150, 150);
        ellipse(xo, 300, 2.5, 50);
        fill(col1, 50, 100);
        ellipse(xo + 1, 450, 4, 4);
        ellipse(xo + 1, 550, 4, 4);
    }

    void colordos() {
        float xo = map(i, 0, 365, 0, width);
        float col1 = map(var, 20, 36, 0, 255); // Mapeo
        noStroke();
        fill(col1, 150, 150, col1);
        rect(xo, 600, 2.5, 100);
    }


    void formauno() {
        fill(150, 150, 255);
        noStroke();
        float xo = map(i, 0, 365, 0, width); // Mapeo
        float ty = map(var, 20, 36, 20, 100); // Mapeo

        rect(xo, 350, 2, ty);
    }

    void formados() {
        float xo = map(i, 0, 365, 0, width);
        float ty = map(var, 20, 36, 20, 100); // Mapeo
        float tyex = map(var, 20, 36, 50, 150); // Mapeo
        float typlus = map(var, 20, 36, 80, 120); // Mapeo

        fill(0);
        rect(xo, 500, 2, tyex);
        fill(150, 150, 255);
        rect(xo, 500, 2, ty);
        fill(255, 0, 0);
        ellipse(xo, ty + 500, 3, 3);

    }

    void formatres() {
        float xo = map(i, 0, 365, 0, width);
        float ty = map(var, 20, 36, 20, 100); // Mapeo
        float tyex = map(var, 20, 36, 50, 150); // Mapeo
        float typlus = map(var, 20, 36, 80, 120); // Mapeo
        fill(150, 150, 255);
        rect(xo, typlus, 2, ty);
        fill(255, 0, 0);
        ellipse(xo, typlus, 3, 3);
        ellipse(xo, ty + 100, 3, 3);

    }

    void diag() {
        diagramacion();
        diagramacion2();
    }

    void diagramacion() {
        float tyex = map(var, 20, 36, 100, 150);
        pushMatrix();
        fill(250, 150, 150);
        translate(width / 2, height / 2);
        rotate(radians(i + 180));
        noStroke();
        rect(0, 250, 2, tyex);
        popMatrix();


    }
    void diagramacion2() {
        float tyex = map(var, 20, 36, 50, 70);
        float ty = map(var, 20, 36, 50, 150);

        pushMatrix();

        fill(0, 150, 150);
        translate(width / 2, height / 2);
        rotate(radians(i));
        noStroke();
        strokeWeight(2);
        rect(0, 150, 2, tyex);
        rect(0, 250, 2, ty);

        popMatrix();
    }



}

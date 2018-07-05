class Clase {
    String dia;
    float maxTemp, minTemp, maxHum, minHum, temp, tam;
    PFont font;
    int event, index, mes;
    color h;
    int r = 200;

    Clase(int mes, String dia, int maxTemp, int minTemp, int maxHum, int minHum, int event, int index) {
        this.index = index;
        this.mes = mes;
        this.dia = dia;
        this.maxTemp = map(maxTemp, 29, 36, 50, 150);
        this.minTemp = map(minTemp, 21, 28, 50, 150);
        this.maxHum = map(maxHum, 94, 100, 20, 70);
        this.minHum = map(minHum, 23, 74, 0, 50);
        // si no se usará la variable, no se escribe
        //tam = this.maxtemp;
        font = createFont("Calibri-Bold", 32);
    }

    /*
    Comentarios en todos los bloques de código
    */
    void anual() {
        noLoop();

        pushMatrix();

        translate(width / 2, height / 2);
        rotate(radians(index * 360 / 365));

        stroke(255, 255, 0); //Amarillo
        strokeWeight(1);
        line(r, 0, r - minTemp, 0);

        stroke(255, 100, 0); //Naranjo
        strokeWeight(1);
        line(r, 0, r + maxTemp, 0);

        noStroke();
        fill(#94F2EF, 75);
        ellipse (r, r+minHum, maxHum, maxHum);

        popMatrix();
    }
}

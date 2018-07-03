class Referentes {
    PFont font;
    color[] colores;
    float x;
    float y;


    Referentes() {
        font = createFont("Arial-Bold", 32);
        colores = new color[11]; //lista de colores
        colores[0] = color(242, 169, 146); //tempMax
        colores[1] = color(151, 198, 203); //tempMin
        colores[2] = color(48, 91, 128); //maxHum
        colores[3] = color(29, 56, 78); //minHum
        colores[4] = color(122, 46, 84, 68); //clCover
        colores[5] = color(118, 170, 219, 50); //precipitation
        colores[6] = color(209, 126, 160); //rain
        colores[7] = color(79, 32, 26); //fog
        colores[8] = color(146, 119, 45); //snow
        colores[9] = color(202, 95, 68); //thundestorm
        colores[10] = color(0); //texto

    }

    void anual() {
        translate(width / 2, height / 2);
        for (int i = 0; i < 12; i++) {
            rotate(radians(360 / 12));
            fill(colores[0]);
            noStroke();
            triangle(-25, -150, 25, -150, 0, -350);
            fill(colores[1]);
            noStroke();
            triangle(-25, -150, 25, -150, 0, -200);
        }
    }

    void NAnual() {
        textSize(45);
        fill(colores[10]);
        text("2015", width / 2 - 50, height / 2 + 15);
    }

    void mes() {
        for (float i = 0.5; i < 31; i++) {
            fill(colores[4]);
            ellipse(i * width / 30, height / 2, 25, 25);
            noStroke();
            fill(colores[2]);
            rect(i * width / 30, (height / 2) - 15, 4, -100);
            fill(colores[3]);
            rect(i * width / 30 - 6, (height / 2) - 15, 4, -150);
        }
    }

    void NMes() {
        background(255);
        textSize(45);
        fill(colores[10]);
        text("Mes", width / 2 - 20, 600);
    }

    void precip() {
        fill(colores[5]);
        noStroke();
        rect(0, 700, width, -500); //heigth (-500) es random según precipitationmm
    }

    void windSpeed() {
        fill(colores[10]);
        triangle(0, height / 2 + 40, 0, height / 2 - 40, 800, height / 2); //valor 800 será reemplazado por wind speed
    }

    void evento() {
        fill(colores[6]);
        ellipse(160 * 3 - 80, height / 12, 100, 100); //rain
        fill(colores[7]);
        ellipse(160 * 4 - 80, height / 12, 100, 100); //fog
        fill(colores[8]);
        ellipse(160 * 5 - 80, height / 12, 100, 100); //snow
        fill(colores[9]);
        ellipse(160 * 6 - 80, height / 12, 100, 100); //thunderstorm
    }

    void NDia() {
        background(255);
        textSize(45);
        fill(colores[10]);
        text("Marzo 1", 40, 60);
    }
}

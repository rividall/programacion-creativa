/*
Nombre
Descripción
Uso
*/
Table table;
Refer[] bubbles;
boolean formas, colores, diagramacion, segn;


int limX = 690;
int limY = 100;
int limY2 = 200;
int limX2 = 820;
// boton 2
int flimX = 770;
int flimY = 150;
int flimY2 = 400;
int flimX2 = 870;
// boton 3
int mlimX = 800;
int mlimY = 250;
int mlimY2 = 350;
int mlimX2 = 990;
// boton 4
int alimX = 800;
int alimY = 450;
int alimY2 = 550;
int alimX2 = 990;
//boton 5
int malimX = 720;
int malimY = 550;
int malimY2 = 650;
int malimX2 = 890;
//boton 6
int jlimX = 690;
int jlimY = 590;
int jlimY2 = 750;
int jlimX2 = 820;
//boton 6
int jllimX = 590;
int jllimY = 620;
int jllimY2 = 720;
int jllimX2 = 650;

int mSt, mEnd;

float a = random(10, 100);

void setup() {
    size(1420, 900);
    table = loadTable("Data_miami_juan.csv", "header");
    bubbles = new Refer[table.getRowCount()];

    for (int i = 0; i < table.getRowCount(); i++) {

        TableRow row = table.getRow(i);
        float dia = row.getFloat("D");
        float x = row.getFloat("maxTemp");
        float y = row.getFloat("proTemp");
        float d = row.getFloat("minTemp");

        bubbles[i] = new Refer(i, x, formas);
    }


}

void draw() {

    background(255);

    for (int i = 0; i < bubbles.length; i++) {
        if (formas) {
            bubbles[i].formauno();
            bubbles[i].formados();
            bubbles[i].formatres();
        }


        if (diagramacion) {
            bubbles[i].diagramacion2();
        }


        if (colores) {
            bubbles[i].coloruno();
            bubbles[i].colordos();
        }


    }


    for (int i = mSt; i < mEnd; i++) {
        bubbles[i].diagramacion();
    }

    /*
    Todo esto debe estar dentro el for loop anterior
    */
    if (mouseX > limX && mouseY > limY && mouseX < limX2 && mouseY < limY2) {
        mSt = 0;
        mEnd = 30;
    }
    if (mouseX > flimX && mouseY > flimY && mouseX < flimX2 && mouseY < flimY2) {
        mSt = 31;
        mEnd = 59;
    }
    if (mouseX > mlimX && mouseY > mlimY && mouseX < mlimX2 && mouseY < mlimY2) {
        mSt = 60;
        mEnd = 90;
    }

    if (mouseX > alimX && mouseY > alimY && mouseX < alimX2 && mouseY < alimY2) {
        mSt = 91;
        mEnd = 120;
    }

    if (mouseX > malimX && mouseY > malimY && mouseX < malimX2 && mouseY < malimY2) {
        mSt = 121;
        mEnd = 150;
    }

    if (mouseX > jlimX && mouseY > jlimY && mouseX < jlimX2 && mouseY < jlimY2) {
        mSt = 151;
        mEnd = 180;
    }

    if (mouseX > jllimX && mouseY > jllimY && mouseX < jllimX2 && mouseY < jllimY2) {
        mSt = 181;
        mEnd = 210;
    }

}

void keyPressed() {
    if (key == '1') {
        formas = !formas;
    }
    if (key == '2') {
        colores = !colores;
    }
    if (key == '3') {
        diagramacion = !diagramacion;
    }
    if (key == '4') {
        segn = !segn;
    }
}

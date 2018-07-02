class Bruss {
  String mes, dia;
  float tempMax, tempMin, maxHum, minHum, maxSea, minSea, maxWind, maxGust,
  preci, eve, i;
  color[] colores;

  //hacer float con todos los int para que al ser llamados en this.dia por ej,
  // sea un float. además los map no se pueden utilizar con int.
  PFont font;

  Bruss(String dia, String mes, int tempMax, int tempMin, int maxHum,
    int minHum, int maxSea, int minSea, int maxWind, int maxGust,
    int preci, int eve, int i) {
    colores = new color[12];
    colores[0] = color(33, 25, 21); // evento
    colores[1] = color(68, 66, 66); // precipitación
    colores[2] = color(9, 6, 10); // rafaga de este
    colores[3] = color(156, 159, 162); // a este
    colores[4] = color(62, 99, 127); // max mar
    colores[5] = color(62, 120, 189); // min mar
    colores[6] = color(153, 137, 124); // hum max
    colores[7] = color(210, 174, 110); // hum min
    colores[8] = color(243, 241, 241); // color de fondo
    colores[9] = color(74, 114, 178); // viento
    colores[10] = color(217, 201, 215); // rafaga de este a
    colores[11] = color(217, 116, 215); // a este

    //HACER LERPCOLOR PARA LAS RAFAGAS.
    this.dia = dia;
    this.mes = mes;
    this.tempMax = map(tempMax, -4, 34, 0, 255); // todas las categorias deben
    //tener los mismos datos minimos y maximos.
    this.tempMin = map(tempMin, -4, 34, 0, 255);
    this.maxHum = map(maxHum, 5, 100, 0, 700);
    this.minHum = map(minHum, 5, 100, 0, 700);
    this.maxSea = map(maxSea, 973, 1042, 0, 255);
    this.minSea = map(minSea, 973, 1042, 0, 255);
    this.maxWind = map(maxWind, 8, 55, 0, 255);
    this.maxGust = map(maxGust, 26, 84, 0, 255);
    this.preci = map(preci, 0, 21, 0, 255);
    font = createFont("Calibri-Bold", 32);
  }

  // agrupación de métodos de forma y texto
  void funcion() {
    humedadMes();
    txt();
  }

  // crea una elipse con diámetro de temperatura máxima
  void dato() {
    stroke(255);
    strokeWeight(2);
    fill(255, 255, tempMin);
    ellipse(width / 2, height * .5, tempMax, tempMax);

  }

  void porDia() {
    fill(colores[0]);
    textFont(font);
    text("Evento", 650, 50);
    textSize(20);
    stroke(colores[1]);
    line(700, 100, 700, preci);
    stroke(colores[9]);
    line(700, preci + 10, 700, maxWind + preci + 10);
    fill(0, 0, maxGust); // hay un problema con el color en maxGust por que los valores
    //son muy pequeños.
    noStroke();
    fill(colores[11]);
    ellipse(700, preci + maxWind + 10, 10, 10);
  }

  // muestra en texto el mes y el día
  void txt() {
    fill(255);
    textFont(font);

    text("Enero", width * .1, height * .1);
    textSize(55);
    text(dia, width * .1, height * .2);
  }
void mesesCorriendo(){
	if	(index <=30){
  text("Enero", 20,20);
	textSize(30);
	text (dia, 50, 20);
	}
	if	(index > 30 && <= 58){
		//hacer lo mismo de enero con todos los meses
	}
	if	(int mar = 59; mar <= 89; mar++){
		TableRow marzo = tabla.getRow(mar);
	}
	if	(int abr = 90; abr <= 119; abr++){
		TableRow abril = tabla.getRow(abr);
	}
	if	(int may = 120; may <= 150; may++){
		TableRow mayo = tabla.getRow(may);
	}
	if	(int jun = 151; jun <= 180; jun++){
		TableRow junio = tabla.getRow(jun);
	}
	if	(int jul = 181; jul <= 211; jul++){
		TableRow julio = tabla.getRow(jul);
	}
	if	(int ago = 212; ago <= 242; ago++){
		TableRow agosto = tabla.getRow(ago);
	}
	if	(int sep = 243; sep <= 272; sep++){
		TableRow septiembre = tabla.getRow(sep);
	}
	if	(int oct = 273; oct <= 303; oct++){
		TableRow octubre = tabla.getRow(oct);
	}
	if	(int nov = 304; nov <= 333; nov++){
		TableRow noviembre = tabla.getRow(nov);
	}
	if	(int dic = 334; dic <= 364; dic++){
		TableRow diciembre = tabla.getRow(dic);
	}
}

  void humedadMes() {

    noStroke();
    fill(colores[6]);
    rect(10, maxHum, 10, 10);
		fill(colores[7]);
		rect(10, minHum, 10, 10);
  }









}

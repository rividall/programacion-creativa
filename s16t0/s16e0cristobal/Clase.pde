class Clase {
	String mes, dia;
	float maxima, minima, temp;
	PFont font;

	Clase(String mes, String dia, int maxima,int media, int minima) {
		this.mes = mes;
		this.dia = dia;
		this.maxima = map(maxima, 27, 34, 0, 255);
		this.minima = map(minima, 20, 24, 0, 255);
		this.temp = this.maxima;
		font = createFont("Calibri-Bold", 32);
	}

    // agrupación de métodos de forma y texto
	void funcion(int index) {
		dato();
		txt(index);
	}

    // crea una elipse con diámetro de temperatura máxima
	void dato() {
		stroke(0);
		strokeWeight(2);
		fill( minima);
		ellipse(width / 2, height * .5, temp, temp);
	}

    // muestra en texto el mes y el día
	void txt(int index) {

		fill(255);
		textFont(font);
   	if (index <= 30 ){
			text("Enero", width * .1, height * .1);
			textSize(55);
			text(dia, width * .1, height * .2);
  	}else if (index > 30 && index <=58 ){
			text("Febrero", width * .1, height * .1);
			textSize(55);
			text(dia, width * .1, height * .2);
		}else if( index > 58 && index <= 89){
			text("Marzo", width * .1, height * .1);
			textSize(55);
			text(dia, width * .1, height * .2);
		}else if( index > 89 && index <= 119){
			text("Abril", width * .1, height * .1);
			textSize(55);
			text(dia, width * .1, height * .2);
		}else if( index > 119 && index <= 150){
			text("Mayo", width * .1, height * .1);
			textSize(55);
			text(dia, width * .1, height * .2);
		}else if( index > 150 && index <= 180){
			text("Junio", width * .1, height * .1);
			textSize(55);
			text(dia, width * .1, height * .2);
		}else if( index > 180 && index <= 211){
      text("Julio", width * .1, height * .1);
      textSize(55);
      text(dia, width * .1,height * .2);
    }else if(index >211 && index <= 242){
      text("Agosto", width * .1, height * .1);
      textSize(55);
      text(dia, width *.1, height * .2);
    }else if( index > 242 && index <= 272){
      text("Septiembre", width * .1, height * .1);
      textSize(55);
      text(dia, width *.1, height * .2);
    }else if(index > 272 && index <=303){
      text("Octubre", width * .1, height * .1);
      textSize(55);
      text(dia, width *.1, height * .2);
    }else if(index > 303 && index <= 333){
      text("Noviembre", width * .1, height * .1);
      textSize(55);
      text(dia, width *.1, height * .2);
    }else if(index > 333 && index <= 364 ){
      text("Diciembre", width * .1, height * .1);
      textSize(55);
      text(dia, width *.1, height * .2);
    }
 }
}

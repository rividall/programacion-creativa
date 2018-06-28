class Clase {
	String mes, dia;
	float maxima, minima, temp,media;
	float humedadmin,humedadmax,humedadmedia,	promedioanualtmax, promedioanualtmin,promtmeanmes, dirViento, dewmax,dewmean, dewmin, meanviento;
	PFont font;
	float r;
	float proman;
	int totdias;

	Clase(String mes, String dia, float maxima,float media, float minima, float minHum, float maxHum, float meanHum, float promanualtmax, float promanualtmin, float promtmeanmes,float dirViento,float dewmax, float dewmean, float dewmin, float meanviento) {
		this.mes = mes;
		this.dia = dia;
		this.maxima = map(maxima, 27, 34, 0, 255);
		this.minima = map(minima, 20, 24, 0, 255);
		this.temp = this.maxima;
		this.media = media;
		this.humedadmax = maxHum ;
		this.humedadmin = minHum;
		this.humedadmedia = meanHum;
		this.promedioanualtmax = promanualtmax;
		this.promedioanualtmin = promanualtmin;
		this.promtmeanmes = promtmeanmes;
		this.dewmax = dewmax;
		this.dewmean = dewmean;
		this.dewmin	 = dewmin;
		this.dirViento = dirViento;
		this.meanviento = meanviento;


		font = createFont("Calibri-Bold", 32);
    proman = (maxima + minima)/2;
		totdias = 365;
	}

    // agrupación de métodos de forma y texto
	void funcion(int index) {
  	//dato();
		//meses();
		dias();
		txt(index);
	}

    // crea una elipse con diámetro de temperatura máxima
	void dato() {
		pushMatrix();
		translate(width/2,height/2);
		for(int e= 0; e < totdias; e++ ){
		rotate(radians(index* 360/totdias));
		//ellipse(proman*4,proman*4,10,10);
		stroke(0,255,0);
		line(0,0,(proman*e)/40,(proman*e)/40);
    //ellipse(proman * e, proman *e, 10,10);
		}
		popMatrix();

	//	ellipse(width / 2, height * .5, temp, temp);
	}

	void meses(){
		pushMatrix();
		rotate(r);
		ellipse(dirViento,dirViento, dewmean,dewmean);
		popMatrix();
	}
	void dias() {
		pushMatrix();
		translate(width/2,height/2);

		for(int e= 0; e < totdias; e++ ){
		rotate(radians(index* 360/dirViento));
		//ellipse(proman*4,proman*4,10,10);
		stroke(0,255,100);
	    fill(255, 0,0);
			ellipse((dewmax*e)/25,(dewmax*e)/25, dewmean,dewmean);
			fill(0,255,0);
			ellipse((dewmin*e)/25,(dewmin*e)/25, dewmean,dewmean);

		}
		popMatrix();
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

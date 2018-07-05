// Nombre, carrera, mención, año

/*
La visualización de datos se representa en 3 niveles, para acceder a ellos se usan
las teclas "p"(datos anuales), "m" (datos mensuales) y "w"(datos por días).
En el primero se visualiza las temperaturas promedio de cada día durante un año.
Se ven representados en lineas (una por día), el largo de la linea indica la temperatura promedio.
Se muestran 4 colores distintos los cuales muestran si se dan ciertos eventos esos días, el verde
muestra los días en que no ocurrió ningún evento,
el azul indica que esos dias hubo lluvia, el rojo indica la presencia de neblina y por último el
magenta muestra cuando hubo lluvia y neblina simultaneamene.
posee un funcionamiento de navegacion en base al desplazamiento del mouse por el eje x, en donde
se van añadiendo dias dependiendo de la posición.
El background indica con colores  en que estación del año se esta visualizando.
*/

Clase[] objetos;
Table tabla;
int index;
boolean years= false;
boolean months = false;
boolean days = false;
float n;
void setup() {
	size(1280, 700);
	tabla = loadTable("Basedatosvaldivia.csv", "header");

	int total = tabla.getRowCount();
	objetos = new Clase[total];



	for (int i = 0; i < tabla.getRowCount(); i++) {
		TableRow row = tabla.getRow(i);

		String mes = row.getString("M");
		String dia = row.getString("D");
		int maxima = row.getInt("Max TemperatureC");
		int media = row.getInt("Mean TemperatureC");
		int minima = row.getInt("Min TemperatureC");
		int minHum = row.getInt("Min Humidity");
		int maxHum = row.getInt("Max Humidity");
		int meanHum = row.getInt("Mean Humidity");
		int promanualtmax = row.getInt("PromATmax");
		int promanualtmin = row.getInt("promATmin");
		int promhummes = row.getInt("promhumes");
		int promtmeanmes = row.getInt("promtmeanmes");
 		int dirViento = row.getInt("WindDirDegrees");
		int dewmax = row.getInt("Dew PointC");
		int dewmean = row.getInt("MeanDew PointC");
		int dewmin = row.getInt("Min DewpointC");
		int meanviento = row.getInt("Mean Wind SpeedKm/h");
		int evento = row.getInt("Events");
		float tmaxmes = row.getFloat("maxtmes");
		float tminmes = row.getFloat("mintmes");

		// Con esas variables construyo un objeto
		objetos[i] = new Clase(mes, dia, maxima, media, minima,minHum, maxHum, meanHum,promanualtmax,promanualtmin, promtmeanmes, dirViento, dewmax, dewmean, dewmin, meanviento, evento,tmaxmes,tminmes);
	}
	// String[] fontList = PFont.list();
	// printArray(fontList);
	background(253);
}

void draw() {
	background(0,220,0);
	//el background cambia según la estacion del año en la que se encuentre el dato
	// Uso de los objetos como siempre
	if(years == true){
		if(n<=80 || n >356){background(255,255,0);text("Verano",(width/2)-100,670); textSize(30);}
		else if(n>80 && n <=173 ){background(255,153,0); text("Otoño",(width/2)-100,670); textSize(30);}
		else if(n >173 && n<=267){background(0,180,255);text("Invierno",(width/2)-100,670); textSize(30);}
		else if(n > 267 && n<= 356){background(0,255,255);text("Primavera",(width/2)-100,670); textSize(30);}
		text("Verde -> Ningún evento",width-400,height -200);
		text("Azul -> LLuvia",width-400,height -150);
		text("Rojo -> Neblina",width-400, height -100);
		text("Magenta -> Neblina-LLuvia", width-400,height-50);
		textSize(10);
		n=map(mouseX,0,width,0,365);//navegación eje x
	 if(mouseY<height){ index=int(n);}
	 for (int i = 0; i <n; i ++) {
	  objetos[i].funcion(i);

	 }
 } else if (months == true){
	 for (int b = 0; b < 10;b++){
		 objetos[b].meses();
	 }
 }else if(days == true){
		 objetos[index].dias(index);
		 	textSize(20);
			text("Barra espacio para reiniciar contador de días",width/3+60,25);
		 text("Rojo -> Máximo rocío",width-400, height -100);
 		text("Azul -> Mínimo rocío", width-400,height-50);
	 	textSize(10);
 }else {text("Valdivia - Chile",width/3-60,height/2);textSize(20);text("p = anual - m = mensual - w = diario",width/3+70,height/2+80); textSize(80);}
}

void keyPressed() {
	if(key == 'p'){ years = !years;}
	if(key == 'm'){ months = !months;}
	if(key == 'w'){days = !days;}
  if(key == ' '){index = -1;}
		if(index > 365) {
        index = 0;
    } else if (index < 365){
        index++;
    }

}

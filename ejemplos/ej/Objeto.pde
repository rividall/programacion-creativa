class Objeto {
	float x, y, velx, vely;
	float tam;

	Objeto(float x, float y, float tam) {
		this.x = x;
		this.y = y;
		this.tam = tam;
		this.velx = 3;
	}

	// Elipse negra
	void forma() {
        noStroke();
		fill(51);
		ellipse(x, y, tam, tam);
	}
	// mov
	void mov() {
		// borde
		x += velx;
		y += vely;
	}

	// borde derecho
	void borde(){
		if(x > width){x = 0;}
	}
}

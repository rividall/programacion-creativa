class Objeto {
    // Variables
    float x, y, r, angulo, velangulo;
	int i, espacio;

    Objeto(int i) {
        // Inicialize the variables
        noStroke();
        fill(51);
		this.i = i;
		this.espacio = 15;
		// la variable de velangulo es cada vez más grande en el constructor
		// así se almacena un valor alto para la Posición distante del centro
		// que está modificada por i en setup()
		this.velangulo = i * 0.01;
    }

    //  Círculo
    void cir() {
        ellipse(x, y, 10, 10);
    }

    // Posición en cordenadas polares
    void pos() {
        r = i * espacio;
        x = r * cos(angulo);
        y = r * sin(angulo);
    }

	// Movimiento de variables de ángulo
	void movimientoAngular( ) {
		angulo += velangulo;
	}
}

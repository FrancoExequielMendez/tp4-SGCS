Proceso EncriptarDesencriptarDatos
	Escribir "Seleccione una opción:"
    Escribir "1. Encriptar datos"
    Escribir "2. Desencriptar datos"
    Leer opcion
	
	Si opcion = 1 Entonces
		Escribir "Introduce un entero de cuatro dígitos: ";
		Leer num;
		temp = num;
		d1 = temp / 1000;
		temp = temp - (d1 * 1000);
		d2 = temp / 100;
		temp = temp - (d2 * 100);
		d3 = temp / 10;
		temp = temp - (d3 * 10);
		d4 = temp;
		
		d1 = (d1 + 7) mod 10;
		d2 = (d2 + 7) mod 10;
		d3 = (d3 + 7) mod 10;
		d4 = (d4 + 7) mod 10;
		
		Escribir "El entero encriptado es: ", d3 * 1000 + d4 * 100 + d1 * 10 + d2;


	SiNo
		Si opcion = 2 Entonces
			Escribir "Introduce un entero encriptado de cuatro dígitos: ";
			Leer numB;
			temp = numB;
			d3B = temp / 1000;
			temp = temp - (d3B * 1000);
			d4B = temp / 100;
			temp = temp - (d4 * 100);
			d1B = temp / 10;
			temp = temp - (d1B * 10);
			d2B = temp;
			
			Si (d1B >= 7) Entonces
				d1B = (d1B - 7);
			SiNo
				d1B = (d1B + 3);
			FinSi
			
			Si (d2B >= 7) Entonces
				d2B = (d2B - 7);
			SiNo
				d2B = (d2B + 3);
			FinSi
			
			Si (d3B >= 7) Entonces
				d3B = (d3B - 7);
			SiNo
				d3B = (d3B + 3);
			FinSi
			
			Si (d4B >= 7) Entonces
				d4B = (d4B - 7);
			SiNo
				d4B = (d4B + 3);
			FinSi
			
			Escribir "El número original es: ", d1B * 1000 + d2B * 100 + d3B * 10 + d4B;
		Sino
			Escribir "Opción inválida. Por favor, seleccione 1 o 2."
		FinSi
	FinSi
FinProceso

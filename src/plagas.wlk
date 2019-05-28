

class Cucarachas { 
	var property poblacion = 0 
	var property pesoPromedio 
	
	method nivelDeDanio() { return poblacion/2 }
	method enfermedadesQueTransmiten() { 
		return poblacion > 10 and pesoPromedio >= 10
	}
	method atacaA(elemento) { pesoPromedio += 2 }
}

class Pulgas {
	var property poblacion = 0
	method nivelDeDanio() { return poblacion*2 }
	method enfermedadesQueTransmiten() { return poblacion >= 10 }
}

class Garrapatas {
	var property poblacion = 0
	
	method nivelDeDanio() { return poblacion*2 }
	method enfermedadesQueTransmiten() { return poblacion >= 10 }
	method atacaA() { poblacion += 0.20}
}

class Mosquitos {
	var property poblacion = 0
	
	method nivelDeDanio() { return poblacion }
	method enfermedadesQueTransmiten() {
		return poblacion > 10 and poblacion % 3 == 0
	}
	
}

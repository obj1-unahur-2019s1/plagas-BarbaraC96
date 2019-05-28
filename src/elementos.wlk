
class Hogar {
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno() { return nivelDeMugre <= (confort/2) }
	
	method esAtacadoPor(plaga){ nivelDeMugre += plaga.nivelDeDanio() }
}

object nivelDeHuerta {
	var property nivelSolicitado = 100
}

class Huerta {
	var property capacidadDeProduccion = 0
	 
	method esBueno() { return capacidadDeProduccion>nivelDeHuerta.nivelSolicitado()}
	
	method esAtacadoPor(plaga){
    	if (plaga.transmiteEnfermedad()) {
    		capacidadDeProduccion -= ( plaga.nivelDeDanio() - 10) }
    		else capacidadDeProduccion -= (0.10 * plaga.nivelDeDanio()) }
    
}

class Mascota {
	var property nivelDeSalud = 0
	
	method esBueno() { return nivelDeSalud > 250 }
	
	method esAtacadoPor(plaga){
    	if (plaga.transmiteEnfermedad()){
    		nivelDeSalud -= plaga.nivelDeDanio()} else {}
    }
}

class Barrios {
	var elementos = #{}

    method agregarElemento(elemento) { elementos.add(elemento); }
	method agregarElementos(elemento) { elementos.addAll(elemento); }
 	method elementosBuenos() {
 		return elementos.filter({elemento => elemento.esBueno() })
	}

	method elementosMalos() {
		return elementos.filter({elemento => not elemento.esBueno() })
    }
 
	method esCopado() {
		return self.elementosBuenos().size() > self.elementosMalos().size()
	}
	
}

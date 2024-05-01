object registroProduccion {
	const registroDePiezas = new List()
	
	method agregarAlRegistro(unosRegistros){
		registroDePiezas.addAll(unosRegistros)
	}
	
	method algunDiaSeProdujo(cantidad){
		return registroDePiezas.contains(cantidad)
	}
	method maximoValorDeProduccion(){
		return registroDePiezas.max()
	}
	method valoresDeProduccionPares(){
		return registroDePiezas.filter({unElemento => unElemento.even()})
	}
	method produccionEsAcotada(n1,n2){
		return registroDePiezas.all({unElemento => unElemento.between(n1,n2)})
	}
	method produccionesSuperioresA(cuanto){
		return registroDePiezas.filter({unElemento => unElemento > cuanto})
	}
	method produccionesSumando(n){
		return registroDePiezas.map({unElemento => unElemento + n})
	}
	method totalProducido(){
		return registroDePiezas.sum()
	}
	method ultimoValorDeProduccion(){
		return registroDePiezas.last()
	}
	method cantidadProduccionesMayorALaPrimera(){
		return registroDePiezas.count({unElemento => unElemento > registroDePiezas.first()})
	}
}

class Legion {
	var integrantes = []
	
	constructor(chico1,chico2){
		integrantes.add(chico1)
		integrantes.add(chico2)
	}
	method capacidadSusto() {
		return integrantes.sum{ c => c.capacidadSusto() }
	}
	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}
	method lider() {
		return integrantes.max{ c => c.capacidadSusto() }
	}
	method caramelos() {
		return integrantes.sum({ c => c.caramelos() })
	}
	method recibirCaramelos(cantidad) {
		self.lider().recibirCaramelos(cantidad)
	}
}
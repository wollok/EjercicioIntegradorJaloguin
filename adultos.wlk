object elNecioNoEntregaCaramelos inherits Exception {}

class Adulto {
	var asustadores = []

	method serAsustadoPor(alguien) {
		if (self.seAsusta(alguien)){ 
			alguien.recibirCaramelos(self.caramelosAEntregar(alguien))
		}
		asustadores.add(alguien)
	}
	method seAsusta(alguien){
		return alguien.capacidadSusto()> self.tolerancia()
	}
	method caramelosAEntregar(alguien) {
		return self.tolerancia().div(2)
	}
	method tolerancia(){
		return 10*asustadores.count{c => c.caramelos()>15}
	}
}

class Abuelo inherits Adulto {
	
	override method seAsusta(alguien){
		return true
	}
	override method caramelosAEntregar(alguien) {
		return super(alguien).div(2)
	}
}

class Necio inherits Adulto {
	
	override method seAsusta(alguien){
		return false
	}
	//podria no hacerse
	override method caramelosAEntregar(alguien) {
		throw elNecioNoEntregaCaramelos
	}
}
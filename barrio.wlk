class Barrio{
	const chicos
	
	constructor(_chicos) {chicos = _chicos}
	
	method elementosUsados(){
		return chicos
			.filter{c => c.masDeNCaramelos(10)}
			.flatmap{c => c.elementos()}
			.asSet()
	}
	method chicosConMasCaramelos() {
		return chicos 
			.sortedBy({ x, y => x.caramelos() > y.caramelos()})
			.take(3)
	}
}
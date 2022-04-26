object ludmila {
	
	method precioPorKilometro() {
		return 18
	}
}

object anaMaria {
	var estaEstable = true
	
	method precioPorKilometro() {
		if (estaEstable) {
			return 30
		} else {
			return 25
		}
	}
	method estaEstable(){
		return estaEstable
	}
	method cambiarEstadoDeEconomia(){
		return estaEstable ==! estaEstable 
	}
	
}


object teresa {
	var precioPorKilometro = 22
	
	method precioPorKilometro() {
		return precioPorKilometro
	}
	
	method cambiarPrecioPorKilometro(precio){
		return precioPorKilometro == precio
	}
}

object melina {
	var paraQuienTrabaja
	
	method paraQuienTrabajar(cliente){
		paraQuienTrabaja = cliente
	}
	method paraQuienTrabaja(){
		return paraQuienTrabaja
	}
	method precioPorKilometro(){
		return paraQuienTrabaja.precioPorKilometro() - 3
	}
}
/*
 * Clientes: OJO te estan confundiendo métodos de indicación y métodos de consulta
 */
object ludmila {
	
	method precioPorKilometro() {
		return 18
	}
}

object anaMaria {
	var estaEstable = true
	/* Te dejo otra forma de escribir el método de forma mas corta */
	method precioPorKilometro() = if (estaEstable) {30}else {25}
	
	method estaEstable(){
		return estaEstable
	}
	/* Este método es un métdo de indicación que pasa de true a false y de false a true */
	method cambiarEstadoDeEconomia(){
		estaEstable = !estaEstable 
	}
	
}


object teresa {
	var precioPorKilometro = 22
	
	method precioPorKilometro() {
		return precioPorKilometro
	}
	
	/* 
	 * Este es un método de indicación el retun esta MAL
	 */
	method cambiarPrecioPorKilometro(precio){
		precioPorKilometro = precio
	}
}

object melina {
	var paraQuienTrabaja
	
	/*Aca esta bien es de indicacion */
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
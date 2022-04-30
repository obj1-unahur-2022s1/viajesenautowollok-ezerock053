/*
 * Remisera: BIEN
 */

import clientes.*
import oficinaCooperativa.*

object roxana {
	
	method precioViaje(cliente, kms) {
		return cliente.precioPorKilometro() * kms
	}
}

object gabriela {
	method precioViaje(cliente, kms) {
		return cliente.precioPorKilometro() * kms * 1.2
	}
}

object mariela {
	/* Te dejo la forma resumida. Tambien se puede aplicar en los preciosViaje de los otros objetos */
	method precioViaje(cliente, kms) = 50.max(cliente.precioPorKilometro() * kms)
	
}

object juana {
	method precioViaje(cliente, kms) {
		if (kms <= 8) {
			return 100
		} else {
			return 200
		}
	}
}

object lucia{
	var reemplazo
	
	method precioViaje(cliente, kms) {
		return reemplazo.precioViaje(cliente, kms)
	}
	
	method reemplazo(){
		return reemplazo
	}
	
	method porQuienReemplazar(remisera){
		reemplazo = remisera
	}
}

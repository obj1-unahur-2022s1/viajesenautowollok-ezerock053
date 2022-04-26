import remiseras.*
import clientes.*

object oficina {
	var primeraOpcion
	var segundaOpcion
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera) {
		primeraOpcion = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera) {
		segundaOpcion = remisera
	}
	
	method intercambiarRemiseras() {
		primeraOpcion = segundaOpcion
		segundaOpcion = primeraOpcion
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		if(self.esSegundaOpcionMasBarata(cliente, kms) and self.diferenciaEntreSegundaOpcionYPrimera(cliente, kms).abs() >= 30){
			return segundaOpcion
		} else {
			return primeraOpcion
		}
	}
	
	method esSegundaOpcionMasBarata(cliente, kms) {
		return segundaOpcion.precioViaje(cliente, kms) < primeraOpcion.precioViaje(cliente, kms)
	}
	
	method diferenciaEntreSegundaOpcionYPrimera(cliente, kms) {
		return (segundaOpcion.precioViaje(cliente, kms) - primeraOpcion.precioViaje(cliente, kms)).abs()
	}

}
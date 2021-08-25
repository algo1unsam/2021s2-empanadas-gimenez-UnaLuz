object galvan {

	var sueldo = 15000
	var balance = 0

	method sueldo() {
		return sueldo
	}

	method totalDinero(){
		return balance.max(0)
	}
	
	method totalDeuda(){
		return balance.min(0).abs()
	}
	
	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}
	
	method gastar(cuanto){
		balance -= cuanto
	}
	
	method cobrarSueldo() {
		balance += self.sueldo()
	}
}

object baigorria {

	var cantidadEmpanadasVendidas = 0
	const montoPorEmpanada = 15
	var totalCobrado = 0

	method venderEmpanadas(cant) {
		cantidadEmpanadasVendidas += cant
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		cantidadEmpanadasVendidas = 0
	}
	
	method totalCobrado() = totalCobrado
}

object gimenez {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}


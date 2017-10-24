
class Habitante {
 
	var valentia
	var inteligencia
	
	constructor(_valentia, _inteligencia){
		valentia = _valentia
		inteligencia = _inteligencia
	}
	
	method obtenerPotencia() = valentia + inteligencia

}

class Soldado inherits Habitante {
	
	var equipamento = []
	
	constructor(_valentia, _inteligencia, _equipamento) = self(_valentia, _inteligencia) {
		equipamento = _equipamento
	}
	
	override method obtenerPotencia() = super() + equipamento.sum({ equipo => equipo.obtenerPotencia() })	
}

class Maestro inherits Habitante {
	
	var midiclorianos
	var potenciaSable
	var tipoDeMaestro
	var tiempo
	
	constructor(_valentia, _inteligencia, _midiclorianos, _potenciaSable, _tipoDeMaestro, _tiempo) = self(_valentia, _inteligencia){
		midiclorianos = _midiclorianos
		potenciaSable = _potenciaSable
		tipoDeMaestro = _tipoDeMaestro
		tiempo = _tiempo
	}
	
	override method obtenerPotencia() = super() + self.obtenerPotenciaMidiclorianos() + self.obtenerPotenciaSableDeLuz()
	
	method obtenerPotenciaMidiclorianos() = midiclorianos * 0.0001
	
	method obtenerPotenciaSableDeLuz() = tipoDeMaestro.obtenerPotenciaMaestro(potenciaSable, tiempo)
	
	method obtenerTipoDeMaestro() = tipoDeMaestro
	
	method cargaEmocional(_cargaEmocional) {
		tipoDeMaestro.cargaEmocional(_cargaEmocional)
		tipoDeMaestro = tipoDeMaestro.verificarEstadoEmocional()
		}
}
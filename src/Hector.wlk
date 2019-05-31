import wollok.game.*
import Tomaco.*
import Trigo.*
import Maiz.*

object hector {
	const canasta = []
	var oro = 0
	var property position = game.at(3, 5)
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}

	method image() = "player.png"

	method sembrar(especie) {
		self.seleccionar(especie)
	}

	method seleccionar(especie) {
		if (especie == "trigo") {
			game.addVisual(new Trigo(position = self.position()))
		} else {
			if (especie == "maiz") {
				game.addVisual(new Maiz(position = self.position()))
			} else {
				game.addVisual(new Tomaco(position = self.position()))
			}
		}
	}
	method regar(){
		if(self.hayQue())
		self.aRegar()
		else
		self.error("No hay que regar")
	}
	method hayQue()=not game.colliders(self).isEmpty()
	method aRegar(){
		game.colliders(self).first().awita()
	}
	method cosechar(){
		if(self.cosechable()){
			self.sacarCosecha(game.colliders(self).first())
		}else self.error("aun no se puede cosechar")
	}
	method cosechable(){
		if (self.hayQue()){
		return 	game.colliders(self).first().aPuntoDeCosecha()
		}else{return"No hay que cosechar"
		}
	}
	method cosechaCanasta(cosecha){
		canasta.add(cosecha)
	}
	method sacarCosecha(cosecha){
		self.cosechaCanasta(cosecha)
		game.removeVisual(cosecha)
	}
	method vender(){
		oro+=canasta.sum({especies=>especies.valor()})
		canasta.clear()
	}
	method informe(){
		game.say(self,"tengo "+oro+" monedas, y "+canasta.size()+" plantas para vender")
	}
}


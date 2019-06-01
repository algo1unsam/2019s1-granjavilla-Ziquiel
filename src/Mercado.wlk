import Tomaco.*
import Trigo.*
import Maiz.*
import Hector.*
import wollok.game.*
class Mercado {
	var oro 
	var property position
	const canasta = []
	method image()="market.png"
	method esMercado()=true
	method comprar (valor){
		oro-=valor
	}
	method comprarPlantas(plantas){
		canasta.addAll(plantas)
	}
	method compraTotal (canastas){
		self.comprar(canastas.sum({especies=>especies.valor()}))
		self.comprarPlantas(canastas)
		}
	method informe(){
		game.say(self,"tengo "+oro+" monedas, y "+canasta.size()+" plantas compradas")
	}
		
	
}

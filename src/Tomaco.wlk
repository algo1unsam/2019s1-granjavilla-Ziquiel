import wollok.game.*
class Tomaco {
	var property position
	var property image="tomaco.png"
	method awita (){
		self.nosMovemos()
	}	
	method nosMovemos(){
		self.position().up(1)
		if(self.chauTablero()){
			self.reborn()
		}
	}
	method reborn () {
		position=game.at(position.x(),0)
	}
	method chauTablero()=self.position().y()==10
	method aPuntoDeCosecha()= true
	method valor()=80
	method esMercado()=false
}

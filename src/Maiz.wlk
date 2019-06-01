class Maiz {
	var property position
	var evolucion = 0 
	var property image="corn_baby.png"
	method valor()=150
	method awita (){
		self.image("corn_adult.png")
		evolucion =1
	}
	method aPuntoDeCosecha()= evolucion==1
	method esMercado()=false
}

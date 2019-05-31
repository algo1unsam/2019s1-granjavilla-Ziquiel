class Trigo {
	var evolucion = 0
	var property position
	var property image = "wheat_0.png"

	method awita() {
		self.evolucionar()
	}
	method evolucionar(){
		if(evolucion==0){
			evolucion++
			image="wheat_1.png"
		}else{if(evolucion==1){
			evolucion++
			image="wheat_2.png"
		}else{if(evolucion==2){
			evolucion++
			image="wheat_3.png"
		}else{self.error("Ya no se puede seguir regando")}}}
	}
	method aPuntoDeCosecha()=evolucion>=2
	method valor(){
		if(evolucion==2)
			return 100
		else
			return 200
	}
}


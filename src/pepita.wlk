object pepita{
	var energia = 105

	method vola(cantKm){ 
		energia -= (cantKm + 10)   
	}
	method come(comida){
		energia += comida.cuantaEnergiaDa()
	}
	method estaCansada(){
		return energia < 50
	}
	method estaFeliz(){
		return self.estaEntre(500,1000)
	}
	method cuantoQuiereVolar(){
		var kilometros = energia/5
		return kilometros+self.estaEntre(300,400)+self.esMultiploDe(20)
	}
	method estaEntre(num1,num2){
		if(energia.between(num1,num2))
		return 10
		
		return 0
	}
	method esMultiploDe(num){
		if(num%20==0)
		return 15
		
		return 0
	}
	method salirAcomer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	method haceLoQueQuieras(){
		if(self.estaCansada())
			self.come(alpiste)
		if(self.estaFeliz())
			self.vola(8)
	}
}

object alpiste{
	var gramos = 10

	method cuantaEnergiaDa(){
		return gramos*4
	}
}

object manzana{
	method cuantaEnergiaDa(){
		return 50
	}
}

object mijo{
	var energia = 20
	
	method cuantaEnergiaDa(){
		return energia
	}
	method mojarse(){
		energia = 15
	}
	method secarse(){
		energia = 20
	}
}

object canelones{
	var energia = 20
	var energiaSalsa = 0
	var energiaQueso = 0	
	
	method sacarSalsa(){
		energiaSalsa=0
	}
	method ponerSalsa(){
		energiaSalsa=5
	}
	method sacarQueso(){
		energiaQueso = 0
	}
	method ponerQueso(){
		energiaQueso = 7
	}
	method cuantaEnergiaDa(){
		return energia + energiaSalsa + energiaQueso
	}
}
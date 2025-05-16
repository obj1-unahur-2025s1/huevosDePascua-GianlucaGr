object huevoRepostero {
    method chocolateBlanco() = true
    method chocolateAmargo() = false
    method calorias() = 750
}

object huevoMixto {
  method chocolateBlanco() = true
  method chocolateAmargo() = false
  
  method calorias() = 900
}


object conejo {
    var property peso = 100
    method chocolateBlanco() = false
    method chocolateAmargo() = true
    method calorias() = 10 * peso
}

object blisterHuevitos {
    var property cantidadHuevosConLeche = 0
    const cantidadHuevosBlanco = cantidadHuevosConLeche.div(5)
    method chocolateBlanco() = true
    method chocolateAmargo() = false

    method calorias() { cantidadHuevosConLeche * 100 + cantidadHuevosBlanco * 150}
}

object matrioshka { 
    var property tipoDecoracion = decoracionArbol
    var property huevoInterno = huevoRepostero
    method calorias() = 3000 + huevoInterno.calorias() + tipoDecoracion.calorias()
    method chocolateBlanco() = huevoInterno.chocolateBlanco()
    method chocolateAmargo() = true
    
    method cambiarAFlor() {
        tipoDecoracion = decoracionFlor
    }
    method cambiarAArbol() {
        tipoDecoracion = decoracionArbol
    }
    
}

object decoracionArbol{
    method calorias() = 150
}

object decoracionFlor{
    var property petalo = 0  
    method calorias() = 100 * petalo
}

object chocolateBlanco{
}

object chocolateConLeche{
}

object chocolateAmargo{
}



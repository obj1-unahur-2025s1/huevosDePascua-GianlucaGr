import huevosDePascua.*

object caceria{
    var huevosEscondidos = [conejo, huevoRepostero , huevoMixto, blisterHuevitos, matrioshka]
    method faltanEncontrar() = huevosEscondidos.size()
    method agregarHuevos(listaDeHuevos) {huevosEscondidos.addAll(listaDeHuevos)}
    method faltanChocolateBlanco() = huevosEscondidos.count({e => e.chocolateBlanco()}) 
    method aunNoFueEncontrado(unHuevo) = huevosEscondidos.contains(unHuevo)
    method encontrarUnHuevoPor(unChico, unHuevo) {
        if (self.aunNoFueEncontrado(unHuevo)){
            unChico.comer(unHuevo)
            huevosEscondidos.remove(unHuevo)
        }
    }
    method encontrarPrimerHuevoPor(unChico){
        if (!huevosEscondidos.isEmpty()){
            self.encontrarUnHuevoPor(unChico, huevosEscondidos.first())
        }
    }
    method encontrarRestantesPor(unChico){
        huevosEscondidos.forEach({h => self.encontrarUnHuevoPor(unChico, h)})
    }
}

object ana{
}

object jose{
}

object tito{
}
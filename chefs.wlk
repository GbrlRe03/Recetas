import Recetas.recetas.*

object paulina {
  const recetasConocidas = [ensalada, risotto]
  var puntosChef = 0
  method puedeCocinar(receta)= recetasConocidas.contains(receta)

  method cocinar(receta){
    if (receta.esAptoVegetariano() && recetasConocidas.contains(receta)){
       puntosChef += receta.puntosOtorgados()*self.bonus(receta)
    }
    
}
  method bonus(receta){
    if (receta.esAptoVegetariano()){
      return 2
    }
    else return 0.5
  }
   method aprenderReceta(receta){
    if(receta.esAptoVegetariano()){
      recetasConocidas.add(receta)
    }
   }
}

object remy {
  const recetasConocidas = [paella, risotto]
  var puntosChef = 0
  var estaRatatouille = false
  method puedeCocinar(receta) = recetasConocidas.size()>1 && recetasConocidas.contains(receta)
  method llamarRatatouille(){
    estaRatatouille = true
    }
  method bonus(receta) = if(estaRatatouille){
    return 5
  }
  else{ return 0
    }
  method cocinar(receta){
   if (self.puedeCocinar(receta)){
    puntosChef += receta.puntosOtorgados()+self.bonus(receta)
   }
    }
}

object christof {
  const recetasConocidas =[paella]
  var puntosChef=0
  var ayudantes=2
  method puedeCocinar(receta) = ayudantes.even()&&puntosChef <=200
  method bonus(receta){
    return ayudantes*2
  }
  method cocinar(receta){
    if(self.puedeCocinar(receta)){
      puntosChef+=receta.puntosOtorgados()+ self.bonus(receta)
    }
  }
  method aprender(receta){
    recetasConocidas.removeAll()
    recetasConocidas.add(receta)
    ayudantes+=1
  }
  
}
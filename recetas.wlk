import Recetas.estaciones.*

object paella {
  var puntosOtorgados = 0
  method puntosOtorgados() = puntosOtorgados
  var esAptoVegetariano = false
  method esAptoVegetariano() = esAptoVegetariano
  method conMarisco(){
    puntosOtorgados = 8
    esAptoVegetariano = false
  }
  method sinMarisco(){
    puntosOtorgados = 6
    esAptoVegetariano = true
  }
}

object risotto {
  var puntosOtorgados = 0
  method puntosOtorgados() = puntosOtorgados
  var esAptoVegetariano = true
  method esAptoVegetariano() = esAptoVegetariano
  var esPrimavera = true
  method conHongos(){
    if (esPrimavera){
      puntosOtorgados = 16
    }
    else{
      puntosOtorgados = 12
    }
    esAptoVegetariano = true
  }
  method conPollo(){
    puntosOtorgados = 8
    esAptoVegetariano = false
  }
}

object ensalada {
  var puntosOtorgados = 10
  method puntosOtorgados() = puntosOtorgados
  method esAptoVegetariano() = true
}

object roberto {
  var vehiculo = bicicleta
  const pesoPropio = 95

  method peso() = vehiculo.peso() + pesoPropio

  method puedeLlamar() = false

  method cambiarVehiculo(unVehiculo){
    vehiculo = unVehiculo
  }
}

object bicicleta{
  method peso() = 5
}

object camion{
  var property acoplados = 4
  method peso() = acoplados * 500
}

object chuck{
  method peso() = 80
  method puedeLlamar() = true
}

object neo{
  var tieneCredito = false

  method cargarCredito(){tieneCredito = true}
  method peso() = 0
  method puedeLlamar() = tieneCredito
}
import mensajeros.*
import destinos.*
object empresa{
  const mensajeros = [roberto, chuck]

  method contratar(unMensajero){
    mensajeros.add(unMensajero)
  }

  method despedir(unMensajero){
    mensajeros.remove(unMensajero)
  }

  method presentarQuiebra(){mensajeros.clear()}

  method esGrande() = mensajeros.size() > 2

  method puedeEntregarPrimero(paquete) = paquete.puedeSerEnviadoPor(mensajeros.first())

  method pesoDelUltimo() = mensajeros.last().peso()

  method sePuedeEntregar(paquete){
    paquete.estaPago() && mensajeros.any({mensajero => paquete.puedeSerEnviadoPor(mensajero)})
  }

  method mensajerosQuePuedeLlevar(paquete) = mensajeros.filter({m => })

}

object paquete{
  var destino = matrix
  method precio() = 50
  method estaPago() = true
  method puedeSerEnviadoPor(mensajero) = self.estaPago() and destino.pasoPermitido(mensajero)
}

object paquetito{
  method precio() = 0
  method estaPago() = true

  method puedeSerEnviadoPor(mensajero) = true
}

object paqueton{
  var pagoParcial = 0
  const destinos = [brooklyn, matrix]

  method precio() = destinos.size() * 100
  method estaPago() = pagoParcial >= self.precio()

  method pagar(monto){
    pagoParcial += monto
  }

  method puedeSerEnviadoPor(mensajero) = destinos.all({ d => d.pasoPermitido(mensajero)})
}

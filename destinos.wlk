object brooklyn{
  method pasoPermitido(alguien) = alguien.peso() <= 1000
}

object matrix{
  method pasoPermitido(alguien) = alguien.puedeLlamar()
}
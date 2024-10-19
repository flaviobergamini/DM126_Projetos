class Restaurante {
 var nome: String
 var tipoComida: String
 var numeroPedido: Int

  init(nome: String, tipoComida: String, numeroPedido: Int) {
    self.nome = nome
    self.tipoComida = tipoComida
    self.numeroPedido = 0
  }

  func recebePedido() {
    self.numeroPedido += 1
  }

  func  calculaTotalPedidos() -> Double{
    return Double(self.numeroPedido) * 35.0
  }
}

struct RestauranteStruct {
  var nome: String
  var tipoComida: String
  var numeroPedido: Int

  init(nome: String, tipoComida: String, numeroPedido: Int) {
    self.nome = nome
    self.tipoComida = tipoComida
    self.numeroPedido = 0
  }

  mutating func recebePedido() {
    self.numeroPedido += 1
  }

  mutating func  calculaTotalPedidos() -> Double {
    return Double(self.numeroPedido) * 35.0
  }
}

var restaurante = Restaurante(nome: "Restaurante A", tipoComida: "Comida Italiana", numeroPedido: 0)

restaurante.recebePedido()
restaurante.recebePedido()
print(restaurante.calculaTotalPedidos())

var restauranteStruct = RestauranteStruct(nome: "Restaurante B", tipoComida: "Comida Japonesa", numeroPedido: 0)

restauranteStruct.recebePedido()
print(restauranteStruct.calculaTotalPedidos())
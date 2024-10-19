class Calculadora {
  var numero1: Int
  var numero2: Int

  init(numero1: Int, numero2: Int) {
    self.numero1 = numero1
    self.numero2 = numero2
  }

  func adicao() -> Int {
    return numero1 + numero2
  }

  func subtracao() -> Int {
    return numero1 - numero2
  }

  func multiplicacao() -> Int {
    return numero1 * numero2
  }

  func divisao() -> Double {
    if self.numero2 != 0 {
      return Double(numero1) / Double(numero2)
    } 
    return 0;
  }
}

let calculadora = Calculadora(numero1: 10, numero2: 5)

print(calculadora.adicao())
print(calculadora.subtracao())
print(calculadora.multiplicacao())
print(calculadora.divisao())

let calculadora2 = Calculadora(numero1: 10, numero2: 0)
print(calculadora2.divisao())

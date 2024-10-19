class Retangulo {
 var base: Double
 var altura: Double
  
 init(base: Double, altura: Double) {
   self.base = base
   self.altura = altura
  }

  func calcularArea() -> Double {
    return self.base * self.altura
  }

  func calcularPerimetro() -> Double {
    return self.base * 2 + self.altura * 2
  }
}

struct RetanguloStruct {
var base: Double
 var altura: Double

 init(base: Double, altura: Double) {
   self.base = base
   self.altura = altura
  }

  func calcularArea() -> Double {
    return self.base * self.altura
  }

  func calcularPerimetro() -> Double{
    return self.base * 2 + self.altura * 2
  }
}

var retangulo = Retangulo(base: 10, altura: 5)

print(retangulo.calcularArea())
print(retangulo.calcularPerimetro())

var retanguloStruct = RetanguloStruct(base: 10, altura: 5)
print(retanguloStruct.calcularArea())
print(retanguloStruct.calcularPerimetro())
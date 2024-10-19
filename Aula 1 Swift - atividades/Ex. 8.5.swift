class Empregado {
  var nome: String
  var salario: Double

  init(nome: String, salario: Double) {
    self.nome = nome
    self.salario = salario
  }

  func consultaDados() {
    print(nome)
    print(salario)
  }
}

class Gerente: Empregado {
  var departamento: String

  init(nome: String, salario: Double, departamento: String) {
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }

  override func consultaDados(){
    super.consultaDados()
    print(departamento)
  }
}

class Vendedor: Empregado {
  func percentualComissao(numeroVendas: Int) -> Double {
    return Double(numeroVendas) * (50.0 * 0.1) + salario
  }
}

var empregado = Empregado(nome: "João", salario: 5000.0)

empregado.consultaDados()

print("--------------")

var gerente = Gerente(nome: "Maria", salario: 10000, departamento: "Vendas")

gerente.consultaDados()

print("--------------")

var vendedor = Vendedor(nome: "Pedro", salario: 1000)
print(vendedor.percentualComissao(numeroVendas: 2))
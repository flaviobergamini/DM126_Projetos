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


var empregado = Empregado(nome: "João", salario: 5000.0)

empregado.consultaDados()

print("--------------")

var gerente = Gerente(nome: "Maria", salario: 10000, departamento: "Vendas")

gerente.consultaDados()
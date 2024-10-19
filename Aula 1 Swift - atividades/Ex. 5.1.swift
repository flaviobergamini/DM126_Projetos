func verificaNome(nome: String?) {
  guard let nome = nome else {
    print("Nome não especificado")
    return
  }

  print(nome)
}

verificaNome(nome: nil)
verificaNome(nome: "Flavio")
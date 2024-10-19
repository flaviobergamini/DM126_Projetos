var numeros: [Int] = []
var numeroParSet: Set<Int> = []
var numeroImparSet: Set<Int> = []

for _ in 1...10 {
  numeros.append(Int.random(in: 1...100))
}

for numero in numeros {
  if numero % 2 == 0 {
    numeroParSet.insert(numero)
  }
  else {
    numeroImparSet.insert(numero)
  }
}

print(numeros)
print(numeroParSet)
print(numeroImparSet)
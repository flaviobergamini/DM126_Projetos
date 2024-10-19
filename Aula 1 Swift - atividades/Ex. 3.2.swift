print("Entre com um numero: ")

var numero = Int(readLine()!)!

let numeroGerado = Int.random(in: 1...100)

if abs(numero - numeroGerado) == 0 {
  print("Acertou")
}
else if abs(numero - numeroGerado) >= 10 {
  print("Chutou alto")
}
else {
  print("Chutou baixo")
}
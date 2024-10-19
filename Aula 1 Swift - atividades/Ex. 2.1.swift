let idade = 26

switch idade {
  case 0...13:
    print("Criança")
  case 14..<18:
    print("Adolescente")
  default:
    print("Adulto")
}
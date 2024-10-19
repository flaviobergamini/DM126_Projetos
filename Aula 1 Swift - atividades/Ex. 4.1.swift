func verificaNumeroPrimo(_ numero: Int) -> Bool {
    if numero <= 1 {
      return false
    }

    for i in 2..<numero {
      if numero % i == 0 {
          return false 
      }
    }
    return true 
}

print(verificaNumeroPrimo(7))
print(verificaNumeroPrimo(2))
print(verificaNumeroPrimo(1))
print(verificaNumeroPrimo(3))
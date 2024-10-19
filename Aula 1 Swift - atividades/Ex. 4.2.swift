func divideConta(_ valorTotal: Double, _ pessoas: Int) -> Double {
  let total = valorTotal + valorTotal * 0.1
  
  return total / Double(pessoas)
}

print(divideConta(100.0, 2))
print(divideConta(100.35, 3))
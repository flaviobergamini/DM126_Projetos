func mediaAluno(notas: [Double]) -> Double {
  return notas.reduce(0, +) / Double(notas.count)
}

func mediaAluno2(notas: [Double]) -> Double {
  var somaNotas = 0.0
  
  for nota in notas {
    somaNotas += nota
  }
  return somaNotas / Double(notas.count)
}


print(mediaAluno(notas: [8.0, 9.0, 10.0]))
print(mediaAluno2(notas: [8.0, 9.0, 10.0]))
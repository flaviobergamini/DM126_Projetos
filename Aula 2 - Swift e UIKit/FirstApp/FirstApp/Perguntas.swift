//
//  Perguntas.swift
//  FirstApp
//
//  Created by user270232 on 10/26/24.
//

import Foundation

struct Pergunta{
 var titulo: String
 var respostas: [String]
}
let perguntas: [Pergunta] = [
    Pergunta(titulo: "Quantas horas você dorme por noite?",
    respostas: ["Menos de 6","De 6 a 8","Mais de 8"]),
    Pergunta(titulo: "Quantas vezes você faz deploy na semana?",
    respostas: ["Mais de 3x", "2 a 3x", "1x ou menos"]),
    Pergunta(titulo: "Quantos bugs você arruma por dia?",
    respostas: ["Mais de 3","De 2 a 3", "Menos de 1"]),
    Pergunta(titulo: "Quantas vezes você pratica esportes por semana?",
    respostas: ["1x ou menos", "2 a 3x", "Mais de 3x"])
]

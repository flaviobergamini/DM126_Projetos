//
//  ResultadoViewController.swift
//  FirstApp
//
//  Created by user270232 on 10/26/24.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    var pontuacao: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        configurarDesempenho()
    }
    
    @IBOutlet weak var labelPontuacao: UILabel!
    
    @IBOutlet weak var resultadoPontuacao: UILabel!
    
    func configurarDesempenho() {
        guard let pontuacao = pontuacao
        else { return }
        labelPontuacao.text = "Pontuação: \(pontuacao)"
        print("Pontuação: \(pontuacao)")
        
        if pontuacao <= 1 {
            resultadoPontuacao.text = "Se cuide melhor!"
        }
        else {
            resultadoPontuacao.text = "muito bom !!"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

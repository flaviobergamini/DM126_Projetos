//
//  ViewController.swift
//  FirstApp
//
//  Created by user270232 on 10/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("Botao clicado")
    }
    
    @IBOutlet weak var botaoIniciarAvaliacao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        
    }
    
    func configureLayout() {
        botaoIniciarAvaliacao.layer.cornerRadius=2.00
    }
}

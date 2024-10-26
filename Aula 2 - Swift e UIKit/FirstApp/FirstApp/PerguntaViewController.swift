//
//  PerguntaViewController.swift
//  FirstApp
//
//  Created by user270232 on 10/26/24.
//

import UIKit

class PerguntaViewController: UIViewController {
    
    var pontos = 0
    var perguntaAtual = 0
    
    @IBOutlet var botoesResposta: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarLayout()
        configurarPerguntas()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func escolherResposta(_ sender: UIButton) {
        if sender.tag == 0 {pontos -= 1}
        else if sender.tag == 2 {pontos += 1}
        
        if perguntaAtual < perguntas.count - 1 {
            perguntaAtual += 1
            configurarPerguntas()
        }
        else {navegaParaTelaDesempenho()}
    }
    
    @IBOutlet weak var tituloPergunta: UILabel!
    
    func configurarLayout() {
        tituloPergunta.numberOfLines = 0
        tituloPergunta.textAlignment = .center

        for botao in botoesResposta {
            botao.tintColor = .black
            botao.layer.cornerRadius = 20.0
        }
    }
    
    func configurarPerguntas() {
        tituloPergunta.text = perguntas[perguntaAtual].titulo
        
         for botao in botoesResposta{
         let tituloBotao = perguntas[perguntaAtual].respostas[botao.tag]
         botao.setTitle(tituloBotao, for: .normal)
         }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultadoVC = segue.destination as? ResultadoViewController
            
     else { return }
        
     resultadoVC.pontuacao = pontos
     }
    
    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaResultado", sender: nil)
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

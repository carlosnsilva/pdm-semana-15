//
//  filmeViewController.swift
//  appFilmes
//
//  Created by IFPB on 16/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class filmeViewController: UIViewController {
    var filme: Filme!
    var banco: Banco!
    
    @IBOutlet weak var filmeNome: UITextField!
    
    @IBOutlet weak var notaValor: UISlider!
    
    @IBOutlet weak var switchNota: UISwitch!
    
    
    @IBOutlet weak var qtdAssistiu: UIStepper!
    
    
    @IBOutlet weak var indicadoOscar: UISwitch!
    
    @IBAction func botaoSalvar(_ sender: Any) {
        var nome = self.filmeNome.text!
        var nota = Init(self.notaValor.value)!
        var assistiuQuantas = Init(self.qtdAssistiu.value)!
        var indicado = self.indicadoOscar.isOn
        
        var filme(nome, nota, indicado, assistiuQuantas);
        self.banco = (UIApplication.shared.delegate as! AppDelegate).banco
        self.banco.adicionar(filme: filme)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

//
//  ViewController.swift
//  appFilmes
//
//  Created by IFPB on 16/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bancoDados: Banco!
    
    @IBOutlet weak var qtdFilmesAdd: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bancoDados = (UIApplication.shared.delegate as! AppDelegate).banco
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        var filmes = self.bancoDados.listarFilmes()
        self.qtdFilmesAdd.text = String(self.bancoDados.qtdFilmes())
        print(filmes)
        
    }


}

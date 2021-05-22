//
//  banco.swift
//  appFilmes
//
//  Created by IFPB on 16/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Banco {
    private var Filmes: Array<Filme>
    
    init() {
        self.Filmes = Array<Filme>()
        <#statements#>
    }
    
    func adicionar(filme: Filme){
        self.Filmes.append(filme)
    }
    
    func listarFilmes() -> Array<Filme>{
        return self.Filmes
    }
    
    func qtdFilmes() -> Int {
        return self.Filmes.count
    }
    
}

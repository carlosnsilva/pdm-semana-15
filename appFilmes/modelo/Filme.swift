//
//  Filme.swift
//  appFilmes
//
//  Created by IFPB on 16/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Filme: NSObject{
    var tituloFilme: String
    var nota: Int
    var indicadoOscar: Bool
    var qtdAssistido: Int
    
    init(tituloFilme: String, nota: Int, indicadoOscar: Bool, qtdAssistido: Int){
        self.tituloFilme = tituloFilme
        self.nota = nota
        self.indicadoOscar = indicadoOscar
        self.qtdAssistido = qtdAssistido
    }
    
    override var description: String {
        return "O Filme \(self.tituloFilme) foi indicado ao Oscar \(self.indicadoOscar) e obteve nota: \(self.nota)"
    }
}

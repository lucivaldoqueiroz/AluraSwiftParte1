//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Lucivaldo Queiroz on 20/06/22.
//

import UIKit

class Refeicao: NSObject {
    
        let nome: String
        let felicidade: Int
        let itens: Array<Item> = []

        init(nome: String, felicidade: Int) {
            self.nome = nome
            self.felicidade = felicidade
        }
}

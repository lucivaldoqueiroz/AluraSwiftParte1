//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Lucivaldo Queiroz on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField:UITextField?
    @IBOutlet var felicidadeTextField:UITextField?

   @IBAction func adicionar () {
   
       /*
       if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
           
           let nome = nomeDaRefeicao
          if let felicidade = Int(felicidadeDaRefeicao){
               let refeicao = Refeicao(nome: nome, felicidade: felicidade)
               print("Comi \(refeicao.nome) e fiquei com a felicidade: \(refeicao.felicidade)")
          } else {
              print("erro ao tentar criar a refeição")
          }
       }
 */
            guard let nomeDaRefeicao = nomeTextField?.text else {
                  return
              }

              guard let felicidadeDaRefeicao = felicidadeTexField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
                  return
              }

              let refeicao = refeicao(nome: nomeDaRefeicao, felicidade: felicidade)

              print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
          }
    }

//}

∂

import UIKit

//este é o código principal do nosso projeto
/*
 COMENTARIO EM BLOCO
 */
/*
let nome = "churros"
let felicidade = 5
let calorias = 79.5
let vegetal: Bool = false
*/
/*
func alimentoConsumido(){
    print("o alimento consmido foi: \(nome)")
}

alimentoConsumido()
alimentoConsumido()
*/

/*func alimentoConsumido(_ nome: String, _ caloria: Double) {
    print("o alimento consumido foi: \(nome), com calorias: \(caloria)")
}

alimentoConsumido(nome, calorias)
*/
/*
let caloria1 = 50.5
let caloria2 = 100
let caloria3 = 300
let caloria4 = 500
*/
//let totalDeCalorias = [50.5, 100, 300, 500]
                    
/*
for i in 0...3 {
    print(i)
    print(totalDeCalorias[i])
}
*/
/*
for i in 0...totalDeCalorias.count-1 {
    print(i)
    print(totalDeCalorias[i])
}
*/
/*
for caloria in totalDeCalorias {
    print(caloria)
}
*/
/*
let totalDeCalorias = [50.5, 100]

func todasCalorias(totalDeCalorias: [Double]) -> Double {
    var total: Double = 0

    for caloria in totalDeCalorias {
        total += caloria
    }
    return total
}

let total = todasCalorias(totalDeCalorias: [50.5, 100, 400])

print(total)
*/

//criar primeira refeiçao

/*
let nome: String = "Macarrao"
let felicidade: String = "5"

// criar segunda refeicao

let nome2: String = "Churros"
let felicidad2: String = "4"

//criar classe que agrupe essas caracteristicas

class Refeicao {
    let nome: String = "Macarrao"
    let felicidade: String = "5"
}
 //INSTANCIANDO UMA CLASSE
let refeicao: Refeicao = Refeicao()

print(refeicao.nome)
*/

/*
class Refeicao {
    var nome: String?
    var felicidade: String?
}

let refeicao = Refeicao()
refeicao.nome = "Macarrão"

if refeicao.nome != nil {
    print(refeicao.nome!)
}

//Boas práticas pra extrair valores opcionais:

if let nome = refeicao.nome {
    print(nome)
}


//guard let
func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome {
        print(nome)
    }
    
    guard let nome = refeicao.nome else {
           return
       }
    print(nome)
}

exibeNomeDaRefeicao()

let numero = Int("5")

if let n = numero {
    print(n)
} else {
    print("Erro ao converter String para Int")
}
*/
/*
class Refeicao {
    var nome: String
    var felicidade: String

    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
}

let refeicao2 = Refeicao(nome: "Macarrão", felicidade: "5")
let refeicao3 = Refeicao(nome: "Feijão", felicidade: "3")

print(refeicao2.nome)
print(refeicao2.felicidade)

print(refeicao3.nome)
print(refeicao3.felicidade)
 */

class Refeicao {
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []

    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double {
           var total = 0.0

           for item in itens {
               total += item.calorias
           }

           return total
       }
}

class Item {
        var nome: String
        var calorias: Double

        init(nome: String, calorias: Double) {
            self.nome = nome
            self.calorias = calorias
        }
    }
    
    let refeicao = Refeicao(nome: "Almoço", felicidade: "5")
    
    let arroz = Item(nome: "Arroz", calorias: 51.0)
    let feijao = Item(nome: "Feijão", calorias: 90.0)
    let contraFile = Item(nome: "Contra Filé", calorias: 287.0)

refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.nome)
if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}


print(refeicao.totalDeCalorias())

//
//  main.swift
//  Juan_Final_Challenge
//
//  Created by JUAN GABRIEL BORSACCHI MARQUES on 14/11/25.
//

import Foundation

enum InputError: Error {
    case invalido
}
var meusPoketitos: [[String: Any]] = []
var nome: String = ""

//lista de poketitos//
let flamito: [String: Any] = [
    "nome": "Flamito",
    "vidaMax": 60,
    "vidaAtual": 60,
    "nivel": 1,
    "tipo": "Fogo",
    "ataques": [
        ["nome": "Brasa", "poder": 20, "tipo": "Fogo"],
        ["nome": "Arranhão", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Flamitron"
]

let aguatito: [String: Any] = [
    "nome": "Aguatito",
    "vidaMax": 60,
    "vidaAtual": 60,
    "nivel": 1,
    "tipo": "Água",
    "ataques": [
        ["nome": "Jato d'Água", "poder": 20, "tipo": "Água"],
        ["nome": "Investida", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Aguajato"
]

let plantito: [String: Any] = [
    "nome": "Plantito",
    "vidaMax": 60,
    "vidaAtual": 60,
    "nivel": 1,
    "tipo": "Planta",
    "ataques": [
        ["nome": "Folhas secas", "poder": 20, "tipo": "Planta"],
        ["nome": "Investida", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Plantopus"
]

let gulosito: [String: Any] = [
    "nome": "Gulosito",
    "vidaMax": 60,
    "vidaAtual": 60,
    "nivel": 1,
    "tipo": "Pedra",
    "ataques": [
        ["nome": "Rochas", "poder": 20, "tipo": "Pedra"],
        ["nome": "Investida", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Gulosão"
]

let pikatito: [String: Any] = [
    "nome": "Pikatito",
    "vidaMax": 60,
    "vidaAtual": 60,
    "nivel": 1,
    "tipo": "Elétrico",
    "ataques": [
        ["nome": "Trovão", "poder": 20, "tipo": "Elétrico"],
        ["nome": "Arranhão", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Pikaton"
]

let flamitron: [String: Any] = [
    "nome": "Flamitron",
    "vidaMax": 90,
    "vidaAtual": 90,
    "nivel": 6,
    "tipo": "Fogo",
    "ataques": [
        ["nome": "Chama Forte", "poder": 35, "tipo": "Fogo"],
        ["nome": "Arranhão", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Nenhuma"
]

let aguajato: [String: Any] = [
    "nome": "Aguajato",
    "vidaMax": 92,
    "vidaAtual": 92,
    "nivel": 6,
    "tipo": "Água",
    "ataques": [
        ["nome": "Jato Poderoso", "poder": 35, "tipo": "Água"],
        ["nome": "Investida", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Nenhuma"
]

let plantopus: [String: Any] = [
    "nome": "Plantopus",
    "vidaMax": 88,
    "vidaAtual": 88,
    "nivel": 6,
    "tipo": "Planta",
    "ataques": [
        ["nome": "Folha Navalha", "poder": 35, "tipo": "Planta"],
        ["nome": "Investida", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Nenhuma"
]

let gulosao: [String: Any] = [
    "nome": "Gulosão",
    "vidaMax": 100,
    "vidaAtual": 100,
    "nivel": 6,
    "tipo": "Pedra",
    "ataques": [
        ["nome": "Desmoronar", "poder": 40, "tipo": "Pedra"],
        ["nome": "Investida", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Nenhuma"
]

let pikaton: [String: Any] = [
    "nome": "Pikaton",
    "vidaMax": 85,
    "vidaAtual": 85,
    "nivel": 6,
    "tipo": "Elétrico",
    "ataques": [
        ["nome": "Trovão Supremo", "poder": 40, "tipo": "Elétrico"],
        ["nome": "Arranhão", "poder": 15, "tipo": "Normal"]
    ],
    "evolucao": "Nenhuma"
]

let poketitosSelvagens = [flamito, aguatito, plantito, gulosito, pikatito]


func mostrarHistoria() {
    print("🌟 MUNDO DE POKETITOS 🌟 \nNo continente de Ameriquito, criaturas conhecidas como \nPoketitos vivem ao lado dos humanos! \n \nHoje você completa 15 anos e está pronto para começar \nsua jornada como treinador! \n \nDerrote e capture Poketitos \ne torne-se uma lenda!")
    print("\nDigite 1 para iniciar sua aventura.")
    print("Digite 0 para sair.")
}

func lerNumero()throws -> Int{
    if let entrada = readLine(), let num = Int(entrada){
        return num
    }else{
          throw InputError.invalido
    }
    
}

func nomeJogador() {
    print("Antes de começar, qual é o seu nome?")

    while true {
        if let entrada = readLine() {
            nome = entrada
            if nome.isEmpty{
            nome = "Treinador"
        }
            print("\nÓtimo, \(nome)! Sua aventura vai começar! 🌟\n")
            break
        }
        else {
            print("Digite um nome válido!")
        }
    }
}

func escolherStarter() -> [String: Any]{
    print("ESCOLHA SEU POKETITO INICIAL!!\n \n1 - Flamito 🔥 (Fogo)\n2 - Aguatito 💧 (Água)\n3 - Plantito 🍃 (Planta)")
    while true{
        do{
            let opcao = try lerNumero()

            switch opcao{
                case 1:
                print("Você escolheu Flamito")
                return flamito

                case 2:
                print("Você escolheu Aguatito")
                return aguatito

                case 3:
                print("Você escolheu Plantito")
                return plantito

                default:
                print("Escolha inválida. Digite 1,2 ou 3.")
            }
            } catch{
                print("Digite apenas números!")
            }
        }
    }

func iniciarjogo(){
    mostrarHistoria()

    while true {
        do{
           let opcao = try lerNumero()

            switch opcao{
                case 1:
                print("\nA aventura vai começar!\n")
                nomeJogador()
                let meuPoketito = escolherStarter()
                print("\nVocê iniciou sua jornada com \(meuPoketito["nome"]!)!")
                meusPoketitos.append(meuPoketito)
                print("Seu Poketito foi adicionado à sua equipe!")
                return menuPrincipal()

                case 0:
                print("Saindo do jogo... Até a próxima!")
                return

                default:
                print("Digite apenas 1 para iniciar ou 0 para sair!")
            }
          } catch{
            print("Digite um número válido!")
          }

    }
}

func menuPrincipal() {
    while true {
        print("Olá, \(nome)! O que deseja fazer?\n1 - Explorar 🌳\n2 - Ver meu Poketito 🔍\n3 - Centro Poketito ❤️\n0 - Sair do jogo")

        do {
            let opcao = try lerNumero()

            switch opcao {

            case 1:
                print("\nVocê saiu para explorar!\n")
                explorar()

            case 2:
                verPoketito()

            case 3:
                // ⬇ Agora cura corretamente sem inout!
                meusPoketitos[0] = curarPoketito(meusPoketitos[0])

            case 0:
                print("Saindo do jogo... Até a próxima")
                return

            default:
                print("Opção inválida! Digite um número do menu.")
            }

        } catch {
            print("Entrada inválida! Digite apenas números.")
        }
    }
}
 
    func verPoketito() {
    print("\n📜 Seus Poketitos\n")
    
    if meusPoketitos.isEmpty {
        print("Você ainda não tem Poketitos!")
        return
    }
    
    for (index, poke) in meusPoketitos.enumerated() {
        print("\(index + 1) - \(poke["nome"]!) | Nível \(poke["nivel"]!) | \(poke["vidaAtual"]!)/\(poke["vidaMax"]!) ❤️")
    }
    
    print("\nO que deseja fazer?")
    print("1 - Ver detalhes de um Poketito 🔍")
    print("2 - Reorganizar ordem 🧩")
    print("0 - Voltar")
    
    while true {
        do {
            let escolha = try lerNumero()
            
            switch escolha {
                
            case 1:
                print("Digite o número do Poketito que deseja ver:")
                let index = try lerNumero() - 1
                if index >= 0 && index < meusPoketitos.count {
                    mostrarDetalhesPoketito(meusPoketitos[index])
                } else {
                    print("Posição inválida!")
                }
                return
                
            case 2:
                reorganizarPoketitos()
                return
                
            case 0:
                return
                
            default:
                print("Escolha inválida!")
            }
            
        } catch {
            print("Entrada inválida!")
        }
    }
}

func mostrarDetalhesPoketito(_ poke: [String: Any]) {
    print("\n🔍 Detalhes do Poketito:")
    print("Nome: \(poke["nome"]!)")
    print("Tipo: \(poke["tipo"]!)")
    print("Nível: \(poke["nivel"]!)")
    print("Vida: \(poke["vidaAtual"]!)/\(poke["vidaMax"]!)")
    
    print("\nAtaques:")
    if let ataques = poke["ataques"] as? [[String: Any]] {
        for a in ataques {
            print("- \(a["nome"]!) | Poder \(a["poder"]!) | Tipo \(a["tipo"]!)")
        }
    }
    print("")
}

func reorganizarPoketitos() {
    print("\n🧩 Reorganizar Poketitos")
    
    for (i, poke) in meusPoketitos.enumerated() {
        print("\(i + 1) - \(poke["nome"]!)")
    }
    
    print("\nDigite o número do Poketito que deseja mover:")
    do {
        let origem = try lerNumero() - 1
        
        if origem < 0 || origem >= meusPoketitos.count {
            print("Posição inválida!")
            return
        }
        
        print("Digite a nova posição:")
        let destino = try lerNumero() - 1
        
        if destino < 0 || destino >= meusPoketitos.count {
            print("Posição inválida!")
            return
        }
        
        let poke = meusPoketitos.remove(at: origem)
        meusPoketitos.insert(poke, at: destino)
        
        print("\n✔️ Poketitos reorganizados com sucesso!\n")
        
    } catch {
        print("Entrada inválida!")
    }
}


func explorar(){
    print("\nVocê está explorando a natureza...\n")
    
    let evento = Int.random(in:1...100)
    
    if evento <= 75{
        encontro()
    }else {
        print("Você caminhou bastante, mas não encontrou nada")
    }
}

func encontro() {
    let selvagem = poketitosSelvagens.randomElement()!
    
    print("\n⚠️ Um \(selvagem["nome"]!) selvagem apareceu!")
    print("O que deseja fazer?")
    print("1 - Batalhar 🔥")
    print("2 - Tentar capturar 🎯")
    print("0 - Fugir 🏃‍♂️")
    
    while true {
        do {
            let escolha = try lerNumero()

            switch escolha {

            case 1:
            print("Iniciando batalha!\n")
            let meuAtualizado = batalha(meuPoketito: meusPoketitos[0], inimigo: selvagem)
            meusPoketitos[0] = meuAtualizado
            return


            case 2:
                capturarPoketito(inimigo: selvagem)
                return   // volta ao menu depois da tentativa

            case 0:
                print("Você fugiu com sucesso!")
                return   // volta ao menuPrincipal()

            default:
                print("Digite 1, 2 ou 0!")
            }

        } catch {
            print("Entrada inválida! Digite apenas números.")
        }
    }
}


func calculoDano(ataque: [String: Any], atacante: [String: Any], defensor: [String: Any]) -> [String: Any] {

    var novo = defensor
    let poder = ataque["poder"] as! Int
    let vidaAtual = novo["vidaAtual"] as! Int
    novo["vidaAtual"] = max(vidaAtual - poder, 0)
    return novo
}

func batalha(meuPoketito: [String: Any], inimigo: [String: Any]) -> [String: Any] {

    var meu = meuPoketito
    var inim = inimigo

    print("\n⚔️ BATALHA INICIADA! ⚔️")
    print("\nVocê enviou \(meu["nome"]!)!")
    print("O inimigo é \(inim["nome"]!)!\n")

    while true {

        print("\n \(meu["nome"]!): \(meu["vidaAtual"]!)/\(meu["vidaMax"]!) ❤️")
        print("\(inim["nome"]!): \(inim["vidaAtual"]!)/\(inim["vidaMax"]!) 💀\n")

        let ataques = meu["ataques"] as! [[String: Any]]
        print("Escolha seu ataque:")

        for (i, a) in ataques.enumerated() {
            print("\(i+1) - \(a["nome"]!) (Poder \(a["poder"]!))")
        }
        print("0 - Fugir")

        do {
            let escolha = try lerNumero()

            if escolha == 0 {
                print("\nVocê fugiu da batalha!")
                return meu
            }

            if escolha < 1 || escolha > ataques.count {
                print("Escolha inválida!")
                continue
            }

            let ataqueEscolhido = ataques[escolha - 1]
            print("\nVocê usou \(ataqueEscolhido["nome"]!)!")
            inim = calculoDano(ataque: ataqueEscolhido, atacante: meu, defensor: inim)

            if (inim["vidaAtual"] as! Int) <= 0 {
                print("\n💥 O \(inim["nome"]!) foi derrotado!\n")
                meu = subirNivel(meu)
                return meu
            }

            let ataquesInimigo = inim["ataques"] as! [[String: Any]]
            let ataqueInimigo = ataquesInimigo.randomElement()!
            print("O inimigo usou \(ataqueInimigo["nome"]!)!")
            meu = calculoDano(ataque: ataqueInimigo, atacante: inim, defensor: meu)

            if (meu["vidaAtual"] as! Int) <= 0 {
                print("\n❌ Seu poketito foi derrotado!")
                print("Levando você ao Centro Poketito para curar...")
                meu = curarPoketito(meu)
                return meu
            }

        } catch {
            print("Digite apenas números!")
        }
    }
}


func subirNivel(_ poke: [String: Any]) -> [String: Any] {
    var novo = poke
    var nivel = novo["nivel"] as! Int
    nivel += 1
    novo["nivel"] = nivel

    print("🔥 Seu \(novo["nome"]!) subiu para o nível \(nivel)!")

    if nivel == 5 {
        return evoluir(novo)
    }
    return novo
}



func evoluir(_ poke: [String: Any]) -> [String: Any] {
    let nome = poke["nome"] as! String

    print("\n✨ \(nome) está evoluindo... ✨")

    switch nome {
    case "Flamito":
        return flamitron
    case "Aguatito":
        return aguajato
    case "Plantito":
        return plantopus
    case "Gulosito":
        return gulosao
    case "Pikatito":
        return pikaton
    default:
        return poke
    }
}

func curarPoketito(_ poke: [String: Any]) -> [String: Any] {
    var novo = poke
    novo["vidaAtual"] = novo["vidaMax"]
    print("❤️ Seu \(novo["nome"]!) foi totalmente curado!\n")
    return novo
}

func capturarPoketito(inimigo: [String: Any]) {
    print("\n🎯 Você jogou uma Orbito em \(inimigo["nome"]!)...")

    let sorte = Int.random(in: 0...1)

    if sorte == 1 {
        print("🎉 Captura bem-sucedida! \(inimigo["nome"]!) agora é seu!")
        meusPoketitos.append(inimigo)
    } else {
        print("❌ O poketito escapou!")
    }
}

iniciarjogo()

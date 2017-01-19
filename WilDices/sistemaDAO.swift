//
//  sistemaDAO.swift
//  WilDices
//
//  Created by Student on 1/19/17.
//  Copyright © 2017 EaiMateus. All rights reserved.
//

import Foundation



class Personagem{
    
    let nomePersonagem :String
    let jogador :Jogador
    let raca :String
    let classe :String
    
    
    var forca :String
    var carisma :String
    var destreza :String
    var constituicao :String
    var inteligencia :String
    var sabedoria :String
    
    
    var pontosDeVida :String
    
    init(nome: String, jogador: Jogador, raca :String, classe: String, forca :String, carisma: String, destreza :String, constituicao :String, inteligencia :String, sabedoria :String, pontosDeVida: String) {
        
        self.nomePersonagem = nome
        self.jogador = jogador
        self.raca = raca
        self.classe = classe
        
        self.forca = forca
        self.carisma = carisma
        self.destreza = destreza
        self.constituicao = constituicao
        self.inteligencia = inteligencia
        self.sabedoria = sabedoria
        
        self.pontosDeVida = pontosDeVida
    }
    
    
}

class Jogador {
    
    let nomeJogador :String
    var mestre :Bool
    
    init(nomeJogador :String, mestre: Bool) {
        self.nomeJogador = nomeJogador
        self.mestre = mestre
    }
    
}

class Mesa{
    var personagens = [Personagem]()
    var nome : String?
    
    func inserirPersonagem( personagem :Personagem){
        if self.personagens.count == 0 {
            personagem.jogador.mestre = true
        }
        
        self.personagens.append(personagem)
    }
    
}

class  PersonagemDAO {
    
    static func getLista() -> [Personagem]{
        return [
            Personagem(nome: "Felipe", jogador: Jogador(nomeJogador: "Ynosdorn", mestre: true), raca: "Orc", classe: "Priest", forca: "20", carisma: "10", destreza: "10", constituicao: "15", inteligencia: "2", sabedoria: "9", pontosDeVida: "13"),
            Personagem(nome: "Leonardo", jogador: Jogador(nomeJogador: "Kodak", mestre: false), raca: "Anão", classe: "Guerreiro", forca: "7", carisma: "10", destreza: "10", constituicao: "15", inteligencia: "20", sabedoria: "9", pontosDeVida: "1"),
            Personagem(nome: "Helder", jogador: Jogador(nomeJogador: "ISple", mestre: false), raca: "Elfo", classe: "Druida", forca: "10", carisma: "10", destreza: "8", constituicao: "11", inteligencia: "2", sabedoria: "10", pontosDeVida: "15"),
            Personagem(nome: "Matheus", jogador: Jogador(nomeJogador: "Michael", mestre: false), raca: "Humano", classe: "Ladino", forca: "15", carisma: "10", destreza: "10", constituicao: "15", inteligencia: "2", sabedoria: "23", pontosDeVida: "10")
        ]
    }
}

//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        //story inicial
        Story(
            title: "Preparado para viver uma nova história? Você está andando por uma rua deserta e avista um homem encapuzado do outro lado da rua",
            choice1: "Continuo andando", choice1Destination: 1,
            choice2: "Correr na direção oposta", choice2Destination: 2
        ),
        //story 1
        Story(
            title: "O homem se aproxima e pergunta se você tem fogo",
            choice1: "Oooh mas é claro", choice1Destination: 3,
            choice2: "Não fumo, papai", choice2Destination: 4
        ),
        //story 2 - Fim (story 0 - choice 2)
        Story(
            title: "Você tropeçou e caiu de cara no chão, animal. Malandro te assaltou, presa fácil, papai. - Fim",
            choice1: "Seu bunda mole", choice1Destination: 0,
            choice2: "Vira home, rapá", choice2Destination: 0
        ),
        //story 3 - Fim (story 1 - choice 1)
        Story(
            title: "Você acende o cigarro do malandro, ele vai embora e você segue sua caminhada - Fim",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        //story 4
        Story(
            title: "Malandro te olha dos pés a cabeça. Você fica bolado",
            choice1: "Empurar o malandro, ta tirando?", choice1Destination: 6,
            choice2: "Baixar a cabeça e sair de fininho", choice2Destination: 5
        ),
        //story 5 - Fim (story 4 - choice 2)
        Story(
            title: "Malandro percebeu que você é um otário, te deu um tapão na orelha e tomou teu celular, presa fácil - Fim",
            choice1: "Só me fodo nessa merda", choice1Destination: 0,
            choice2: "Correr para a mamãe chorando", choice2Destination: 0
        ),
        //story 6 - Fim (story 4 - choice 1)
        Story(
            title: "Malandro caiu no chão, você deu duas bicudas no otário e ainda tomou o celular dele - Fim",
            choice1: "Comédia, sou cria!", choice1Destination: 0,
            choice2: "Vapo, não tem jeito", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
        
    }
    
}


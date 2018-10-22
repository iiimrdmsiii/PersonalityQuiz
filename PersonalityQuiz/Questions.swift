//
//  File.swift
//  PersonalityQuiz
//
//  Created by Dallin Smuin on 10/15/18.
//  Copyright © 2018 Dallin Smuin. All rights reserved.
//

import Foundation

struct Question {
    
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    
    case single, multiple, ranged
}


struct Answer {
    
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    
    case cow = "🐃", monkey = "🐒", gorilla = "🦍", rabbit = "🐇"
    
    var defintion: String {
        switch self {
        case .cow:
            return "You love to walk everywhere. Also be really aggresive to people whoever is being mean to you."
        case .monkey:
            return "You are so nice on people and always touching things."
        case .gorilla:
            return "You are so strong that everyone will respect you."
        case .rabbit:
            return "Your really fast in sports and very kind to other people."
        }
    }
}

var questions: [Question] = [
    Question(text: "What type of food do you like?", type: .single, answers: [
            Answer(text: "Steak", type: .cow),
            Answer(text: "Carrots", type: .rabbit),
            Answer(text: "Banana", type: .gorilla),
            Answer(text: "All Type Of Food", type: .monkey)
        ]),
        
    Question(text: "Which activites do you enjoy?", type: .multiple, answers: [
            Answer(text: "Eating", type: .cow),
            Answer(text: "Running", type: .rabbit),
            Answer(text: "Lifting", type: .gorilla),
            Answer(text: "Chilling", type: .monkey)
            ]),
        
    Question(text: "How much do you enjoy car rides?", type: .ranged, answers: [
            Answer(text: "I hate it!", type: .cow),
            Answer(text: "I get a little nervous.", type: .rabbit),
            Answer(text: "I beraly notice them.", type: .gorilla),
            Answer(text: "I love it and want to do it again!", type: .monkey)
            ])
    
]

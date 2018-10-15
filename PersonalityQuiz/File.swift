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
    Question(text: "", type: <#T##ResponseType#>, answers: <#T##[Answer]#>)
]

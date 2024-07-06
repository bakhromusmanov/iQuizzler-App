//
//  Question.swift
//  iQuizzler
//
//  Created by Bakhrom Usmanov on 06/07/24.
//

import Foundation

struct Question{
    var questionText : String
    var correctAnswer : String
    
    init(q: String, a: String) {
        questionText = q
        correctAnswer = a
    }
}

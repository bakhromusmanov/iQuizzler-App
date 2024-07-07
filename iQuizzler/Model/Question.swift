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
    var answersList : [String] = []
    
    init(question: String, answers: [String],correctAnswer: String) {
        questionText = question
        answersList = answers
        self.correctAnswer = correctAnswer
    }
}

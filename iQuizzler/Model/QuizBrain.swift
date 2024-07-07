//
//  QuizBrain.swift
//  iQuizzler
//
//  Created by Bakhrom Usmanov on 07/07/24.
//

import Foundation

struct QuizBrain {
    var quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        ]
    
    func CheckAnswer(_ userAnswer: String, _ questionNumber: Int) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            return true
        } else {
            return false
        }
    }
    
    func GetQuestion(_ questionNumber: Int) -> String {
        return quiz[questionNumber].questionText
    }
    
    func GetProgress(_ questionNumber: Int) -> Float {
        return Float(questionNumber+1) / Float(quiz.count)
    }
    
    func LoadNextQuestion(_ questionNumber: Int) -> Bool {
        return questionNumber + 1 < quiz.count
    }

}
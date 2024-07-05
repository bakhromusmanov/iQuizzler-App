//
//  ViewController.swift
//  iQuizzler
//
//  Created by Bakhrom Usmanov on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var userAnswer : String?
    var actualAnswer : String?
    var questionNumber = 0
    var quiz = [
        ["4+2 = 6", "True"],
        ["5+1 = 3", "False"],
        ["3+6 = 9", "True"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNextQuestion()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        actualAnswer = quiz[questionNumber][1]
        userAnswer = sender.currentTitle
        
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print ("Incorrect!")
        }
        
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            loadNextQuestion()
        } else {
            questionNumber = 0
            loadNextQuestion()
        }
    }
    
    func loadNextQuestion(){
        questionLabel.text = quiz[questionNumber][0]
    }
}


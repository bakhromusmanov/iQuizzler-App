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
    var quizBrain = QuizBrain ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNextQuestion()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        
        
        var userGotItRight = quizBrain.CheckAnswer(sender.currentTitle!, questionNumber)
        
        if userGotItRight {
            questionLabel.text = "Correct!"
            sender.tintColor = UIColor.green
        } else {
            questionLabel.text = "Incorrect!"
            sender.tintColor = UIColor.red
        }
        
        
        if quizBrain.LoadNextQuestion(questionNumber) {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.loadNextQuestion()
        }
    }
    
    func loadNextQuestion(){
        questionLabel.text = quizBrain.GetQuestion(questionNumber)
        progressBar.progress = quizBrain.GetProgress(questionNumber)
        
        trueButton.tintColor = nil
        falseButton.tintColor = nil
    }
}


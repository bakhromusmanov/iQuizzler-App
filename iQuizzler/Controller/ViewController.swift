//
//  ViewController.swift
//  iQuizzler
//
//  Created by Bakhrom Usmanov on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answer1Button: UIButton!
    
    @IBOutlet weak var answer2Button: UIButton!
    
    @IBOutlet weak var answer3Button: UIButton!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNextQuestion()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userGotItRight = quizBrain.checkAnswer(sender.currentTitle!)
        
        if userGotItRight {
            questionLabel.text = "Correct!"
            sender.tintColor = UIColor.green
        } else {
            questionLabel.text = "Incorrect!"
            sender.tintColor = UIColor.red
        }
        
        quizBrain.checkQuizProgress()

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.loadNextQuestion()
        }
    }
    
    func loadNextQuestion(){
        questionLabel.text = quizBrain.getQuestion()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        resetTintColor()
        loadNextAnswers()
    }
    
    func resetTintColor (){
        answer1Button.tintColor = nil
        answer2Button.tintColor = nil
        answer3Button.tintColor = nil
    }
    
    func loadNextAnswers(){
        answer1Button.setTitle(quizBrain.getAnswers(i: 0), for: .normal)
        answer2Button.setTitle(quizBrain.getAnswers(i: 1), for: .normal)
        answer3Button.setTitle(quizBrain.getAnswers(i: 2), for: .normal)
    }
}



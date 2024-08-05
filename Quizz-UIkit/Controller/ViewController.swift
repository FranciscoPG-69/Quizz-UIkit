//
//  ViewController.swift
//  Quizz-UIkit
//
//  Created by Francisco PG on 25/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!//ayuda a saber que boton se esta presionando
        //print(userAnswer)
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI(){
        
       questionLabel.text = quizBrain.getQuestionText()
       
       let answerChoices = quizBrain.getAnswerText()
       optionOneButton.setTitle(answerChoices[0], for: .normal)
       optionTwoButton.setTitle(answerChoices[1], for: .normal)
       optionThreeButton.setTitle(answerChoices[2], for: .normal)
       
       optionOneButton.backgroundColor = UIColor.clear
       optionTwoButton.backgroundColor = UIColor.clear
       optionThreeButton.backgroundColor = UIColor.clear
       
       progressBar.progress = quizBrain.getProgress()
       
    }
}


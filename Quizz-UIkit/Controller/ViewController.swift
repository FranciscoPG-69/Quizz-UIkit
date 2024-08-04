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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!//ayuda a saber que boton se esta presionando
        //print(userAnswer)
    }
    
    func updateUI(){
        
    }
}


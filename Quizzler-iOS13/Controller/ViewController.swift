//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
   
    @IBOutlet weak var choice1Label: UIButton!
    
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var choice2Label: UIButton!
    @IBOutlet weak var choice3Label: UIButton!
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
      
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
      
        var userAnswer = sender.currentTitle!
        var userGotItRight = quizBrain.checkAnswer(userAnswer)
        //let actualQuestion = quiz[soru].answer
        //var actualAnswer = actualQuestion.answer
        
        if userGotItRight {
            sender.backgroundColor = .systemGreen  //bu şekilde işaretlenen şık doğruysa yeşil yanar
            //trueButton.backgroundColor = .systemGreen //bu şekil doğru olan şık hep yeşil yanar
        }else {
            sender.backgroundColor = .systemRed
        }
       
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        //updateUI()
       
        

        
       
    }
    @objc func updateUI(){
        //let acQuestion = quiz[soru].text
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        let answerChoice = quizBrain.getAnswer()
        questionImageView.image = quizBrain.getImages()
        choice1Label.setTitle(answerChoice[0], for: .normal)
        choice2Label.setTitle(answerChoice[1], for: .normal)
        choice3Label.setTitle(answerChoice[2], for: .normal)
        scoreLabel.text = " Score: \(quizBrain.getScore())"
        choice1Label.backgroundColor = .clear
        choice2Label.backgroundColor = .clear
        choice3Label.backgroundColor = .clear
        //var progressBarCounter = Float(soru+1) / Float(quiz.count)//+1 ekleme amacı barın en sona dayanmasını sağlamak, başlangıçta sıfırdan değil 1 den başlar bu sayede
        
        
    }
    
    
}

